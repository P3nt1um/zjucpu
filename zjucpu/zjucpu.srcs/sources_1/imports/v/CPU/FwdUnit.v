`timescale 1ns / 1ps
/**
 * GPR forwarding unit.
 * This module is one of the oldest modules in the SoC project.
 * It might be absorbed into upper module in future revisions
 * since this module contains very simple logic.
 * 
 * @author Yunye Pu
 */
module GprFwdUnit(
	input [31:0] regFile, input [31:0] ALUout, input [31:0] dataToReg,
	input [4:0] regRequest, input EN, input [4:0] IDEX_wb, input IDEX_dv, input [4:0] EXMEM_wb,
	output reg [31:0] dataOut, output stall
);
	
	wire [2:0] sel;
	assign sel[2] = (|regRequest & EN);
	assign sel[1] = (IDEX_wb == regRequest);
	assign sel[0] = (EXMEM_wb == regRequest);
	
	assign stall = &{sel[2], sel[1], ~IDEX_dv};
	
	always @*
	case(sel)
	3'b101: dataOut <= dataToReg;
	3'b110, 3'b111: dataOut <= ALUout;
	default: dataOut <= regFile;
	endcase
	
endmodule
