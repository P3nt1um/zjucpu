`timescale 1ns / 1ps
/**
 * Main module on SD controller data path. Drives DAT pins
 * and provides a Wishbone master interface for data movement.
 * 
 * @author Yunye Pu
 */
module SDC_Datapath #(
	parameter BLKSIZE_W = 12,
	parameter BLKCNT_W = 16,
	parameter DATA_TIMEOUT_W = 24
)(
	input wb_clk, input wb_rst,
	input sd_clk, input sd_rst,
	//DMA interface: wishbone master
	output [31:0] wb_addr,
	output [31:0] wb_dout, input [31:0] wb_din,
	output [3:0] wb_dm, output wb_cyc, output wb_stb,
	output wb_we, input wb_ack,
	//SD data interface
	inout [3:0] sdDat,
	//Configuration signals
	input [BLKSIZE_W-1:0] blockSize,
	input [BLKCNT_W-1:0] blockCount,
	input [DATA_TIMEOUT_W-1:0] timeoutValue,
	input [31:0] dmaAddress,
	input wideBus,
	//Control and status
	input rxStart, input txStart, output sdBusy, output [6:0] interruptEvents
);

	reg txRunning = 0;//Sets on tx start, resets on downscaler finish
	reg rxRunning = 0;//Sets on rx start, resets on RX idle after upscaler finish
	//When an error event occur, RX and TX will stop after transaction of current block completes.
	
	wire txFinish, rxFinish, rxIdle, txWaiting;
	wire rxCrcError, rxFrameError;
	
	//TX 32-bit stream
	wire [31:0] txWord_data;
	wire txWord_valid, txWord_ready;
	//TX 8-bit stream
	wire [7:0] txByte_data;
	wire txByte_valid, txByte_ready, txByte_last;
	//RX 8-bit stream
	wire [7:0] rxByte_data;
	wire rxByte_valid, rxByte_last;
	//RX 32-bit stream
	wire [31:0] rxWord_data;
	wire [3:0] rxWord_keep;
	wire rxWord_valid, rxWord_ready;
	
	//SD bus
	wire [3:0] sdDat_o;
	wire [3:0] sdDat_t;
	wire [3:0] sdDat_i;
	
	SDC_DMA dma(
		.wb_clk(wb_clk), .wb_rst(wb_rst),
		.sd_clk(sd_clk), .sd_rst(sd_rst),
		.wb_addr(wb_addr), .wb_dout(wb_dout), .wb_din(wb_din),
		.wb_dm(wb_dm), .wb_cyc(wb_cyc), .wb_stb(wb_stb),
		.wb_we(wb_we), .wb_ack(wb_ack),
		
		.sd_tx_data(txWord_data), .sd_tx_valid(txWord_valid),
		.sd_tx_ready(txWord_ready),
		.sd_rx_data(rxWord_data), .sd_rx_keep(rxWord_keep),
		.sd_rx_valid(rxWord_valid), .sd_rx_ready(rxWord_ready),
		.tx_en(txRunning), .rx_en(rxRunning), .base_addr(dmaAddress)
	);
	
	SDC_TxDownscaler #(BLKSIZE_W, BLKCNT_W) tx1 (
		.clk(sd_clk), .rst(sd_rst || ~txRunning), .tx_finish(txFinish),
		.tx_data_in(txWord_data), .tx_valid_in(txWord_valid), .tx_ready_in(txWord_ready),
		.tx_data_out(txByte_data), .tx_valid_out(txByte_valid),
		.tx_last_out(txByte_last), .tx_ready_out(txByte_ready),
		.block_size(blockSize), .block_cnt(blockCount)
	);
	
	
	SDC_DataTransmitter tx0(
		.clk(sd_clk), .rst(sd_rst),
		.in_data(txByte_data), .in_valid(txByte_valid),
		.in_last(txByte_last), .in_ready(txByte_ready),
		.wideBus(wideBus), .txWaiting(txWaiting),
		.sdDat(sdDat_o), .oe(sdDat_t), .sdBusy(sdBusy)
	);
	
	SDC_DataReceiver #(BLKSIZE_W) rx0(
		.clk(sd_clk), .rst(sd_rst),
		.out_data(rxByte_data), .out_valid(rxByte_valid), .out_last(rxByte_last),
		.crcError(rxCrcError), .frameError(rxFrameError), .idle(rxIdle),
		.wideBus(wideBus), .rxSize(blockSize),
		.sdDat(sdDat_i), .sdBusy(sdBusy)
	);
	
	SDC_RxUpscaler #(BLKCNT_W) rx1(
		.clk(sd_clk), .rst(sd_rst || !rxRunning), .rx_finish(rxFinish),
		.rx_data_in(rxByte_data), .rx_valid_in(rxByte_valid),
		.rx_last_in(rxByte_last),
		.block_cnt(blockCount),
		.rx_data_out(rxWord_data), .rx_valid_out(rxWord_valid),
		.rx_keep_out(rxWord_keep)
	);
	
	//SD data lines driver
	assign sdDat_i = sdDat;
	assign sdDat[0] = sdDat_t[0]? sdDat_o[0]: 1'bz;
	assign sdDat[1] = sdDat_t[1]? sdDat_o[1]: 1'bz;
	assign sdDat[2] = sdDat_t[2]? sdDat_o[2]: 1'bz;
	assign sdDat[3] = sdDat_t[3]? sdDat_o[3]: 1'bz;
	
	//Timeout detection logic
	wire int_timeout;
	reg [DATA_TIMEOUT_W-1:0] timeoutCounter = 0;
	always @ (posedge sd_clk)
	if(sd_rst || !(txRunning || rxRunning))
		timeoutCounter <= 0;
	else if(timeoutCounter != timeoutValue)
		timeoutCounter <= timeoutCounter + 1;
	assign int_timeout = (timeoutCounter == timeoutValue) && (timeoutValue != 0);
	
//TX fifo underflow: DMA output valid goes from high to low when tx running
//RX fifo overflow: DMA input ready goes low when rx running
	wire outValidFall;
	EdgeDetector #(1'b0) dmaTxValidFallDetect (.clk(sd_clk), .rst(sd_rst), .i(txWord_valid), .rise(), .fall(outValidFall));

	reg [4:0] errEvents = 0;
	always @ (posedge sd_clk)
	if(sd_rst || rxStart || txStart)
		errEvents <= 5'h0;
	else
	begin
		//Timeout
		if(int_timeout) errEvents[4] <= 1;
		//Frame error
		if(rxFrameError && rxRunning) errEvents[3] <= 1;
		//TX fifo underflow
		if(outValidFall && txRunning) errEvents[2] <= 1;
		//RX fifo overflow
		if(!rxWord_ready && rxRunning) errEvents[1] <= 1;
		//CRC error
		if(rxCrcError && rxRunning) errEvents[0] <= 1;
	end
	
	reg rxFinished = 0;//Sets on RX upscaler finish, resets on rx start
	
	always @ (posedge sd_clk)
	if(sd_rst || ((|errEvents) && rxIdle) || (rxIdle && rxFinished))
		rxRunning <= 0;
	else if(rxStart)
		rxRunning <= 1;
	
	always @ (posedge sd_clk)
	if(sd_rst || ((|errEvents) && txWaiting) || txFinish)
		txRunning <= 0;
	else if(txStart)
		txRunning <= 1;
	
	always @ (posedge sd_clk)
	if(sd_rst || !rxRunning)
		rxFinished <= 0;
	else if(rxFinish)
		rxFinished <= 1;
	
	assign interruptEvents = (rxRunning || txRunning)? 7'h0: {errEvents, |errEvents, ~|errEvents};
	
endmodule
