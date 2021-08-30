`timescale 1ns / 1ps
/**
 * DMA controller for adapting stream interface to Wishbone master interface.
 * 
 * @author Yunye Pu
 */
module SDC_DMA (
	input wb_clk, input wb_rst,
	input sd_clk, input sd_rst,
	//Wishbone master interface
	output [31:0] wb_addr,
	output [31:0] wb_dout, input [31:0] wb_din,
	output [3:0] wb_dm, output wb_cyc, output wb_stb,
	output wb_we, input wb_ack,
	//SD data stream, synchronous to sd_clk
	output [31:0] sd_tx_data, output sd_tx_valid, input sd_tx_ready,
	input [31:0] sd_rx_data, input [3:0] sd_rx_keep,
	input sd_rx_valid, output sd_rx_ready,
	//Control signals
	input tx_en, input rx_en, input [31:0] base_addr
);
	
	wire wb_tx_ready;
	wire wb_rx_valid;
	wire fifo_rst;
	reg [29:0] wb_addr_reg;
	
	AxisFifo #(32, 5, 1, 1) txFifo(
		.s_load(), .m_load(),
		.s_clk(wb_clk), .s_rst(wb_rst), .s_data(wb_din), .s_ready(wb_tx_ready),
		.s_valid(tx_en & wb_cyc & wb_stb & wb_ack),
		.m_clk(sd_clk), .m_rst(sd_rst), .m_data(sd_tx_data),
		.m_valid(sd_tx_valid), .m_ready(sd_tx_ready));
	
	AxisFifo #(36, 5, 1, 1) rxFifo(
		.s_load(), .m_load(),
		.s_clk(sd_clk), .s_rst(sd_rst), .s_data({sd_rx_keep, sd_rx_data}),
		.s_ready(sd_rx_ready), .s_valid(sd_rx_valid),
		.m_clk(wb_clk), .m_rst(wb_rst), .m_data({wb_dm, wb_dout}),
		.m_valid(wb_rx_valid), .m_ready(rx_en & wb_cyc & wb_stb & wb_ack));
	
	assign wb_cyc = (tx_en & wb_tx_ready) | (rx_en & wb_rx_valid);
	assign wb_stb = wb_cyc;
	assign wb_we = rx_en & wb_rx_valid;
	assign fifo_rst = ~(tx_en | rx_en);
	assign wb_addr = {wb_addr_reg, 2'b00};
	
	always @ (posedge wb_clk)
	if(wb_rst)
		wb_addr_reg <= 0;
	else if(wb_cyc & wb_stb & wb_ack)
		wb_addr_reg <= wb_addr_reg + 1;
	else if(fifo_rst)
		wb_addr_reg <= base_addr[31:2];
	
endmodule


