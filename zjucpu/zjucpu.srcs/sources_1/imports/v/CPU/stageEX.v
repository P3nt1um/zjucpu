`timescale 1ns / 1ps
/**
 * EX stage logic: arithmetic & logic operation and memory reference data alignment.
 * 
 * @author Yunye Pu
 */
module StageEX(
	input clk, input rst, input stallIn, input flush,
	//EX stage signals input:
	input [31:0] instIn,
	input [31:0] opA, input [31:0] opB, 
	input [31:0] rsFwd, input [31:0] rtFwd,//Same input as in ID stage
	input [12:0] exCtrl, input [7:0] memCtrlIn,
	input [4:0] wbRegIn, input [2:0] wbCond, input [2:0] wbSrcIn,
	input [2:0] branchCond, input [1:0] cacheOp,
	
	input userMode,
	
	//Bypass signals, output to MEM stage
	output reg [2:0] wbSrcOut, output reg [31:0] instOut,
	//Output signals to MEM stage
	output reg [4:0] wbRegOut, output [31:0] ALUout, output [2:0] memCtrlOut,
	output [31:0] regHi, output [31:0] regLo,
	//Output signals to memory
	output [31:0] memAddrOut, output reg [31:0] memDataOut,
	output memReq, output reg [3:0] memWrite, output memW_1b,
	output reg iCacheOp, output reg dCacheOp,
	//Other outputs
	output ov, output reg trap, output adEL, output adES,
	output stallOut, output reg branchTaken, output branchCond_out,
	output ALUValid,
	
	input [31:0] PCIn, output reg [31:0] PCOut,
	input bdIn, output reg bdOut,
	input instValidIn, output reg instValidOut
);
	//EX stage pipeline registers
	reg [12:0] exCtrl_reg;
	reg [7:0] memCtrl_reg;
	reg [4:0] wbRegIn_reg;
	reg [2:0] wbCond_reg;
	reg [2:0] branchCond_reg;
	reg [31:0] opA_reg = 0, opB_reg = 0, rs_reg = 0, rt_reg = 0;
	
	always @ (posedge clk)
	begin
		if(rst | flush)
		begin
			instOut <= 32'h0;
			wbSrcOut <= 3'h0;
			exCtrl_reg <= 13'b1100_0000_0_0_000;
			memCtrl_reg <= 8'b1111_0000;
			wbRegIn_reg <= 5'h0;
			wbCond_reg <= 3'h0;
			branchCond_reg <= 3'b111;
			iCacheOp <= 1'b0;
			dCacheOp <= 1'b0;
			instValidOut <= 1'b0;
		end
		else if(~stallIn)
		begin
			instOut <= instIn;
			wbSrcOut <= wbSrcIn;
			exCtrl_reg <= exCtrl;
			memCtrl_reg <= memCtrlIn;
			wbRegIn_reg <= wbRegIn;
			branchCond_reg <= branchCond;
			iCacheOp <= cacheOp[0];
			dCacheOp <= cacheOp[1];
			instValidOut <= instValidIn;
		end
		if(~stallIn)
		begin
			opA_reg <= opA;
			opB_reg <= opB;
			rs_reg <= rsFwd;
			rt_reg <= rtFwd;
			PCOut <= PCIn;
			bdOut <= bdIn;
		end
	end
	
	//Trap, conditional write, and branch logic
	wire AeqB, AltB, AltuB;
	wire rsgtz, rsltz, rseqrt, rtnz;
	wire [31:0] rsDecr = rs_reg - 1'b1;
	assign rsgtz = ~rsDecr[31];
	assign rsltz = rs_reg[31];
	assign rseqrt = (rs_reg == rt_reg);
	assign rtnz = |rt_reg;
	always @*
	begin
		case({rsltz, rtnz, wbCond_reg})
		5'b01100, 5'b11100,//movz
		5'b00101, 5'b10101,//movn
		5'b00110, 5'b01110,//bltzal
		5'b10111, 5'b11111://bgezal
			wbRegOut <= 5'h00;
		default:
			wbRegOut <= wbRegIn_reg;
		endcase
		case(branchCond_reg[2:1])
		2'b00: branchTaken <= (branchCond_reg[0] == rseqrt);//beq,bne
		2'b01: branchTaken <= (branchCond_reg[0] == rsgtz);//bgtz,blez
		2'b10: branchTaken <= (branchCond_reg[0] == rsltz);//bltz,bgez
		2'b11: branchTaken <= branchCond_reg[0];//Normal instructions and jump; Next PC is determined at ID stage.
		endcase
		case(exCtrl_reg[2:1])
		2'b00: trap <= 1'b0;
		2'b01: trap <= exCtrl_reg[0] ^ AeqB;
		2'b10: trap <= exCtrl_reg[0] ^ AltB;
		2'b11: trap <= exCtrl_reg[0] ^ AltuB;
		endcase
	end
	
	wire mulBusy;
	ALU U0(.A(opA_reg), .B(opB_reg), .op(exCtrl_reg[12:9]),
		.res(ALUout), .overflow(ov), .addRes(memAddrOut),
		.eq(AeqB), .lt(AltB), .ltu(AltuB));
	MulDiv U1(.clk(clk), .rst(rst), .A(rs_reg), .B(rt_reg),
		.op(exCtrl_reg[8:5]), .hi(regHi), .lo(regLo), .busy(mulBusy));
	assign stallOut = mulBusy & exCtrl_reg[3];
	assign ALUValid = exCtrl_reg[4];
	
	//Memory write logic
	assign adEL = (|(memCtrl_reg[1:0] & memAddrOut[1:0]) & memCtrl_reg[3]) | (userMode & memAddrOut[31]);
	assign adES = (|(memCtrl_reg[1:0] & memAddrOut[1:0]) & memCtrl_reg[2]) | (userMode & memAddrOut[31]);
	assign memReq = (memCtrl_reg[3] | memCtrl_reg[2]);
	assign memW_1b = memCtrl_reg[2];
	reg [3:0] sbWE, swlWE, swrWE, shWE;
	always @*
	begin
		case({memCtrl_reg[6:4], memAddrOut[1:0]})
		5'b000_01, 5'b010_00, 5'b110_01: memDataOut <= {rt_reg[23:0], rt_reg[31:24]};
		5'b000_10, 5'b001_10, 5'b001_11,
		5'b010_01, 5'b110_10: memDataOut <= {rt_reg[15:0], rt_reg[31:16]};
		5'b000_11, 5'b010_10, 5'b110_11: memDataOut <= {rt_reg[7:0], rt_reg[31:8]};
		default: memDataOut <= rt_reg;
		endcase
		case(memAddrOut[1:0])
		2'b00: begin sbWE <= 4'b0001; shWE <= 4'b0011; swlWE <= 4'b0001; swrWE <= 4'b1111; end
		2'b01: begin sbWE <= 4'b0010; shWE <= 4'b0011; swlWE <= 4'b0011; swrWE <= 4'b1110; end
		2'b10: begin sbWE <= 4'b0100; shWE <= 4'b1100; swlWE <= 4'b0111; swrWE <= 4'b1100; end
		2'b11: begin sbWE <= 4'b1000; shWE <= 4'b1100; swlWE <= 4'b1111; swrWE <= 4'b1000; end
		endcase
		case(memCtrl_reg[7:4])
		4'b1000: memWrite <= sbWE;
		4'b1001: memWrite <= shWE;
		4'b1010: memWrite <= swlWE;
		4'b1011: memWrite <= 4'b1111;
		4'b1110: memWrite <= swrWE;
		default: memWrite <= 4'b0000;
		endcase
	end
	
	assign memCtrlOut = memCtrl_reg[7]? 3'b000: memCtrl_reg[6:4];
	assign branchCond_out = (branchCond_reg[2:1] != 2'b11);
	
endmodule
