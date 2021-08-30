`timescale 1ns / 1ps
/**
 * SD data transmitter. Supports both 1-bit and 4-bit SD bus mode.
 * CRC is computed and appended at the end of data frames.
 * Data input is 8-bit wide, to minimize efforts on data alignment.
 * 
 * @author Yunye Pu
 */
module SDC_DataTransmitter(
	input clk, input rst,
	//Stream input
	input [7:0] in_data, input in_valid,
	input in_last, output in_ready,
	//Bus mode
	input wideBus,
	//SD data output
	output reg [3:0] sdDat, output reg [3:0] oe,
	input sdBusy, output txWaiting
);
	
	localparam IDLE = 3'h0;
	localparam TX_START = 3'h1;
	localparam TX_DATA = 3'h2;
	localparam TX_LAST = 3'h3;
	localparam TX_CRC = 3'h4;
	localparam TX_STOP = 3'h5;
	localparam BUS_TURNAROUND = 3'h6;
	localparam CARD_BUSY = 3'h7;
	reg [2:0] state = IDLE;
	
	reg [3:0] bitCounter = 0;
	reg [7:0] byteShift;
	
	wire byteLoad = wideBus? bitCounter[0]: &bitCounter[2:0];
	assign in_ready = ((state == TX_DATA) && byteLoad) || (state == TX_START);
	
	always @ (posedge clk)
	if(rst)
	begin
		state <= IDLE;
		bitCounter <= 0;
		byteShift <= 8'hff;
	end
	else
	case(state)
	IDLE:begin
		bitCounter <= 0;
		if(in_valid) state <= TX_START;
		byteShift <= in_valid? 8'h00: 8'hff;
	end
	TX_START: begin
		bitCounter <= 0;
		byteShift <= in_data;
		state <= TX_DATA;
	end
	TX_DATA: begin
		if(byteLoad)
			byteShift <= in_data;
		else if(wideBus)
			byteShift <= {byteShift[3:0], 4'h0};
		else
			byteShift <= {byteShift[6:0], 1'b0};
		bitCounter <= bitCounter + 1;
		if(byteLoad && in_last) state <= TX_LAST;
	end
	TX_LAST: begin
		if(byteLoad)
			byteShift <= in_data;
		else if(wideBus)
			byteShift <= {byteShift[3:0], 4'h0};
		else
			byteShift <= {byteShift[6:0], 1'b0};
		if(byteLoad) state <= TX_CRC;
		if(byteLoad)
			bitCounter <= 0;
		else
			bitCounter <= bitCounter + 1;
	end
	TX_CRC: begin
		bitCounter <= bitCounter + 1;
		if(&bitCounter) state <= TX_STOP;
		byteShift <= 8'hff;
	end
	TX_STOP: begin
		state <= BUS_TURNAROUND;
		bitCounter <= 0;
		byteShift <= 0;
		byteShift <= 8'hff;
	end
	BUS_TURNAROUND: begin
		bitCounter <= bitCounter + 1;
		if(&bitCounter) state <= CARD_BUSY;
		byteShift <= 8'hff;
	end
	CARD_BUSY: begin
		bitCounter <= 0;
		byteShift <= 8'hff;
		if(!sdBusy) state <= IDLE;
	end
	endcase
	
	wire crcEn = (state == TX_DATA) || (state == TX_LAST);
	wire crcRst = rst || !crcEn;
	wire [3:0] crcOut;
	
	SDC_CRC16 crc[3:0] (.clk(clk), .ce(crcEn), .din(byteShift[7:4]), .clr(crcRst), .crc_out(crcOut));
	wire _oe = (state == TX_START) || (state == TX_DATA) || (state == TX_LAST)
			||(state == TX_CRC) || (state == TX_STOP);
	
	always @ (posedge clk)
	begin
		sdDat[3] <= wideBus? ((state == TX_CRC)? crcOut[3]: byteShift[7]): 1'b1;
		sdDat[2] <= wideBus? ((state == TX_CRC)? crcOut[2]: byteShift[6]): 1'b1;
		sdDat[1] <= wideBus? ((state == TX_CRC)? crcOut[1]: byteShift[5]): 1'b1;
		if(state == TX_CRC)
			sdDat[0] <= wideBus? crcOut[0]: crcOut[3];
		else
			sdDat[0] <= wideBus? byteShift[4]: byteShift[7];
		oe[0] <= _oe;
		oe[3:1] <= wideBus? {3{_oe}}: 3'b000;
	end
	
	assign txWaiting = (state == CARD_BUSY);
	
endmodule
