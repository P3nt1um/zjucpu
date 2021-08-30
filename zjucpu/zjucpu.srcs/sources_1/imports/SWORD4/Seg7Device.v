`timescale 1ns / 1ps
/**
 * 7-seg display driver. Provides serial output to drive a 8-digit display
 * in hexadecimal digits, and parallel(scanning) output to drive a 4-digit
 * display in pattern mode. The anode output to the 4-digit display is encoded,
 * since the 4-digit display includes a decoder.
 * 
 * @author Yunye Pu
 */
module Seg7Device(
	input clkIO, input [1:0] clkScan, input clkBlink,
	input [31:0] data, input [7:0] point, input [7:0] LES,
	output [2:0] sout, output reg [7:0] segment, output [1:0] anode
);
	wire [63:0] dispData;
	wire [31:0] dispPattern;
	
	Seg7Decode U0(.hex(data), .point(point),
		.LE(LES & {8{clkBlink}}), .pattern(dispData));
	Seg7Remap U1(.I(data), .O(dispPattern));

	ShiftReg #(.WIDTH(64), .ONTIME(12'hC00)) U2(.clk(clkIO), .pdata(dispData), .sout(sout));

	always @*
		case(clkScan)
//		2'b00: begin segment <= ~dispPattern[ 7: 0]; anode <= 4'b1110; end
//		2'b01: begin segment <= ~dispPattern[15: 8]; anode <= 4'b1101; end
//		2'b10: begin segment <= ~dispPattern[23:16]; anode <= 4'b1011; end
//		2'b11: begin segment <= ~dispPattern[31:24]; anode <= 4'b0111; end
		2'b00: segment <= ~dispPattern[ 7: 0];
		2'b01: segment <= ~dispPattern[15: 8];
		2'b10: segment <= ~dispPattern[23:16];
		2'b11: segment <= ~dispPattern[31:24];
		endcase
	assign anode = clkScan;
	
endmodule

module Seg7Remap(
	input [31:0] I, output [31:0] O
);
	
	assign O[ 7: 0] = {I[24], I[12], I[5], I[17], I[25], I[16], I[4], I[0]};
	assign O[15: 8] = {I[26], I[13], I[7], I[19], I[27], I[18], I[6], I[1]};
	assign O[23:16] = {I[28], I[14], I[9], I[21], I[29], I[20], I[8], I[2]};
	assign O[31:24] = {I[30], I[15], I[11],I[23], I[31], I[22], I[10],I[3]};
	
endmodule

module Seg7Decode(
	input [31:0] hex, input [7:0] point, input [7:0] LE,
	output [63:0] pattern
);
	wire [63:0] digits;

	SegmentDecoder
		U0(.hex(hex[ 3: 0]), .segment(digits[ 6: 0])),
		U1(.hex(hex[ 7: 4]), .segment(digits[14: 8])),
		U2(.hex(hex[11: 8]), .segment(digits[22:16])),
		U3(.hex(hex[15:12]), .segment(digits[30:24])),
		U4(.hex(hex[19:16]), .segment(digits[38:32])),
		U5(.hex(hex[23:20]), .segment(digits[46:40])),
		U6(.hex(hex[27:24]), .segment(digits[54:48])),
		U7(.hex(hex[31:28]), .segment(digits[62:56]));
	
	assign {digits[63], digits[55], digits[47], digits[39], digits[31], digits[23], digits[15], digits[7]} = ~point;

	assign pattern[ 7: 0] = digits[ 7: 0] | {8{LE[0]}};
	assign pattern[15: 8] = digits[15: 8] | {8{LE[1]}};
	assign pattern[23:16] = digits[23:16] | {8{LE[2]}};
	assign pattern[31:24] = digits[31:24] | {8{LE[3]}};
	assign pattern[39:32] = digits[39:32] | {8{LE[4]}};
	assign pattern[47:40] = digits[47:40] | {8{LE[5]}};
	assign pattern[55:48] = digits[55:48] | {8{LE[6]}};
	assign pattern[63:56] = digits[63:56] | {8{LE[7]}};

endmodule

module SegmentDecoder(
	input [3:0] hex, output reg [6:0] segment
);

	always @*
	begin
		case(hex)
			4'h0: segment[6:0] <= 7'b1000000;
			4'h1: segment[6:0] <= 7'b1111001;
			4'h2: segment[6:0] <= 7'b0100100;
			4'h3: segment[6:0] <= 7'b0110000;
			4'h4: segment[6:0] <= 7'b0011001;
			4'h5: segment[6:0] <= 7'b0010010;
			4'h6: segment[6:0] <= 7'b0000010;
			4'h7: segment[6:0] <= 7'b1111000;
			4'h8: segment[6:0] <= 7'b0000000;
			4'h9: segment[6:0] <= 7'b0010000;
			4'hA: segment[6:0] <= 7'b0001000;
			4'hB: segment[6:0] <= 7'b0000011;
			4'hC: segment[6:0] <= 7'b1000110;
			4'hD: segment[6:0] <= 7'b0100001;
			4'hE: segment[6:0] <= 7'b0000110;
			4'hF: segment[6:0] <= 7'b0001110;
		endcase
	end

endmodule
