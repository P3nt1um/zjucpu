`timescale 1ns / 1ps
/**
 * 5x5 button pad driver.
 * 
 * @author Yunye Pu
 */
module Keypad(
	input clk, inout [4:0] keyX, inout [4:0] keyY,
	output reg [5:0] keyCode, output ready, output [9:0] dbg_keyLine
);
	
	reg state = 1'b0;
	reg [4:0] keyLineX;
	reg [4:0] keyLineY;
	assign keyX = state? 5'h0: 5'bzzzzz;
	assign keyY = state? 5'bzzzzz: 5'h0;
	
	always @ (posedge clk)
	begin
		if(state)
			keyLineY <= keyY;
		else
			keyLineX <= keyX;
		state <= ~state;
	end
	
	assign dbg_keyLine = ~{keyLineY, keyLineX};

	wire ready_raw1 = (keyLineX == 5'b11110) | (keyLineX == 5'b11101) | (keyLineX == 5'b11011) | (keyLineX == 5'b10111) | (keyLineX == 5'b01111);
	wire ready_raw2 = (keyLineY == 5'b11110) | (keyLineY == 5'b11101) | (keyLineY == 5'b11011) | (keyLineY == 5'b10111) | (keyLineY == 5'b01111);
	wire ready_raw = ready_raw1 & ready_raw2;
	
	always @*
	begin
		case(keyLineX)
		5'b11110: keyCode[2:0] <= 3'h0;
		5'b11101: keyCode[2:0] <= 3'h1;
		5'b11011: keyCode[2:0] <= 3'h2;
		5'b10111: keyCode[2:0] <= 3'h3;
		5'b01111: keyCode[2:0] <= 3'h4;
		default: keyCode[2:0] <= 3'h7;
		endcase
		case(keyLineY)
		5'b11110: keyCode[5:3] <= 3'h0;
		5'b11101: keyCode[5:3] <= 3'h1;
		5'b11011: keyCode[5:3] <= 3'h2;
		5'b10111: keyCode[5:3] <= 3'h3;
		5'b01111: keyCode[5:3] <= 3'h4;
		default: keyCode[5:3] <= 3'h7;
		endcase
	end
	
	AntiJitter #(4) rdyFilter(.clk(clk), .I(ready_raw), .O(ready));
	
endmodule
