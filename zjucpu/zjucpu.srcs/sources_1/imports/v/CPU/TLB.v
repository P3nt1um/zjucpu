`timescale 1ns / 1ps
/**
 * Translation look-aside buffer, designed to be mostly compliant with MIPS32 specifications.
 * 
 * Note: VIOLATION OF MIPS32 SPECIFICATION:
 * 1. Odd numbers of 1 bits in PageMask are also valid encoding(0x0001, 0x0007, etc),
 *    resulting in 17 possible page sizes(instead of 9).
 * 
 * Note: Implementation specific limitations
 * 1. Consecutive TLBWR or TLBWI instructions will put the contents in TLB into an
 *    unpredictable state. TLB write instructions should be separated by at least
 *    one instruction apart. TLBR or TLBP instructions do not have this restriction.
 * 
 * @author Yunye Pu
 */
`include "TLBDefines.vh"

module TLB(input clk, input rst, input statusERL,
	//Address translation interface: instruction
	input [31:0] vAddrI, output [31:0] pAddrI,
	output missI, output invalidI, output [2:0] cacheI,
	output IOAddrI,
	output [15:0] pageMaskI_out,//Used for translation prediction logic
	//Address translation interface: data
	input [31:0] vAddrD, input reqD, input writeD, output [31:0] pAddrD,
	output missD, output invalidD, output modifiedD, output [2:0] cacheD,
	output IOAddrD,
	//Duplicate match exception: not yet implemented, leave n/c.
	output dupMatch,
	//TLB to COP0 interface
	input [31:0] regEntryLo0In, output [31:0] regEntryLo0Out,
	input [31:0] regEntryLo1In, output [31:0] regEntryLo1Out,
	input [31:0] regEntryHiIn, output [31:0] regEntryHiOut,
	input [31:0] regPageMaskIn, output [31:0] regPageMaskOut,
	input [31:0] regIndexIn, output [31:0] regIndexOut,
	input [4:0] regWired, output [4:0] regRandom,
	input regWiredWrite, input [1:0] op//00=normal, 01=TLBR, 10=TLBWI, 11=TLBWR; TLBP and TLBR are always enabled
);

	wire [43:0] dataInHeader;
	wire [49:0] dataInEntry;
	wire [49:0] dataOutEntry;
	wire [4:0] indexInHeader;
	
	wire [31:0] matchI, matchD, probeMatch;

	wire [43:0] dataOutHeader;
	wire [5:0] entryIndexI, entryIndexD;
	wire [15:0] pageMaskI, pageMaskD;
	
