`timescale 1ns / 1ps
/**
 * Arithmetic & logic unit; excluding multiplier and divider.
 * 
 * @author Yunye Pu
 */
module CLO(
	input [31:0] val, output [5:0] res
);
	wire [32:0] c0, c1, c2, c3, c4, c5;
	wire [31:0] b0 = 32'b01010101010101010101010101010101;
	wire [31:0] b1 = 32'b00110011001100110011001100110011;
	wire [31:0] b2 = 32'b00001111000011110000111100001111;
	wire [31:0] b3 = 32'b00000000111111110000000011111111;
	wire [31:0] b4 = 32'b00000000000000001111111111111111;
	
	//Use carry logic to improve performance
	genvar i;
	generate
		for(i = 0; i < 32; i = i+1)
		begin: carry
			MUXCY mux0(.S(val[i]), .DI(b0[i]), .CI(c0[i]), .O(c0[i+1]));
			MUXCY mux1(.S(val[i]), .DI(b1[i]), .CI(c1[i]), .O(c1[i+1]));
			MUXCY mux2(.S(val[i]), .DI(b2[i]), .CI(c2[i]), .O(c2[i+1]));
			MUXCY mux3(.S(val[i]), .DI(b3[i]), .CI(c3[i]), .O(c3[i+1]));
			MUXCY mux4(.S(val[i]), .DI(b4[i]), .CI(c4[i]), .O(c4[i+1]));
			MUXCY mux5(.S(val[i]), .DI(1'b0),  .CI(c5[i]), .O(c5[i+1]));
		end
	endgenerate
	
	assign res = {c5[32], c4[32], c3[32], c2[32], c1[32], c0[32]};
	assign {c5[0], c4[0], c3[0], c2[0], c1[0], c0[0]} = 6'b100000;
	
endmodule

module ALU(
	input [31:0] A, input [31:0] B, input [3:0] op,
	output reg [31:0] res, output [31:0] addRes,
	output eq, output lt, output ltu,
	output overflow
);
	wire [32:0] A33 = {A[31], A};
	wire [32:0] B33 = {B[31], B};
	wire [32:0] add33 = A33 + B33;
	wire [32:0] sub33 = A33 - B33;
	
	wire signed [31:0] B_signed = B;
	
	wire [5:0] cloRes;
	
	always @*
		case(op)
		4'b0000: res <= add33[31:0];//add
		4'b0001: res <= add33[31:0];//addu
		4'b0010: res <= sub33[31:0];//sub
		4'b0011: res <= sub33[31:0];//subu
		4'b0100: res <= A & B;//and
		4'b0101: res <= A | B;//or
		4'b0110: res <= A ^ B;//xor
		4'b0111: res <= ~(A | B);//nor
		4'b1000: res <= {26'h0, cloRes};//clz
		4'b1001: res <= {26'h0, cloRes};//clo
		4'b1010: res <= {31'h0, lt};//slt
		4'b1011: res <= {31'h0, ltu};//sltu
		4'b1100: res <= B << A[4:0];//sll
		4'b1101: res <= {B[15:0], 16'h0};//lui
		4'b1110: res <= B >> A[4:0];//srl
		4'b1111: res <= B_signed >>> A[4:0];//sra
		endcase
	
	CLO clo(.val(op[0]? A: ~A), .res(cloRes));
		
	assign overflow = ((add33[32] ^ add33[31]) & (op == 4'b0000)) | ((sub33[32] ^ sub33[31]) & (op == 4'b0010));
	assign addRes = add33[31:0];
	assign lt = sub33[32];
	assign ltu = A < B;
	assign eq = (A == B);
	
endmodule
