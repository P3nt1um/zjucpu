`timescale 1ns / 1ps
/**
 * Intergrates the PS/2 driver and receive & transmit buffers
 * to form a port attachable to SoC bus.
 * 
 * @author Yunye Pu
 */
module PS2Wrapper #(
	parameter FIFO_DEPTH = 5,
	parameter PARITY = "ODD"
)(
	input clkBus, input clkDevice, input rst,
	input [31:0] din, input [3:0] we, input en, input sel,
	output [7:0] datRegOut, output [31:0] ctrlRegOut,
	output interrupt,
	input ps2ClkIn, input ps2DatIn,
	output ps2ClkOut, output ps2DatOut
);

	wire [7:0] rxData, txData;
	wire rxValid, txValid, txReady;
	reg intEn;
	
	PS2Driver #(.PARITY(PARITY)) U0 (
		.clk(clkDevice), .rst(rst),
		.ps2ClkIn(ps2ClkIn), .ps2DatIn(ps2DatIn),
		.ps2ClkOut(ps2ClkOut), .ps2DatOut(ps2DatOut),
		
		.rxData(rxData), .rxValid(rxValid), .err(ctrlRegOut[18:16]),
		.txData(txData), .txValid(txValid), .txReady(txReady)
	);
	
	AxisFifo #(.WIDTH(8), .DEPTH_BITS(FIFO_DEPTH), .SYNC_STAGE_I(0), .SYNC_STAGE_O(1))
		txBuffer (.s_rst(rst), .m_rst(rst), .s_load(ctrlRegOut[12:8]), .m_load(),
		.s_clk(clkBus), .s_valid(we[0] & en & ~sel), .s_ready(), .s_data(din[7:0]),
		.m_clk(clkDevice), .m_valid(txValid), .m_ready(txReady), .m_data(txData)
	);
	
	AxisFifo #(.WIDTH(8), .DEPTH_BITS(FIFO_DEPTH), .SYNC_STAGE_I(0), .SYNC_STAGE_O(1))
		rxBuffer (.s_rst(rst), .m_rst(rst), .s_load(), .m_load(ctrlRegOut[4:0]),
		.s_clk(clkDevice), .s_valid(rxValid), .s_ready(), .s_data(rxData),
		.m_clk(clkBus), .m_valid(rxReady), .m_ready(~|we & en & ~sel), .m_data(datRegOut)
	);
	
	assign interrupt = intEn & rxReady;
	
	always @ (posedge clkBus)
	begin
		if(rst)
			intEn <= 1'b1;
		else if(we[3] & en & sel)
			intEn <= din[31];
	end
	
	assign ctrlRegOut[31] = intEn;
	assign ctrlRegOut[30:19] = 0;
	assign ctrlRegOut[15:13] = 0;
	assign ctrlRegOut[7:5] = 0;

endmodule
