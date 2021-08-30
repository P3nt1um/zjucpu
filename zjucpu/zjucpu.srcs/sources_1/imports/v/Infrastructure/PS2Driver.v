`timescale 1ns / 1ps
/**
 * PS/2 transceiver. Provides a stream interface similar to AXI-Stream.
 * For proper PS/2 timing, the input clock should run at 100MHz.
 * 
 * @author Yunye Pu
 */
module PS2Driver #(
	parameter PARITY = "ODD"
)(
	input clk, input rst,
	input ps2ClkIn, input ps2DatIn, output ps2ClkOut, output reg ps2DatOut,
	
	output [7:0] rxData, output reg rxValid = 0,
	input [7:0] txData, input txValid, output txReady,
	output reg [2:0] err
);

	localparam STATE_IDLE = 3'h0;
	localparam STATE_RX = 3'h1;
	localparam STATE_TX_INIT = 3'h2;
	localparam STATE_TX = 3'h3;
	localparam STATE_TX_END = 3'h4;
	localparam STATE_TX_WAIT = 3'h5;
	reg [2:0] state = STATE_IDLE;

	wire frameValid;
	wire [10:0] sendData;

	reg [10:0] byteBuf;
	reg [3:0] count;
	reg [1:0] ps2ClkRecord = 2'b11;
	reg [19:0] counter;
	
	assign ps2ClkOut = (state == STATE_TX_INIT)? 1'b0: 1'b1;
	assign rxData = byteBuf[8:1];
	assign txReady = (state == STATE_IDLE);
	
	localparam ERR_NONE = 3'h0;
	localparam ERR_RX_TIMEOUT = 3'h4;
	localparam ERR_RX_PARITY = 3'h5;
	localparam ERR_TX_TIMEOUT = 3'h6;
	localparam ERR_TX_NOACK = 3'h7;
	
	wire ps2ClkFall = (ps2ClkRecord == 2'b10);
	wire shift = (state == STATE_TX_INIT)? (counter == 20'd9_500): ps2ClkFall;//95us after pulling clk low
	
	reg [2:0] nextState;
	always @*
	case(state)
	STATE_IDLE: begin
		if(txValid)
			nextState <= STATE_TX_INIT;
		else if(ps2ClkFall)
			nextState <= STATE_RX;
		else
			nextState <= STATE_IDLE;
	end
	STATE_RX: begin
		if((count == 4'd11) | (counter >= 20'd200_000))//Timeout 2ms
			nextState <= STATE_IDLE;
		else
			nextState <= STATE_RX;
	end
	STATE_TX_INIT: begin
		if(counter >= 20'd10_000)//100us
			nextState <= STATE_TX;
		else
			nextState <= STATE_TX_INIT;
	end
	STATE_TX: begin
		if(count == 4'd11)
			nextState <= STATE_TX_END;
		else if(counter >= 20'd200_000)//Timeout 2ms
			nextState <= STATE_IDLE;
		else
			nextState <= STATE_TX;
	end
	STATE_TX_END: begin
		if((count == 4'd12) | (counter >= 20'd10_000))//100us timeout
			nextState <= STATE_TX_WAIT;
		else
			nextState <= STATE_TX_END;
	end
	STATE_TX_WAIT: begin//Wait for 10 ms before transmitting next byte
		if(ps2ClkFall)
			nextState <= STATE_RX;
		else if(counter >= 20'd1_000_000)
			nextState <= STATE_IDLE;
		else
			nextState <= STATE_TX_WAIT;
	end
	default: nextState <= STATE_IDLE;
	endcase
	
	always @ (posedge clk)
	begin
		ps2ClkRecord <= {ps2ClkRecord[0], ps2ClkIn};
		if(rst)
		begin
			state <= STATE_IDLE;
			err <= ERR_NONE;
			rxValid <= 1'b0;
			counter <= 20'd0;
		end
		else
		begin
			state <= nextState;
			
			if((state != nextState) | (state == STATE_IDLE))
				counter <= 20'd0;
			else
				counter <= counter + 1'b1;

			if((state == STATE_RX) & ((count == 4'd11) | (counter >= 20'd200_000)))
				rxValid <= 1'b1;
			else
				rxValid <= 1'b0;
			
			case(state)
			STATE_RX: begin
				if((count == 4'd11) | (counter >= 20'd200_000))//Timeout 2ms
					err <= (count == 4'd11)? (frameValid? ERR_NONE: ERR_RX_PARITY): ERR_RX_TIMEOUT;
			end
			STATE_TX: begin
				if((count != 4'd11) & (counter >= 20'd200_000))//Timeout 2ms
					err <= ERR_TX_TIMEOUT;
			end
			STATE_TX_END: begin
				if((count == 4'd12) | (counter >= 20'd10_000))//100us timeout
					err <= (counter >= 20'd10_000 | byteBuf[10])? ERR_TX_NOACK: ERR_NONE;
			end
			endcase
			
			if((state != STATE_TX_INIT) & (state != STATE_TX))
				ps2DatOut <= 1'b1;
			else if(shift)
				ps2DatOut <= byteBuf[0];
			
			if((state == STATE_IDLE) & txValid)
				byteBuf <= sendData;
			else if(shift)
				byteBuf <= {ps2DatIn, byteBuf[10:1]};
			
			if(ps2ClkFall)
				count <= count + 1'b1;
			else if(state == STATE_IDLE)
				count <= 4'h0;
		end
	end

	generate
		if(PARITY == "ODD")
		begin: PARITY_ODD
			assign frameValid = ~byteBuf[0] & byteBuf[10] & ^byteBuf[9:1];
			assign sendData = {1'b1, ~^txData, txData, 1'b0};
		end
		else if(PARITY == "EVEN")
		begin: PARITY_EVEN
			assign frameValid = ~byteBuf[0] & byteBuf[10] & ~^byteBuf[9:1];
			assign sendData = {1'b1, ^txData, txData, 1'b0};
		end
		else
		begin: PARITY_NONE
			assign frameValid = ~byteBuf[0] & byteBuf[10];
			assign sendData = {1'b1, 1'b1, txData, 1'b0};
		end
	endgenerate
	
endmodule
