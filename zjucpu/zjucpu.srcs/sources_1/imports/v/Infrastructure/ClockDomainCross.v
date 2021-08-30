`timescale 1ns / 1ps
/**
 * Various utility modules for clock domain crossing.
 * 
 * @author Yunye Pu
 */
module ClockDomainCross #(
	parameter I_REG = 1,
	parameter O_REG = 1
)(
	input clki, input clko, input i, output o
);
	wire internal;
	PipeReg #(I_REG) inReg(.clk(clki), .i(i), .o(internal));
	PipeReg #(O_REG) outReg(.clk(clko), .i(internal), .o(o));

endmodule

module PipeReg #(
	parameter DEPTH = 1
)(
	input clk, input i, output o
);
	generate
	if(DEPTH < 1)
		assign o = i;
	else if(DEPTH == 1)
	begin
		(* SHREG_EXTRACT = "NO" *)
		reg o_reg;
		always @ (posedge clk) o_reg <= i;
		assign o = o_reg;
	end
	else
	begin
		(* SHREG_EXTRACT = "NO" *)
		reg [DEPTH-1:0] o_reg;
		always @ (posedge clk) o_reg <= {i, o_reg[DEPTH-1:1]};
		assign o = o_reg[0];
	end
	endgenerate
	
endmodule

module PipeReg_rst #(
	parameter LEN = 3,
	parameter INIT = 1'b0
) (
	input clk, input rst,
	input i, output o
);
	
	(* shreg_extract = "no", ASYNC_REG = "TRUE" *)
	reg [LEN-1:0] sync = {LEN{INIT}};
	
	always @ (posedge clk or posedge rst)
	if(rst)
		sync <= {LEN{INIT}};
	else
		sync <= {sync[LEN-2:0], i};
	
	assign o = sync[LEN-1];
	
endmodule

module Handshake_freqUp( //clkAck has a higher frequency than clkStb
	input clkStb, input clkAck,
	input stbI, output reg stbO,
	input ackI, output reg ackO
);
	always @ (posedge clkAck)
	if(ackI)
		stbO <= 1'b0;
	else if(stbI)
		stbO <= 1'b1;
	
	reg ack;
	always @ (posedge clkStb or posedge ackI)
	if(ackI)
		ack <= 1'b1;
	else
		ack <= 1'b0;
	always @ (posedge clkStb)
		ackO <= ack;
	
endmodule

module Handshake_freqDown( // clkAck has a lower or equal frequency than clkStb
	input clkStb, input clkAck,
	input stbI, output reg stbO,
	input ackI, output reg ackO
);
	always @ (posedge clkAck or posedge stbI)
	if(stbI)
		stbO <= 1'b1;
	else if(ackI)
		stbO <= 1'b0;
	
	always @ (posedge clkStb)
		ackO <= ackI;
	
endmodule

module AsyncHandshake #(
	parameter STB_FREQ = 100,
	parameter ACK_FREQ = 100
)(
	input clkStb, input clkAck,
	input stbI, output stbO,
	input ackI, output ackO
);

	generate if(STB_FREQ < ACK_FREQ)
	begin: FREQ_UP
		Handshake_freqUp up(clkStb, clkAck, stbI, stbO, ackI, ackO);
	end else begin: FREQ_DOWN
		Handshake_freqDown down(clkStb, clkAck, stbI, stbO, ackI, ackO);
	end endgenerate

endmodule

module EdgeDetector #(
	parameter INIT = 1'b1
)(
	input clk, input rst,
	input i, output rise, output fall
);
	reg [1:0] in_reg = {2{INIT}};
	always @ (posedge clk)
	if(rst)
		in_reg <= {2{INIT}};
	else
		in_reg <= {in_reg[0], i};
	
	assign rise = (in_reg == 2'b01);
	assign fall = (in_reg == 2'b10);
	
endmodule
