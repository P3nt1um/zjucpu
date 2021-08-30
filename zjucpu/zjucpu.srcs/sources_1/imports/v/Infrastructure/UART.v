`timescale 1ns / 1ps
/**
 * UART transceiver with configurable baud rate.
 * 
 * @author Yunye Pu
 */
module UART_TX #(
	parameter COUNTER_MSB = 9
)(
	input clk, input [COUNTER_MSB:0] period,
	input s_valid, input [7:0] s_data, output reg s_ready = 1'b1,
	output TX
);
	reg [COUNTER_MSB:0] counter = 0;
	reg [9:0] shift;

	always @ (posedge clk)
	if(s_ready)
	begin
		if(s_valid)
		begin
			s_ready <= 1'b0;
			shift <= {1'b1, s_data, 1'b0};
		end
	end
	else
	begin
		if(counter == period)
			counter <= 0;
		else
			counter <= counter + 1'b1;
		if(counter == period)
		begin
			shift <= {1'b0, shift[9:1]};
			if(shift == 10'b0000000001) s_ready <= 1'b1;
		end
	end
	assign TX = s_ready? 1'b1: shift[0];
	
endmodule

module UART_RX #(
	parameter COUNTER_MSB = 9
) (
	input clk, input [COUNTER_MSB-1:0] halfPeriod,
	output reg m_valid, output reg [7:0] m_data,
	input RX
);
	reg [COUNTER_MSB:0] counter = 0;
	reg [8:0] shift = 9'h0;
	reg inRX = 1'b0;
	
	always @ (posedge clk)
	if(inRX)
	begin
		if(counter == {halfPeriod, 1'b1})
			counter <= 0;
		else
			counter <= counter + 1'b1;
		
		if(counter == {halfPeriod, 1'b1})
		begin
			m_valid <= shift[0] & RX;//Check stop bit
			if(shift[0])
			begin
				m_data <= shift[8:1];
				shift <= 8'h0;
				inRX <= 1'b0;
			end
			else
				shift <= {RX, shift[8:1]};
		end
	end
	else
	begin
		m_valid <= 1'b0;
		shift <= 9'b100000000;
		inRX <= (counter == {1'b0, halfPeriod});
		if(counter == {1'b0, halfPeriod})
			counter <= 0;
		else if(RX)
			counter <= 0;
		else
			counter <= counter + 1'b1;
	end

endmodule
