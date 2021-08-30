`timescale 1ns / 1ps
/**
 * MEM stage logic: data alignment and write back.
 * 
 * @author Yunye Pu
 */
module StageMem(
	input clk, input rst, input flush, input stall,
	//Input: Sequential
	input [2:0] memCtrl, input [2:0] wbSrc, input [4:0] wbRegIn,
	input [31:0] ALUout, input [31:0] rtFwdMem,
	//Input: Combinatorial
	input [31:0] regHi, input [31:0] regLo, input [31:0] cp0RegOut,
	input [31:0] memDataIn,
	
	output reg [4:0] wbRegOut,
	output reg [31:0] wbData,
	
	input [31:0] PCIn, output reg [31:0] PCOut,
	input bdIn, output reg bdOut
);

	//MEM stage pipeline registers
	reg [31:0] ALUout_reg;
	reg [31:0] rtFwd_reg;
	reg [2:0] memCtrl_reg;
	reg [2:0] wbSrc_reg;

	always @ (posedge clk)
	begin
		if(rst | flush)
		begin
			memCtrl_reg <= 3'b111;
			wbRegOut <= 5'h00;
			wbSrc_reg <= 3'b000;
		end
		else if(~stall)
		begin
			memCtrl_reg <= memCtrl;
			wbRegOut <= wbRegIn;
			wbSrc_reg <= wbSrc;
		end
		if(~stall)
		begin
			ALUout_reg <= ALUout;
			rtFwd_reg <= rtFwdMem;
			PCOut <= PCIn;
			bdOut <= bdIn;
		end
	end
	
	//Memory read logic
	reg [31:0] lbRes, lwlRes, lbuRes, lwrRes;
	wire [31:0] lhRes, lhuRes;
	reg [31:0] memRes;
	wire [1:0] addr = ALUout_reg[1:0];
	always @*
	begin
		case(addr)
		2'b00: lbRes <= {{24{memDataIn[ 7]}}, memDataIn[ 7: 0]};
		2'b01: lbRes <= {{24{memDataIn[15]}}, memDataIn[15: 8]};
		2'b10: lbRes <= {{24{memDataIn[23]}}, memDataIn[23:16]};
		2'b11: lbRes <= {{24{memDataIn[31]}}, memDataIn[31:24]};
		endcase
		case(addr)
		2'b00: lbuRes <= {24'h0, memDataIn[ 7: 0]};
		2'b01: lbuRes <= {24'h0, memDataIn[15: 8]};
		2'b10: lbuRes <= {24'h0, memDataIn[23:16]};
		2'b11: lbuRes <= {24'h0, memDataIn[31:24]};
		endcase
		case(addr)
		2'b00: lwlRes <= {memDataIn[ 7:0], rtFwd_reg[23:0]};
		2'b01: lwlRes <= {memDataIn[15:0], rtFwd_reg[15:0]};
		2'b10: lwlRes <= {memDataIn[23:0], rtFwd_reg[ 7:0]};
		2'b11: lwlRes <= memDataIn;
		endcase
		case(addr)
		2'b00: lwrRes <= memDataIn;
		2'b01: lwrRes <= {rtFwd_reg[31:24], memDataIn[31: 8]};
		2'b10: lwrRes <= {rtFwd_reg[31:16], memDataIn[31:16]};
		2'b11: lwrRes <= {rtFwd_reg[31: 8], memDataIn[31:24]};
		endcase
	end
	
	assign lhRes = addr[1]? {{16{memDataIn[31]}}, memDataIn[31:16]}: {{16{memDataIn[15]}}, memDataIn[15:0]};
	assign lhuRes = addr[1]? {16'h0, memDataIn[31:16]}: {16'h0, memDataIn[15:0]};
	
	always @*
	begin
		case(memCtrl_reg[2:0])
		3'b000: memRes <= lbRes;
		3'b001: memRes <= lhRes;
		3'b010: memRes <= lwlRes;
		3'b011: memRes <= memDataIn;
		3'b100: memRes <= lbuRes;
		3'b101: memRes <= lhuRes;
		3'b110: memRes <= lwrRes;
		default:memRes <= 32'h0;
		endcase
		
	//Write back logic
		case(wbSrc_reg)
		3'b000: wbData <= ALUout_reg;
		3'b001: wbData <= memRes;
		3'b010: wbData <= regHi;
		3'b011: wbData <= regLo;
		3'b100: wbData <= cp0RegOut;
		default:wbData <= 32'h0;
		endcase
	end
	

endmodule
