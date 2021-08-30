`timescale 1ns / 1ps
/**
 * 32-bit register used in coprocessor 0, with software and hardware writes,
 * mask controlling which bits are writable in software, and individual write
 * enable bits for each register bit. Software write takes priority over hardware
 * write.
 * 
 * @author Yunye Pu
 */
module Cp0Reg #(
	parameter SOFTWARE_MASK = 32'b0000_0000_0000_0000_0000_0000_0000_0000,
	parameter RESET_STATE = 32'b0000_0000_0000_0000_0000_0000_0000_0000
)
(
	input clk, input rst,
	input [31:0] sDin, input sWe,
	input [31:0] hDin, input [31:0] hWe,
	output [31:0] dout
);
	
	genvar i;
	generate
	for(i = 0; i < 32; i = i+1)
	begin: Cp0Reg_1b
		reg regBit = RESET_STATE[i];
		assign dout[i] = regBit;
		always @ (posedge clk)
		begin
			if(rst)
				regBit <= RESET_STATE[i];
			else
			begin
				if(SOFTWARE_MASK[i] & sWe)
					regBit <= sDin[i];
				else if(hWe[i])
					regBit <= hDin[i];
			end
		end
	end
	endgenerate
	
endmodule
