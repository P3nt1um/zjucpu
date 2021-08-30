`timescale 1ns / 1ps
/**
 * 4-byte to 1-byte downscaler on SD data transmitting path.
 * Also breaks data stream into packets(tx_last_out signal).
 * 
 * @author Yunye Pu
 */
module SDC_TxDownscaler #(
	parameter BLKSIZE_W = 12,
	parameter BLKCNT_W = 16
)(
	input clk, input rst,
	output tx_finish,
	//Stream input
	input [31:0] tx_data_in, input tx_valid_in,
	output tx_ready_in,
	//Transfer size
	input [BLKSIZE_W-1:0] block_size,
	input [BLKCNT_W-1:0] block_cnt,
	//Stream output
	output reg [7:0] tx_data_out, output tx_last_out,
	output tx_valid_out, input tx_ready_out
);
	reg [BLKSIZE_W-1:0] byte_counter = 0;
	reg [BLKCNT_W-1:0] block_counter = 0;
	
	reg [1:0] offset = 0;
	
	always @*
	case(offset)
	2'b00: tx_data_out <= tx_data_in[ 7: 0];
	2'b01: tx_data_out <= tx_data_in[15: 8];
	2'b10: tx_data_out <= tx_data_in[23:16];
	2'b11: tx_data_out <= tx_data_in[31:24];
	endcase
	
	assign tx_ready_in = tx_ready_out & (offset == 2'b11);
	assign tx_last_out = (byte_counter == block_size);
	assign tx_valid_out = tx_valid_in && !rst;
	
	always @ (posedge clk)
	if(rst)
	begin
		offset <= 0;
		byte_counter <= 0;
		block_counter <= 0;
	end
	else if(tx_ready_out)
	begin
		offset <= offset + 1;
		if(byte_counter == block_size)
		begin
			byte_counter <= 0;
			if(block_counter == block_cnt)
				block_counter <= 0;
			else
				block_counter <= block_counter + 1;
		end
		else
			byte_counter <= byte_counter + 1;
	end
	
	assign tx_finish = (byte_counter == block_size) & (block_counter == block_cnt) & tx_ready_out;
	
	
endmodule
