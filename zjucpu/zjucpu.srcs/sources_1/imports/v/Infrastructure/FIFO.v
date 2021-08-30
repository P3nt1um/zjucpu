`timescale 1ns / 1ps
/**
 * Simple FIFO module with AXI-Stream interface and supports asynchronous clocking.
 * Packet mode is not supported.
 * 
 * @author Yunye Pu
 */
module AxisFifo #(
	parameter WIDTH = 8,
	parameter DEPTH_BITS = 7,
	parameter SYNC_STAGE_I = 0,
	parameter SYNC_STAGE_O = 1
) (
	input s_clk, input s_rst, input s_valid, output s_ready,
	input [WIDTH-1:0] s_data, output [DEPTH_BITS-1:0] s_load,
	input m_clk, input m_rst, output m_valid, input m_ready,
	output reg [WIDTH-1:0] m_data, output [DEPTH_BITS-1:0] m_load
);
	localparam DEPTH = 1 << DEPTH_BITS;
	reg [WIDTH-1:0] data[DEPTH-1:0];
	
	//s_clk(write) domain logic
	reg [DEPTH_BITS-1:0] wrPtr = 0;
	wire [DEPTH_BITS-1:0] rdPtrSync;
	always @ (posedge s_clk)
	if(s_rst)
		wrPtr <= {DEPTH_BITS{1'b0}};
	else if(s_valid & s_ready)
	begin
		wrPtr <= wrPtr + 1'b1;
		data[wrPtr] <= s_data;
	end
	wire [DEPTH_BITS-1:0] wrPtr_add1 = wrPtr + 1;
	assign s_ready = wrPtr_add1 != rdPtrSync;
	assign s_load = wrPtr - rdPtrSync;
	
	//m_clk(read) domain logic
	reg [DEPTH_BITS-1:0] rdPtr = 0;
	wire [DEPTH_BITS-1:0] wrPtrSync;
	always @ (posedge m_clk)
	if(m_rst)
		rdPtr = {DEPTH_BITS{1'b0}};
	else
	begin
		if(m_valid & m_ready)
			rdPtr = rdPtr + 1'b1;
		m_data <= data[rdPtr];
	end
	assign m_valid = (rdPtr != wrPtrSync);
	assign m_load = wrPtrSync - rdPtr;
	
	ClockDomainCross #(.I_REG(SYNC_STAGE_I), .O_REG(SYNC_STAGE_O))
		rdPtrCross[DEPTH_BITS-1:0] (.clki(m_clk), .clko(s_clk), .i(rdPtr), .o(rdPtrSync));

	ClockDomainCross #(.I_REG(SYNC_STAGE_I), .O_REG(SYNC_STAGE_O))
		wrPtrCross[DEPTH_BITS-1:0] (.clki(s_clk), .clko(m_clk), .i(wrPtr), .o(wrPtrSync));
	
endmodule
