`timescale 1ns / 1ps
/**
 * Coprocessor 0, contains a set of control registers, interrupt generating logic,
 * and some other logic.
 * Directly interfaces to exception control module and TLB.
 * 
 * @author Yunye Pu
 */
module Cp0(
	input clk, input rst,
	input EX_flush,

	//Interface to CPU
	//These signals should be input at ID stage
	input [2:0] op, input [4:0] rdField, input [2:0] selField, input [31:0] dataIn,
	input [1:0] copNum,
	//ERET signal output at EX stage
	output reg eret,
	//This signal will be output at MEM stage
	output reg [31:0] dataOut,
	//Interrupt requests
	input [4:0] interruptReq,
	//Interface to TLB
	input [31:0] regEntryLo0In, output [31:0] regEntryLo0Out,
	input [31:0] regEntryLo1In, output [31:0] regEntryLo1Out,
	input [31:0] regEntryHiIn, output [31:0] regEntryHiOut,
	input [31:0] regPageMaskIn, output [31:0] regPageMaskOut,
	input [31:0] regIndexIn, output [31:0] regIndexOut,
	output [4:0] regWiredOut, input [4:0] regRandomIn,
	output regWiredWrite, output [1:0] TLBop,
	
	//Interface to exception control unit
	output [31:0] regEPCOut, output [31:0] regErrorEPCOut,
	output statusEXL, output statusERL, output statusBEV, output causeIV,
	output userMode, output interrupt, output [3:0] copAccess,
	input [31:0] regEPCIn, input bdIn, input [4:0] excCodeIn,
	input excAccept, input [31:0] badVAddrIn, input writeBadVAddr
);
	//CP0 registers
	wire [31:0] regIndex, regIndexWe, regIndexDin;//0; done
	wire [31:0] regRandom, regRandomWe, regRandomDin;//1; done
	wire [31:0] regEntryLo0, regEntryLo0We, regEntryLo0Din;//2; done
	wire [31:0] regEntryLo1, regEntryLo1We, regEntryLo1Din;//3; done
	wire [31:0] regContext, regContextWe, regContextDin;//4
	wire [31:0] regPageMask, regPageMaskWe, regPageMaskDin;//5; done
	wire [31:0] regWired;//6
	wire [31:0] regBadVAddr, regBadVAddrWe, regBadVAddrDin;//8
	wire [31:0] regCount;//9
	wire [31:0] regEntryHi, regEntryHiWe, regEntryHiDin;//10; done
	wire [31:0] regCompare;//11
	wire [31:0] regStatus, regStatusWe, regStatusDin;//12
	wire [31:0] regCause, regCauseWe, regCauseDin;//13
	wire [31:0] regEPC, regEPCWe, regEPCDin;//14
	wire [31:0] regPRId;//15, read-only
	wire [31:0] regConfig;//16,0
	wire [31:0] regConfig1;//16,1
	wire [31:0] regErrorEPC;//30; hardware write ignored since NMI, cache error, and soft reset not implemented.
	
	//This register is implementation-specific; a free-running counter
	//which is read-only in software and is not affected by any events except reset.
	reg [63:0] regSysTimer;
	wire [63:0] regSysTimerNext = regSysTimer + 1'b1;
	always @ (posedge clk)
	begin
		if(rst)
			regSysTimer <= 64'h0;
		else
			regSysTimer <= regSysTimerNext;
	end
	
	reg [31:0] dataIn_reg;
	reg [4:0] rdField_reg;
	reg [2:0] selField_reg;
	//CP0OP decode result
	wire [31:0] cp0RegWe;
	reg [31:0] cp0RegWe_reg;
	reg [1:0] tlbOp;
	reg tlbp, tlbr;
	
	reg excAccept_reg;
	reg [1:0] statusEXL_reg;//used to control EPC load
	
`define BEV 22
`define IM 15:8
`define UM 4
`define ERL 2
`define EXL 1
`define IE 0
`define BD 31
`define CE 29:28
`define IV 23
`define IP 15:8
`define ExcCode 6:2
	Cp0Reg #(.SOFTWARE_MASK(32'h0000001f), .RESET_STATE(0)) RegIndex(.clk(clk), .rst(rst),
		.sDin(dataIn_reg), .sWe(cp0RegWe[0]), .hDin(regIndexDin), .hWe(regIndexWe), .dout(regIndex));
	
	assign regRandom = regRandomDin;
	
	Cp0Reg #(.SOFTWARE_MASK(32'h03ffffff), .RESET_STATE(0)) RegEntryLo0(.clk(clk), .rst(rst),
		.sDin(dataIn_reg), .sWe(cp0RegWe[2]), .hDin(regEntryLo0Din), .hWe(regEntryLo0We), .dout(regEntryLo0));

	Cp0Reg #(.SOFTWARE_MASK(32'h03ffffff), .RESET_STATE(0)) RegEntryLo1(.clk(clk), .rst(rst),
		.sDin(dataIn_reg), .sWe(cp0RegWe[3]), .hDin(regEntryLo1Din), .hWe(regEntryLo1We), .dout(regEntryLo1));

	Cp0Reg #(.SOFTWARE_MASK(32'hff800000), .RESET_STATE(0)) RegContext(.clk(clk), .rst(rst),
		.sDin(dataIn_reg), .sWe(cp0RegWe[4]), .hDin(regContextDin), .hWe(regContextWe), .dout(regContext));

	Cp0Reg #(.SOFTWARE_MASK(32'h1fffe000), .RESET_STATE(0)) RegPageMask(.clk(clk), .rst(rst),
		.sDin(dataIn_reg), .sWe(cp0RegWe[5]), .hDin(regPageMaskDin), .hWe(regPageMaskWe), .dout(regPageMask));

	Cp0Reg #(.SOFTWARE_MASK(32'h0000001f), .RESET_STATE(0)) RegWired(.clk(clk), .rst(rst),
		.sDin(dataIn_reg), .sWe(cp0RegWe[6]), .hDin(32'h0), .hWe(32'h0), .dout(regWired));

	Cp0Reg #(.SOFTWARE_MASK(0), .RESET_STATE(0)) RegBadVAddr(.clk(clk), .rst(rst),
		.sDin(dataIn_reg), .sWe(cp0RegWe[8]), .hDin(regBadVAddrDin), .hWe(regBadVAddrWe), .dout(regBadVAddr));

	Cp0Reg #(.SOFTWARE_MASK(32'hffffffff), .RESET_STATE(0)) RegCount(.clk(clk), .rst(rst),//Constant increment
		.sDin(dataIn_reg), .sWe(cp0RegWe[9]), .hDin(regCount + 1'b1), .hWe(32'hffffffff), .dout(regCount));

	Cp0Reg #(.SOFTWARE_MASK(32'hffffe0ff), .RESET_STATE(0)) RegEntryHi(.clk(clk), .rst(rst),
		.sDin(dataIn_reg), .sWe(cp0RegWe[10]), .hDin(regEntryHiDin), .hWe(regEntryHiWe), .dout(regEntryHi));

	Cp0Reg #(.SOFTWARE_MASK(32'hffffffff), .RESET_STATE(0)) RegCompare(.clk(clk), .rst(rst),
		.sDin(dataIn_reg), .sWe(cp0RegWe[11]), .hDin(32'h0), .hWe(32'h0), .dout(regCompare));

	Cp0Reg #(.SOFTWARE_MASK(32'h1040ff17), .RESET_STATE(32'h10400004)) RegStatus(.clk(clk), .rst(rst),
		.sDin(dataIn_reg), .sWe(cp0RegWe[12]), .hDin(regStatusDin), .hWe(regStatusWe), .dout(regStatus));

	Cp0Reg #(.SOFTWARE_MASK(32'h00800300), .RESET_STATE(0)) RegCause(.clk(clk), .rst(rst),
		.sDin(dataIn_reg), .sWe(cp0RegWe[13]), .hDin(regCauseDin), .hWe(regCauseWe), .dout(regCause));

	Cp0Reg #(.SOFTWARE_MASK(32'hffffffff), .RESET_STATE(0)) RegEPC(.clk(clk), .rst(rst),
		.sDin(dataIn_reg), .sWe(cp0RegWe[14]), .hDin(regEPCDin), .hWe(regEPCWe), .dout(regEPC));

	Cp0Reg #(.SOFTWARE_MASK(32'h0), .RESET_STATE(32'h00_01_00_00)) RegPRId(.clk(clk), .rst(rst),
		.sDin(dataIn_reg), .sWe(cp0RegWe[15]), .hDin(0), .hWe(0), .dout(regPRId));

	Cp0Reg #(.SOFTWARE_MASK(32'h0), .RESET_STATE(32'h80000083)) RegConfig(.clk(clk), .rst(rst),
		.sDin(dataIn_reg), .sWe(1'b0), .hDin(0), .hWe(0), .dout(regConfig));

	Cp0Reg #(.SOFTWARE_MASK(32'h0), .RESET_STATE(32'h3ee97480)) RegConfig1(.clk(clk), .rst(rst),
		.sDin(dataIn_reg), .sWe(1'b0), .hDin(0), .hWe(0), .dout(regConfig1));

	Cp0Reg #(.SOFTWARE_MASK(32'hffffffff), .RESET_STATE(0)) RegErrorEPC(.clk(clk), .rst(rst),
		.sDin(dataIn_reg), .sWe(cp0RegWe[30]), .hDin(32'h0), .hWe(32'h0), .dout(regErrorEPC));

	assign cp0RegWe = cp0RegWe_reg;

	//Config1 notes:
	//Cache: 2-way, 64-byte, 512-set = 64KiB; TLB=32

	assign regIndexDin = regIndexIn;
	assign regIndexWe = {tlbp, 26'h0, {5{tlbp}}};
	assign regRandomDin = {27'h0, regRandomIn};
	assign regRandomWe = {27'h0, 5'b11111};
	assign regEntryLo0Din = regEntryLo0In;
	assign regEntryLo0We = {6'h0, {26{tlbr}}};
	assign regEntryLo1Din = regEntryLo1In;
	assign regEntryLo1We = {6'h0, {26{tlbr}}};	
	assign regPageMaskDin = regPageMaskIn;
	assign regPageMaskWe = {3'h0, {16{tlbr}}, 13'h0};
	assign regEntryHiDin = writeBadVAddr? badVAddrIn: regEntryHiIn;
	assign regEntryHiWe = {{19{tlbr | writeBadVAddr}}, 5'h0, {8{tlbr}}};
	
	assign regContextDin = {9'h0, badVAddrIn[31:13], 4'h0};
	assign regContextWe = {9'h0, {19{writeBadVAddr}}, 4'h0};
	assign regBadVAddrDin = badVAddrIn;
	assign regBadVAddrWe = {32{writeBadVAddr}};
	assign regEPCDin = regEPCIn;
	assign regEPCWe = {32{excAccept_reg & ~statusEXL_reg[1]}};
	
	
	//Interrupt generate logic
	//IP[7:2] sets on interrupt request, clears on eret.
	//IP[1:0] clears on eret.
	reg [5:0] interruptCapture;
	wire timerInt = (regCount == regCompare);
	wire [7:0] interruptMasked = {timerInt, interruptReq, regCause[9:8]} & regStatus[15:8];
	
	always @ (posedge clk)
	begin
		if((interrupt & excAccept) | rst)
			interruptCapture <= 6'b0;
		else
		begin
			if(interruptMasked[7]) interruptCapture[5] <= 1'b1;
			if(interruptMasked[6]) interruptCapture[4] <= 1'b1;
			if(interruptMasked[5]) interruptCapture[3] <= 1'b1;
			if(interruptMasked[4]) interruptCapture[2] <= 1'b1;
			if(interruptMasked[3]) interruptCapture[1] <= 1'b1;
			if(interruptMasked[2]) interruptCapture[0] <= 1'b1;
		end
	end
	
	assign regCauseWe[15:10] = {6{eret | (interrupt & excAccept)}};
	assign regCauseWe[9:8] = {2{eret}};
	assign regCauseDin[15:10] = eret? 6'h0: interruptCapture;
	assign regCauseDin[9:8] = 2'b0;
	assign interrupt = |{interruptCapture, interruptMasked[1:0]} & (regStatus[2:0] == 3'b001);
	
	assign userMode = regStatus[`UM] & ~regStatus[`EXL] & ~regStatus[`ERL];
	assign statusEXL = regStatus[`EXL];
	assign statusERL = regStatus[`ERL];
	assign statusBEV = regStatus[`BEV];
	assign causeIV = regCause[`IV];

	assign regEPCOut = regEPC;
	assign regErrorEPCOut = regErrorEPC;
	assign regEntryHiOut = regEntryHi;
	assign regEntryLo0Out = regEntryLo0;
	assign regEntryLo1Out = regEntryLo1;
	assign regPageMaskOut = regPageMask;
	assign regIndexOut = regIndex;
	assign regWiredOut = regWired[4:0];
	
	assign regCauseWe[`BD] = excAccept_reg & ~statusEXL_reg[1];
	assign regCauseDin[`BD] = bdIn;
	assign regStatusWe[`EXL] = (eret & ~regStatus[`ERL]) | excAccept;
	assign regStatusDin[`EXL] = excAccept;
	assign regStatusWe[`ERL] = eret;
	assign regStatusDin[`ERL] = 1'b0;
	
	assign regCauseWe[`ExcCode] = {6{excAccept_reg}};
	assign regCauseDin[`ExcCode] = excCodeIn;
	assign regCauseWe[`CE] = {2{excAccept}};
	assign regCauseDin[`CE] = copNum;

	assign regCauseWe[30] = 0;
	assign regCauseWe[27:16] = 0;
	assign regCauseWe[7] = 0;
	assign regCauseWe[1:0] = 0;
	assign regCauseDin[30] = 0;
	assign regCauseDin[27:16] = 0;
	assign regCauseDin[7] = 0;
	assign regCauseDin[1:0] = 0;
	assign regStatusWe[31:3] = 0;
	assign regStatusWe[0] = 0;
	assign regStatusDin[31:3] = 0;
	assign regStatusDin[0] = 0;
	
	always @ (posedge clk)
	begin
		if(rst)
		begin
			dataIn_reg <= 32'h0;
			excAccept_reg <= 1'b0;
			dataOut <= 32'h0;
			statusEXL_reg <= 2'b00;
		end
		else
		begin
			rdField_reg <= rdField;
			selField_reg <= selField;
			dataIn_reg <= dataIn;
			excAccept_reg <= excAccept;
			case({rdField_reg, selField_reg})
			8'b00000_000: dataOut <= regIndex;
			8'b00001_000: dataOut <= regRandom;
			8'b00010_000: dataOut <= regEntryLo0;
			8'b00011_000: dataOut <= regEntryLo1;
			8'b00100_000: dataOut <= regContext;
			8'b00101_000: dataOut <= regPageMask;
			8'b00110_000: dataOut <= regWired;
			// 00111    :reserved
			8'b01000_000: dataOut <= regBadVAddr;
			8'b01001_000: dataOut <= regCount;
			8'b01001_110: dataOut <= regSysTimerNext[31:0];
			8'b01001_111: dataOut <= regSysTimer[63:32];
			8'b01010_000: dataOut <= regEntryHi;
			8'b01011_000: dataOut <= regCompare;
			8'b01100_000: dataOut <= regStatus;
			8'b01101_000: dataOut <= regCause;
			8'b01110_000: dataOut <= regEPC;
			8'b01111_000: dataOut <= regPRId;
			8'b10000_000: dataOut <= regConfig;
			8'b10000_001: dataOut <= regConfig1;
			8'b11110_000: dataOut <= regErrorEPC;
			default: dataOut <= 32'h0;
			endcase
			statusEXL_reg[0] <= regStatus[`EXL];
			statusEXL_reg[1] <= statusEXL_reg[0] & regStatus[`EXL];
		end
		
		if(rst | EX_flush)
		begin
			cp0RegWe_reg <= 32'h0;
			tlbOp <= 2'b00;
			tlbp <= 1'b0;
			tlbr <= 1'b0;
			eret <= 1'b0;
		end
		else
		begin
			cp0RegWe_reg[0] <= (op == 3'b010) & (rdField == 5'h00);
			cp0RegWe_reg[1] <= (op == 3'b010) & (rdField == 5'h01);
			cp0RegWe_reg[2] <= (op == 3'b010) & (rdField == 5'h02);
			cp0RegWe_reg[3] <= (op == 3'b010) & (rdField == 5'h03);
			cp0RegWe_reg[4] <= (op == 3'b010) & (rdField == 5'h04);
			cp0RegWe_reg[5] <= (op == 3'b010) & (rdField == 5'h05);
			cp0RegWe_reg[6] <= (op == 3'b010) & (rdField == 5'h06);
			cp0RegWe_reg[7] <= (op == 3'b010) & (rdField == 5'h07);
			cp0RegWe_reg[8] <= (op == 3'b010) & (rdField == 5'h08);
			cp0RegWe_reg[9] <= (op == 3'b010) & (rdField == 5'h09);
			cp0RegWe_reg[10]<= (op == 3'b010) & (rdField == 5'h0a);
			cp0RegWe_reg[11]<= (op == 3'b010) & (rdField == 5'h0b);
			cp0RegWe_reg[12]<= (op == 3'b010) & (rdField == 5'h0c);
			cp0RegWe_reg[13]<= (op == 3'b010) & (rdField == 5'h0d);
			cp0RegWe_reg[14]<= (op == 3'b010) & (rdField == 5'h0e);
			cp0RegWe_reg[15]<= (op == 3'b010) & (rdField == 5'h0f);
			cp0RegWe_reg[16]<= (op == 3'b010) & (rdField == 5'h10);
			cp0RegWe_reg[17]<= (op == 3'b010) & (rdField == 5'h11);
			cp0RegWe_reg[18]<= (op == 3'b010) & (rdField == 5'h12);
			cp0RegWe_reg[19]<= (op == 3'b010) & (rdField == 5'h13);
			cp0RegWe_reg[20]<= (op == 3'b010) & (rdField == 5'h14);
			cp0RegWe_reg[21]<= (op == 3'b010) & (rdField == 5'h15);
			cp0RegWe_reg[22]<= (op == 3'b010) & (rdField == 5'h16);
			cp0RegWe_reg[23]<= (op == 3'b010) & (rdField == 5'h17);
			cp0RegWe_reg[24]<= (op == 3'b010) & (rdField == 5'h18);
			cp0RegWe_reg[25]<= (op == 3'b010) & (rdField == 5'h19);
			cp0RegWe_reg[26]<= (op == 3'b010) & (rdField == 5'h1a);
			cp0RegWe_reg[27]<= (op == 3'b010) & (rdField == 5'h1b);
			cp0RegWe_reg[28]<= (op == 3'b010) & (rdField == 5'h1c);
			cp0RegWe_reg[29]<= (op == 3'b010) & (rdField == 5'h1d);
			cp0RegWe_reg[30]<= (op == 3'b010) & (rdField == 5'h1e);
			cp0RegWe_reg[31]<= (op == 3'b010) & (rdField == 5'h1f);
			case(op)
			3'b011: tlbOp <= 2'b01;//TLBR
			3'b100: tlbOp <= 2'b10;//TLBWI
			3'b101: tlbOp <= 2'b11;//TLBWR
			default: tlbOp <= 2'b00;
			endcase
			tlbp <= (op == 3'b110);
			tlbr <= (op == 3'b011);
			eret <= (op == 3'b111);
		end
	end
	assign TLBop = tlbOp;
	assign regWiredWrite = cp0RegWe[6];
	assign copAccess[3:1] = regStatus[31:29];
	assign copAccess[0] = regStatus[28] | ~userMode;
	
endmodule
