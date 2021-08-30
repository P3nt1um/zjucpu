`timescale 1ns / 1ps
/**
 * Radix-2 divider.
 * 
 * @author Yunye Pu
 */
module Div_CPU(
	input clk, input rst,
	input [31:0] a, input [31:0] b,
	output [31:0] q, output [31:0] r,
	output reg done
);
	
	reg [4:0] state;
	reg [63:0] work;
	reg [31:0] divider;
	wire [31:0] remain = work[62:31] - divider;

	always @ (posedge clk)
	begin
		if(rst)
		begin
			divider <= b;
			work <= {32'h0, a};
			done <= (b == 32'h0);
			state <= 5'h0;
		end
		else if(~done)
		begin
			done <= &state;
			work <= remain[31]? {work[62:0], 1'b0}: {remain[31:0], work[30:0], 1'b1};
			state <= state + 1'b1;
		end
	end
	assign q = work[31:0];
	assign r = work[63:32];

endmodule
