`timescale 1ns / 1ps
/**
 * 18-bit LCG used as the PRNG for generating the value of Random register.
 * Formula: (65521*X+1) % 2^18
 * Should be updated only at TLBWR instruction execution.
 * 
 * @author Yunye Pu
 */
module TLBRNG(
	input clk, input rst, input next,
	input [4:0] regWired, output reg [4:0] regRandom = 5'd31
);
	
	reg [17:0] prng = 18'h143fd;
	wire [35:0] product = prng * (32 - regWired);
	
	always @ (posedge clk)
	if(rst)
		regRandom <= 5'd31;
	else if(next)
		regRandom <= product[22:18] + regWired;
	
	always @ (posedge clk)
	if(next) prng <= (65521 * prng + 1);//Higher bits are truncated
	
endmodule
