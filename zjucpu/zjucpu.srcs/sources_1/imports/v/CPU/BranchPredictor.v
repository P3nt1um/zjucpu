`timescale 1ns / 1ps
/**
 * A simple 2-bit dynamic branch predictor.
 * 
 * @author Yunye Pu
 */
module BranchPredictor(
	input clk, input rst, input stall, input [31:0] PC, input [31:0] branchDest,
	input ID_branchCond, input EX_branchCond, input branchTaken, input exc_flush,
	
	output reg [31:0] nextPC, output BP_flush
);
//branchCond=0 for normal control flow,
//=1 for conditional branch request
	
	wire prediction;
	wire [1:0] recRead;
	reg [1:0] recRead_buf;
	reg [1:0] recWrite;
	
	wire [31:0] PCincr = PC + 3'h4;
	reg [12:0] PCbuf0, PCbuf1;
	
	reg [31:0] PCcorrection;
	reg prediction_buf;
	
	always @ (posedge clk)
	begin
		if(rst | exc_flush)
		begin
			PCcorrection <= 32'h0;
			prediction_buf <= 1'b0;
			recRead_buf <= 2'b00;
			PCbuf0 <= 13'h0;
			PCbuf1 <= 13'h0;
		end
		else if(~stall)
		begin
			PCcorrection <= prediction? PCincr: branchDest;
			prediction_buf <= prediction;
			recRead_buf <= recRead;
			PCbuf0 <= PC[14:2];
			PCbuf1 <= PCbuf0;
		end
	end
	
	//conditional branch AND prediction != actual
	assign BP_flush = EX_branchCond & (branchTaken ^ prediction_buf);
	
	always @*
	begin
		if(ID_branchCond)//Conditional branch, use prediction
			nextPC <= prediction? branchDest: PCincr;
		else//No conditional branch, test whether there is pending correction
			nextPC <= BP_flush? PCcorrection: branchDest;
			
		case({branchTaken, recRead_buf})
		3'b000, 3'b001: recWrite <= 2'b00;
		3'b100, 3'b010: recWrite <= 2'b01;
		3'b101, 3'b011: recWrite <= 2'b10;
		3'b111, 3'b110: recWrite <= 2'b11;
		endcase
	end
	
	assign prediction = recRead[1];
	
	reg [1:0] recBuffer[8191:0];
	reg [1:0] _recRead;
	always @ (posedge clk)
	begin
		if(EX_branchCond)
			recBuffer[PCbuf1] <= recWrite;
		_recRead <= recBuffer[PC[14:2]];
	end
	assign recRead = _recRead;

	integer i;
	initial for(i = 0; i < 8192; i = i+1) recBuffer[i] <= 2'b00;
	
endmodule
