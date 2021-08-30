`timescale 1ns / 1ps
/**
 * Multiplier and divider.
 * The multipler is implemented using the * operator, allowing utilization
 * of DSP elements in FPGA and achieving single-cycle operation.
 * The divider is implemented using radix-2 algorithm, so it has a latency of
 * 32 cycles.
 * 
 * @author Yunye Pu
 */
module MulDiv(
	input clk, input rst,
	input [31:0] A, input [31:0] B, input [3:0] op,
	output reg [31:0] hi, output reg [31:0] lo, output busy
);
	//Note: busy signal should be asserted only if
	//registers hi and lo are not valid AFTER next clock edge.
localparam IDLE = 2'b00;
localparam WAIT_FOR_MADD = 2'b01;
localparam WAIT_FOR_MSUB = 2'b10;
localparam WAIT_FOR_DIV = 2'b11;
	
	wire [32:0] A33, B33;
	wire [31:0] A_abs, B_abs;
	wire [65:0] mulRes;
	reg [63:0] mulRes_reg;
//	reg mulBusy;
	reg [1:0] state;

	reg [1:0] signs;
	wire [31:0] q, r;
	wire divDone;

	always @ (posedge clk)
	begin
		if(rst)
		begin
			hi <= 32'h0;
			lo <= 32'h0;
			state <= IDLE;
		end
		else
		begin
			mulRes_reg <= mulRes[63:0];
			case(op[3:1])
			3'b000, 3'b001: begin
				case(state)
				IDLE: ;
				WAIT_FOR_MADD: begin
					state <= IDLE;
					{hi, lo} <= {hi, lo} + mulRes_reg;
				end
				WAIT_FOR_MSUB: begin
					state <= IDLE;
					{hi, lo} <= {hi, lo} - mulRes_reg;
				end
				WAIT_FOR_DIV:
					if(divDone)
					begin
						lo <= signs[1]? -q: q;
						hi <= signs[0]? -r: r;
						state <= IDLE;
					end
				endcase
			end
			3'b010: begin lo <= A; state <= IDLE; end
			3'b011: begin hi <= A; state <= IDLE; end
			3'b100: begin {hi, lo} <= mulRes[63:0]; state <= IDLE; end//mult, multu
			3'b101: begin//div, divu
				state <= WAIT_FOR_DIV;
				if(op[0])
					signs <= 2'b00;
				else
					signs <= {A[31] ^ B[31], A[31]};//sign of q and r
			end
			3'b110: state <= WAIT_FOR_MADD;//madd, maddu
			3'b111: state <= WAIT_FOR_MSUB;//msub, msubu
			endcase
		end
	end
	
	assign A33[31:0] = A;
	assign B33[31:0] = B;
	assign A33[32] = op[0]? 1'b0: A[31];
	assign B33[32] = op[0]? 1'b0: B[31];
	assign A_abs = A[31]? -A: A;
	assign B_abs = B[31]? -B: B;
	
//	Mult_CPU mul(.A(A33), .B(B33), .P(mulRes));
	assign mulRes = A33 * B33;
	
	Div_CPU div(.clk(clk), .rst(op[3:1] == 3'b101), .a(A_abs), .b(B_abs),
		.q(q), .r(r), .done(divDone));
	
	assign busy = (state == WAIT_FOR_DIV) & ~divDone;
	
//	always @*
//	begin
//		case(op)
//		4'b1100, 4'b1101, 4'b1110, 4'b1111: mulBusy <= 1'b1;
//		default: mulBusy <= 1'b0;
//		endcase
//	end

endmodule
