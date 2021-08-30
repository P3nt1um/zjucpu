`timescale 1ns / 1ps
/**
 * 1-byte to 4-byte upscaler on SD data receiving path.
 * Also combines data packets into a single stream.
 * 
 * @author Yunye Pu
 */
module SDC_RxUpscaler #(
	parameter BLKCNT_W = 16
)(
	input clk, input rst,
	output rx_finish,
	//Stream input
	input [7:0] rx_data_in, input rx_valid_in,
	input rx_last_in,
	//Transfer size
	input [BLKCNT_W-1:0] block_cnt,
	//Stream output
	output reg [31:0] rx_data_out,
	output reg rx_valid_out, output reg [3:0] rx_keep_out = 4'b0001
);
	
	reg [BLKCNT_W-1:0] block_counter = 0;
	reg [1:0] offset = 0;
	
	always @ (posedge clk)
	if(rst)
	begin
		offset <= 0;
		block_counter <= 0;
	end
	else if(rx_valid_in)
	begin
		offset <= offset + 1;
		if(rx_last_in)
		begin
			if(block_counter == block_cnt)
				block_counter <= 0;
			else
				block_counter <= block_counter + 1;
		end
	end

	always @ (posedge clk)
	if(rst)
		rx_valid_out <= 0;
	else
		rx_valid_out <= ((offset == 2'b11) | ((block_counter == block_cnt) & rx_last_in)) & rx_valid_in;
	
	always @ (posedge clk)
	if(rx_valid_in)
	case(offset)
	2'b00: begin rx_data_out[ 7: 0] <= rx_data_in; rx_keep_out <= 4'b0001; end
	2'b01: begin rx_data_out[15: 8] <= rx_data_in; rx_keep_out <= 4'b0011; end
	2'b10: begin rx_data_out[23:16] <= rx_data_in; rx_keep_out <= 4'b0111; end
	2'b11: begin rx_data_out[31:24] <= rx_data_in; rx_keep_out <= 4'b1111; end
	endcase
	
	assign rx_finish = (block_counter == block_cnt) & rx_valid_in & rx_last_in;
	
endmodule
