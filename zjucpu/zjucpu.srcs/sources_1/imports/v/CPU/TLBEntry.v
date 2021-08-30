`timescale 1ns / 1ps
/**
 * TLB entry pool, stores complete TLB entries(for read back).
 * Provides PFN and pagemask when used in address translation.
 * 
 * @author Yunye Pu
 */
`include "TLBDefines.vh"

module TLBEntry(input clk, input we,
	input [5:0] indexA, output [24:0] entryA, output [15:0] pageMaskA,//For instruction lookup
	input [5:0] indexB, output [24:0] entryB, output [15:0] pageMaskB,//For data lookup
	input [4:0] indexC, output [49:0] entryC, output [43:0] headerC,//For TLBR; indexC connected to Index register
	input [4:0] indexD, input  [49:0] entryD, input  [43:0] headerD//For TLBWI/TLBWR; indexD connected to Index or Random
);
	//Complete header and entry info
	reg [93:0] tlbPool[31:0];
	always @ (posedge clk) if(we) tlbPool[indexD] <= {entryD, headerD};
	assign {entryC, headerC} = tlbPool[indexC];
	
	//PageMask
	reg [15:0] pageMaskPool[31:0];
	always @ (posedge clk) if(we) pageMaskPool[indexD] <= headerD[`PageMask];
	assign pageMaskA = pageMaskPool[indexA[4:0]];
	assign pageMaskB = pageMaskPool[indexB[4:0]];

	//Entry info
	wire [5:0] entryWriteIndex;
	wire [24:0] entryWriteData;
	wire entryWe;
	reg [24:0] entryPool[63:0];
	always @ (posedge clk) if(entryWe) entryPool[entryWriteIndex] <= entryWriteData;
	assign entryA = entryPool[indexA];
	assign entryB = entryPool[indexB];
	
	reg we_reg;
	reg [4:0] indexD_reg;
	reg [24:0] dataIn_reg;
	always @ (posedge clk)
	begin
		we_reg <= we;
		indexD_reg <= indexD;
		dataIn_reg <= entryD[49:25];
	end
	
	assign entryWriteIndex = we_reg? {1'b1, indexD_reg}: {1'b0, indexD};
	assign entryWriteData = we_reg? dataIn_reg: entryD[24:0];
	assign entryWe = we | we_reg;
	
	integer i;
	initial begin
		for(i = 0; i < 32; i = i+1)
		begin
			tlbPool[i] = 0;
			pageMaskPool[i] = 0;
		end
		for(i = 0; i < 64; i = i+1)
			entryPool[i] = 0;
//		pageMaskPool[30] = 16'hffff;
//		pageMaskPool[31] = 16'hffff;
//		entryPool[60] = {20'h00000, 5'b01011};
//		entryPool[61] = {20'h10000, 5'b01011};
//		entryPool[62] = {20'h00000, 5'b01111};
//		entryPool[63] = {20'h10000, 5'b01111};
	end

endmodule