//Interface to COP0
	assign dataInHeader[`PageMask] = regPageMaskIn[28:13];
	assign dataInHeader[`VPN2] = regEntryHiIn[31:13];
	assign dataInHeader[`G] = regEntryLo0In[0] & regEntryLo1In[0];
	assign dataInHeader[`ASID] = regEntryHiIn[7:0];
	assign dataInEntry[`PFN1] = regEntryLo1In[29:6];
	assign dataInEntry[`C1] = regEntryLo1In[5:3];
	assign dataInEntry[`D1] = regEntryLo1In[2];
	assign dataInEntry[`V1] = regEntryLo1In[1];
	assign dataInEntry[`PFN0] = regEntryLo0In[29:6];
	assign dataInEntry[`C0] = regEntryLo0In[5:3];
	assign dataInEntry[`D0] = regEntryLo0In[2];
	assign dataInEntry[`V0] = regEntryLo0In[1];
	
	assign regPageMaskOut = {3'h0, dataOutHeader[`PageMask], 13'h0};
	assign regEntryHiOut = {dataOutHeader[`VPN2], 5'h0, dataOutHeader[`ASID]};
	assign regEntryLo1Out = {6'h0, dataOutEntry[`PFN1], dataOutEntry[`C1], dataOutEntry[`D1], dataOutEntry[`V1], dataOutHeader[`G]};
	assign regEntryLo0Out = {6'h0, dataOutEntry[`PFN0], dataOutEntry[`C0], dataOutEntry[`D0], dataOutEntry[`V0], dataOutHeader[`G]};

	assign indexInHeader = (op == 2'b11)? regRandom: regIndexIn[4:0];
	
//Address translation logic
	wire [24:0] entryDataI;
	wire [24:0] entryDataD;
	wire [31:0] pAddrI_internal, pAddrD_internal;
	wire unmapI = (vAddrI[31:30] == 2'b10) | (statusERL & vAddrI[31:29] == 3'b0);
	wire unmapD = (vAddrD[31:30] == 2'b10) | (statusERL & vAddrD[31:29] == 3'b0);
	wire reqD_internal = reqD & ~unmapD;
	wire uncacheI = (vAddrI[31:29] == 3'b101) | (vAddrI[31:29] == 3'b000 & statusERL);
	wire uncacheD = (vAddrD[31:29] == 3'b101) | (vAddrD[31:29] == 3'b000 & statusERL);
	assign missI = (~|matchI) & ~unmapI;
	assign missD = (~|matchD) & reqD_internal;
	assign cacheI = uncacheI? 3'b010: entryDataI[`C0];
	assign cacheD = uncacheD? 3'b010: entryDataD[`C0];
	assign invalidI = ~entryDataI[`V0] & ~unmapI;
	assign invalidD = ~entryDataD[`V0] & reqD_internal;
	assign modifiedD = ~entryDataD[`D0] & reqD_internal & writeD;
	assign IOAddrI = (vAddrI[31:29] == 3'b101);
	assign IOAddrD = (vAddrD[31:29] == 3'b101);
	wire [19:0] PFNI = entryDataI[`PFN0];
	wire [19:0] PFND = entryDataD[`PFN0];
	assign pAddrI_internal[31:28] = PFNI[19:16];
	assign pAddrI_internal[11:0] = vAddrI[11:0];
	assign pAddrI_internal[27:12] = (PFNI[15:0] & ~pageMaskI) | (vAddrI[27:12] & pageMaskI);
	assign pAddrD_internal[31:28] = PFND[19:16];
	assign pAddrD_internal[11:0] = vAddrD[11:0];
	assign pAddrD_internal[27:12] = (PFND[15:0] & ~pageMaskD) | (vAddrD[27:12] & pageMaskD);
	assign pAddrI = unmapI? {3'b0, vAddrI[28:0]}: pAddrI_internal;
	assign pAddrD = unmapD? {3'b0, vAddrD[28:0]}: pAddrD_internal;
	
	TLBEntry entryPool (.clk(clk), .we(op[1]),
		.indexA(entryIndexI), .entryA(entryDataI), .pageMaskA(pageMaskI),
		.indexB(entryIndexD), .entryB(entryDataD), .pageMaskB(pageMaskD),
		.indexC(regIndexIn[4:0]), .entryC(dataOutEntry), .headerC(dataOutHeader),
		.indexD(indexInHeader), .entryD(dataInEntry), .headerD(dataInHeader));
	
	wire [31:0] headerWE = op[1]? (1 << indexInHeader): 32'h0;
	wire [31:0] oddI, oddD;
	TLBHeader headers[31:0] (.clk(clk), .we(headerWE),
		.vAddrI(vAddrI), .matchI(matchI), .oddI(oddI),
		.vAddrD(vAddrD), .matchD(matchD), .oddD(oddD),
		.ASID(dataInHeader[`ASID]), .VPN2(dataInHeader[`VPN2]), .probeMatch(probeMatch),
		.G(dataInHeader[`G]), .pageMask(dataInHeader[`PageMask]));
	
	assign regIndexOut[31] = ~|probeMatch;
	assign regIndexOut[30:5] = 0;
	Encoder32 regIndexEncoder(.I(probeMatch), .O(regIndexOut[4:0]));
	Encoder32 entryIndexIEncoder(.I(matchI), .O(entryIndexI[4:0]));
	Encoder32 entryIndexDEncoder(.I(matchD), .O(entryIndexD[4:0]));
	assign entryIndexI[5] = |oddI;
	assign entryIndexD[5] = |oddD;
	
	TLBRNG randomGen(.clk(clk), .rst(regWiredWrite), .next(op == 2'b11),
		.regWired(regWired), .regRandom(regRandom));
	
	assign dupMatch = 1'b0;//TODO
	
	assign pageMaskI_out = unmapI? 16'hffff: pageMaskI;
	
endmodule

module Encoder32(
	input [31:0] I, output [4:0] O
);
	assign O[4] = |I[31:16];
	assign O[3] = |{I[31:24], I[15:8]};
	assign O[2] = |{I[31:28], I[23:20], I[15:12], I[7:4]};
	assign O[1] = |{I[31:30], I[27:26], I[23:22], I[19:18], I[15:14], I[11:10], I[7:6], I[3:2]};
	assign O[0] = |{I[31], I[29], I[27], I[25], I[23], I[21], I[19], I[17],
					I[15], I[13], I[11], I[ 9], I[ 7], I[ 5], I[ 3], I[ 1]};

endmodule
