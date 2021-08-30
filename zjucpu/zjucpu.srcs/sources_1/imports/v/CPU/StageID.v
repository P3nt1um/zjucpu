`timescale 1ns / 1ps
/**
 * ID stage logic: instruction decode.
 * 
 * @author Yunye Pu
 */
module StageID(
	input clk, input rst, input stall, input flush, input TP_flush,
	input [31:0] instIn, input [31:0] PC,
	input [31:0] rsFwd, input [31:0] rtFwd,
	
	output reg [31:0] nextPC, output [1:0] fwdEN,
	output reg [31:0] opA, output reg [31:0] opB, output [12:0] exCtrl,
	output [7:0] memCtrl,
	output reg [4:0] wbReg, output [2:0] wbCond, output [2:0] wbSrc,
	output [2:0] branchCond,
	
	output RIexception, output syscall, output breakpoint,
	output [2:0] cp0Op, output [1:0] cacheOp,
	
	input [3:0] copAccess, output cpU,

	output reg [31:0] instOut, output reg [31:0] PCOut, output reg bd, output bd_IF,
	output reg instValid
);

//exCtrl: ALUOp(4), mulOp(4), ALUValid(1), mulWait(1), trap(3)
//memCtrl: memOp(4), read(1), write(1), addrMask(2)
	wire [1:0] ALUSrcA, ALUSrcB, branch, wbDest;
	InstDecoder decoder(.inst(instOut),
		.forward(fwdEN), .ALUSrcA(ALUSrcA), .ALUSrcB(ALUSrcB),
		.branch(branch), .branchCond(branchCond), .ALUOp(exCtrl[12:9]),
		.mulOp(exCtrl[8:5]), .ALUValid(exCtrl[4]), .mulWait(exCtrl[3]), .trap(exCtrl[2:0]),
		.wbDest(wbDest), .wbSrc(wbSrc), .wbCond(wbCond),
		.RIexception(RIexception), .cp0Op(cp0Op), .memCtrl(memCtrl[7:4]),
		.syscall(syscall), .breakpoint(breakpoint));
	
	wire [31:0] imm_signExt = {{16{instOut[15]}}, instOut[15:0]};
	wire [31:0] PCincr = PC + 32'd4;
	
	always @ (posedge clk)
	begin
		if(rst | flush)
		begin
			instOut <= 32'h0;
			instValid <= 1'b0;
		end
		else if(~stall)
		begin
			instOut <= instIn;
			instValid <= 1'b1;
		end

		if(~stall)
		begin
			if(~(bd_IF | TP_flush))//If in delay slot OR translate predict miss then keep PC unchanged.
				PCOut <= PC;
			bd <= bd_IF;
		end
	end
	assign bd_IF = |branch;
	
	reg memW, memR;
	reg [1:0] addrMask;
	assign cpU = (instOut[31:28] == 3'b0100) & (
		(~copAccess[0] & (instOut[27:26] == 2'b00)) |
		(~copAccess[1] & (instOut[27:26] == 2'b01)) |
		(~copAccess[2] & (instOut[27:26] == 2'b10)) |
		(~copAccess[3] & (instOut[27:26] == 2'b11))
	);

	always @*
	begin
		case(ALUSrcA)
		2'b00: opA <= 32'h0;
		2'b01: opA <= rsFwd;
		2'b10: opA <= {27'h0, instOut[10:6]};
		2'b11: opA <= PCincr;
		endcase
		case(ALUSrcB)
		2'b00: opB <= 32'h0;
		2'b01: opB <= rtFwd;
		2'b10: opB <= imm_signExt;
		2'b11: opB <= {16'h0, instOut[15:0]};
		endcase
		case(branch)
		2'b00: nextPC <= PCincr;
		2'b01: nextPC <= PC + {imm_signExt[29:0], 2'b00};
		2'b10: nextPC <= rsFwd;
		2'b11: nextPC <= {PC[31:28], instOut[25:0], 2'b00};
		endcase
		case(wbDest)
		2'b00: wbReg <= 5'h0;
		2'b01: wbReg <= 5'h1f;
		2'b10: wbReg <= instOut[20:16];
		2'b11: wbReg <= instOut[15:11];
		endcase
		
		case(memCtrl[7:4])
		4'b1000, 4'b1001, 4'b1010, 4'b1011, 4'b1110: memW <= 1'b1;
		default: memW <= 1'b0;
		endcase
		case(memCtrl[7:4])
		4'b0000, 4'b0001, 4'b0010, 4'b0011, 4'b0100, 4'b0101, 4'b0110: memR <= 1'b1;
		default: memR <= 1'b0;
		endcase
		case(memCtrl[7:4])
		4'b0001, 4'b0101, 4'b1001: addrMask <= 2'b01;
		4'b0011, 4'b1011: addrMask <= 2'b11;
		default: addrMask <= 2'b00;
		endcase
	end
	
	assign memCtrl[3:0] = {memR, memW, addrMask};
	assign cacheOp[1] = (instOut[31:26] == 6'b101111) & (instOut[17:16] == 2'b01);
	assign cacheOp[0] = (instOut[31:26] == 6'b101111) & (instOut[17:16] == 2'b00);
	
endmodule
