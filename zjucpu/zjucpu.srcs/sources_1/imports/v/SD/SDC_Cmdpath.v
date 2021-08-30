`timescale 1ns / 1ps
/**
 * SD card CMD pin driver. Manages command transmitting,
 * response receiving, CRC generating and checking etc.
 * 
 * @author Yunye Pu
 */
module SDC_Cmdpath #(
	parameter CMD_TIMEOUT_W = 16
)(
	input clk, input rst,
	//Command input
	input [5:0] cmdIndex, input [31:0] cmdArgument,
	//Command trigger
	input cmdStart, output reg startRx = 0, output reg startTx = 0,
	//Configurations
	input [6:0] cmdConfig,
	output [119:0] response,
	input [CMD_TIMEOUT_W-1:0] timeoutValue,
	//Status
	output [4:0] interruptEvents,
	//Command pin signals
	output reg sdCmd_o = 1, input sdCmd_i, output reg sdCmd_t = 0,
	//Busy signal from DAT0 pin
	input sdBusy
);
`define CHECK_INDEX    cmdConfig[4]
`define CHECK_CRC      cmdConfig[3]
`define CHECK_BUSY     cmdConfig[2]
`define CHECK_RESP    (cmdConfig[1] ^ cmdConfig[0]) // == 2'b01 or 2'b10
`define START_DATA_RX (cmdConfig[6:5] == 2'b01)
`define START_DATA_TX (cmdConfig[6:5] == 2'b10)
`define RESP_LENGTH   (cmdConfig[0]? 8'd38: 8'd126)
	
	reg sdCmd_i_reg = 1;

	localparam
	IDLE      = 4'h0,
	TX_DATA   = 4'h1,
	TX_CRC    = 4'h2,
	TX_STOP   = 4'h3,
	TX_CLEAR  = 4'h4,
	WAIT_RESP = 4'h5,
	RX_DATA   = 4'h6,
	RX_CRC    = 4'h7,
	RX_STOP   = 4'h8,
	WAIT_BUSY = 4'h9,
	CMD_FIN   = 4'ha;
	reg [3:0] state = IDLE;
	
	reg [39:0] cmdTxShift;
	reg [119:0] respRxShift;
	reg [7:0] bitCounter = 0;
	
	reg respIndexErr = 0;
	reg respCrcErr = 0;
	reg cmdTimeout = 0;
	
	//State transition
	always @ (posedge clk)
	if(rst)
		state <= IDLE;
	else
	case(state)
	IDLE: if(cmdStart) state <= TX_DATA;
	TX_DATA: if(bitCounter == 39) state <= TX_CRC;
	TX_CRC: if(bitCounter == 46) state <= TX_STOP;
	TX_STOP: state <= TX_CLEAR;
	TX_CLEAR: if(bitCounter == 50) begin // Wait for bus turnaround
		if(`CHECK_RESP)
			state <= WAIT_RESP;
		else if(`CHECK_BUSY)
			state <= WAIT_BUSY;
		else
			state <= CMD_FIN;
	end
	WAIT_RESP: begin
		if(cmdTimeout)
			state <= IDLE;
		else if(sdCmd_i_reg == 0)
			state <= RX_DATA;
	end
	RX_DATA: if(bitCounter == `RESP_LENGTH) state <= RX_CRC;
	RX_CRC: if(bitCounter == `RESP_LENGTH + 7) state <= RX_STOP;
	RX_STOP: begin
		if(respIndexErr || respCrcErr)
			state <= IDLE;
		else if(`CHECK_BUSY)
			state <= WAIT_BUSY;
		else
			state <= CMD_FIN;
	end
	WAIT_BUSY: begin
		if(cmdTimeout)
			state <= IDLE;
		else if(!sdBusy)
			state <= CMD_FIN;
	end
	CMD_FIN: state <= IDLE;
	endcase
	
	wire crcOut;
	wire crcEn = (state == TX_DATA) || (state == RX_DATA);
	wire crcClr = rst || !crcEn;
	wire crcDin = (state == TX_DATA)? cmdTxShift[39]: sdCmd_i_reg;
	SDC_CRC7 crc(.clk(clk), .ce(crcEn), .clr(crcClr), .din(crcDin), .crc_out(crcOut));
	
	reg [CMD_TIMEOUT_W-1:0] timeoutCounter = 0;
	
	always @ (posedge clk)
	begin
		sdCmd_i_reg <= sdCmd_i;
	
		case(state)
		TX_DATA, TX_CRC, TX_STOP, TX_CLEAR,
		RX_DATA, RX_CRC, RX_STOP: bitCounter <= bitCounter + 1;
		default: bitCounter <= 0;
		endcase

		if(state == TX_DATA)
			cmdTxShift <= {cmdTxShift[38:0], 1'b1};
		else
			cmdTxShift <= {2'b01, cmdIndex, cmdArgument};

		case(state)
		TX_DATA: sdCmd_o <= cmdTxShift[39];
		TX_CRC:  sdCmd_o <= crcOut;
		default: sdCmd_o <= 1'b1;
		endcase
		
		case(state)
		TX_DATA, TX_CRC, TX_STOP: sdCmd_t <= 1'b1;
		default: sdCmd_t <= 1'b0;
		endcase
		
		if(state == RX_DATA)
			respRxShift <= {respRxShift[118:0], sdCmd_i_reg};
		
		startRx <= (state == CMD_FIN) && `START_DATA_RX;
		startTx <= (state == CMD_FIN) && `START_DATA_TX;
		
		if(rst || cmdStart)
			respCrcErr <= 0;
		else if((state == RX_CRC) && (crcOut != sdCmd_i_reg) && `CHECK_CRC)
			respCrcErr <= 1;
		
		if(rst || cmdStart)
			respIndexErr <= 0;
		else if((state == RX_DATA) && (bitCounter == 7) && (respRxShift[5:0] != cmdIndex) && `CHECK_INDEX)
			respIndexErr <= 1;
		
		if(rst || (state == IDLE))
			timeoutCounter <= 0;
		else if(timeoutCounter != timeoutValue)
			timeoutCounter <= timeoutCounter + 1;
		
		if(rst || cmdStart)
			cmdTimeout <= 0;
		else if(timeoutValue != 0 && timeoutCounter == timeoutValue)
			cmdTimeout <= 1;
	end
	
	wire errorEvent = respIndexErr || respCrcErr || cmdTimeout;
	
	assign interruptEvents = (state == IDLE)? {respIndexErr, respCrcErr, cmdTimeout, errorEvent, !errorEvent}: 5'h0;
	assign response = respRxShift;
	
endmodule
