`timescale 1ns / 1ps
/**
 * Intergrates the UART transceiver and receive & transmit buffers
 * to form a port attachable to SoC bus.
 * clkUART should run at 57.6MHz to get a default baud rate 115200.
 * 
 * @author Yunye Pu
 */
module UARTWrapper #(
	parameter DEPTH = 7
)(
	input clk, input clkUART, input rst,
	input [31:0] din, input [3:0] we, input en, input sel,
	output [7:0] datRegOut, output [31:0] ctrlRegOut,
	output interrupt,
	input uartRx, output uartTx
);
	
	wire [7:0] uart_s_data, uart_m_data;
	wire uart_s_valid, uart_m_valid, uart_s_ready;

	reg [14:0] uart_period;
	reg [7:0] baudReg = 1;
	wire [7:0] baudReg_sync;
	always @ (posedge clkUART)
		uart_period <= baudReg_sync * 125 + 124;
	
	reg intEn = 1'b0;
	wire rxReady;
	assign interrupt = rxReady & intEn;
	
	UART_TX #(.COUNTER_MSB(15)) tx(.clk(clkUART), .period({uart_period, 1'b1}), .TX(uartTx),
		.s_valid(uart_s_valid), .s_data(uart_s_data), .s_ready(uart_s_ready));
	UART_RX #(.COUNTER_MSB(15)) rx(.clk(clkUART), .halfPeriod(uart_period), .RX(uartRx),
		.m_valid(uart_m_valid), .m_data(uart_m_data));

	AxisFifo #(.WIDTH(8), .DEPTH_BITS(8), .SYNC_STAGE_I(1), .SYNC_STAGE_O(1))
		txBuffer (.s_rst(rst), .m_rst(rst), .s_load(ctrlRegOut[15:8]), .m_load(),
		.s_clk(clk), .s_valid(we[0] & en & ~sel), .s_ready(), .s_data(din[7:0]),
		.m_clk(clkUART), .m_valid(uart_s_valid), .m_ready(uart_s_ready), .m_data(uart_s_data)
	);
	
	AxisFifo #(.WIDTH(8), .DEPTH_BITS(8), .SYNC_STAGE_I(1), .SYNC_STAGE_O(1))
		rxBuffer (.s_rst(rst), .m_rst(rst), .s_load(), .m_load(ctrlRegOut[7:0]),
		.s_clk(clkUART), .s_valid(uart_m_valid), .s_ready(), .s_data(uart_m_data),
		.m_clk(clk), .m_valid(rxReady), .m_ready(~|we & en & ~sel), .m_data(datRegOut)
	);
	
	ClockDomainCross #(1, 1) baudRegCross[7:0] (.clki(clk), .clko(clkUART), .i(baudReg), .o(baudReg_sync));
	
	assign ctrlRegOut[31] = intEn;
	assign ctrlRegOut[30:24] = 0;
	assign ctrlRegOut[23:16] = baudReg;
	
	always @ (posedge clk)
	begin
		if(rst)
		begin
			intEn <= 1'b1;
			baudReg <= 8'h1;
		end
		else if(en & sel)
		begin
			if(we[3])
				intEn <= din[31];
			if(we[2])
				baudReg <= din[23:16];
		end
	end
	
endmodule
