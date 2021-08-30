`timescale 1ns / 1ps
/**
 * SD data receiver. Supports both 1-bit and 4-bit SD bus mode.
 * CRC is checked and removed from data frames.
 * Data output is 8-bit wide, to minimize efforts on data alignment.
 * 
 * @author Yunye Pu
 */
module SDC_DataReceiver #(
	parameter BLKSIZE_W = 12
)(
	input clk, input rst,
	//Stream output
	output reg [7:0] out_data, output reg out_valid, output reg out_last,
	output reg crcError = 0, output frameError, output idle,
	//Bus mode and size
	input wideBus, input [BLKSIZE_W-1:0] rxSize,
	//SD data input
	input [3:0] sdDat, output sdBusy
);
	reg [3:0] sdDat_reg;
	
	localparam IDLE = 3'h0;
	localparam RX_DATA = 3'h1;
	localparam RX_CRC = 3'h2;
	localparam RX_STOP = 3'h3;
	reg [2:0] state = IDLE;
	
	reg [BLKSIZE_W-1:0] byteCounter = 0;
	reg [3:0] bitCounter = 0;
	
	reg [6:0] dat0Shift;
	reg dat1Shift, dat2Shift, dat3Shift;
	wire byteLoad = wideBus? bitCounter[0]: &bitCounter[2:0];
	
	wire [3:0] crcOut;
	wire _crcError = wideBus? (crcOut != sdDat_reg): (crcOut[0] != sdDat_reg[0]);
	
	assign idle = (state == IDLE);
	
	always @ (posedge clk)
	if(rst)
	begin
		state <= IDLE;
		byteCounter <= 0;
		bitCounter <= 0;
		crcError <= 0;
	end
	else
	case(state)
	IDLE: begin
		byteCounter <= 0;
		bitCounter <= 0;
		crcError <= 0;
		if(sdDat_reg[0] == 0) state <= RX_DATA;
	end
	RX_DATA: begin
		bitCounter <= bitCounter + 1;
		if(byteLoad) byteCounter <= byteCounter + 1;
		if(byteLoad && (byteCounter == rxSize))
		begin
			state <= RX_CRC;
			bitCounter <= 0;
		end
		crcError <= 0;
	end
	RX_CRC: begin
		if(_crcError) crcError <= 1;
		bitCounter <= bitCounter + 1;
		byteCounter <= 0;
		if(&bitCounter) state <= RX_STOP;
	end
	RX_STOP: begin
		state <= IDLE;
		byteCounter <= 0;
		bitCounter <= 0;
		crcError <= 0;
	end
	endcase
	
	assign frameError = (state == RX_STOP) && (sdDat_reg != 4'hf);
	
	always @ (posedge clk)
	begin
		sdDat_reg <= sdDat;
		dat0Shift <= {dat0Shift[5:0], sdDat_reg[0]};
		dat1Shift <= sdDat_reg[1];
		dat2Shift <= sdDat_reg[2];
		dat3Shift <= sdDat_reg[3];
		out_valid <= byteLoad && (state == RX_DATA);
		out_last <=  byteLoad && (state == RX_DATA) && (byteCounter == rxSize);
		if(wideBus)
			out_data <= {dat3Shift, dat2Shift, dat1Shift, dat0Shift[0], sdDat_reg};
		else
			out_data <= {dat0Shift, sdDat_reg[0]};
	end
	
	assign sdBusy = !sdDat_reg[0];
	
	wire crcEn = (state == RX_DATA);
	wire crcRst = rst || !crcEn;
	
	SDC_CRC16 crc[3:0] (.clk(clk), .ce(crcEn), .din(sdDat_reg), .clr(crcRst), .crc_out(crcOut));

	
endmodule
