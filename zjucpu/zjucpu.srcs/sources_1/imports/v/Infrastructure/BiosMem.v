`timescale 1ns / 1ps
/**
 * The RAM storing the bootloader. Can be reprogrammed via UART.
 * 
 * @author Yunye Pu
 */
module BiosMem(
	input clka, input [11:0] addra, input [31:0] dina,
	input [3:0] wea, input ena, output reg [31:0] douta,
	input clkb, input [11:0] addrb, input [31:0] dinb,
	input [3:0] web, input enb, output reg [31:0] doutb,
	input clkProg, input uartRx, input progEN
);
	
	reg [31:0] data[0:4095];
	
	wire _enb;
	wire [3:0] _web;
	wire [11:0] _addrb;
	wire [31:0] _dinb;
	
	wire [7:0] uartData, progData;
	wire uartValid, progValid;
	
	always @ (posedge clka)
	if(ena)
		douta <= data[addra];
	
	always @ (posedge clkb)
	if(_enb)
	begin
		if(_web[0]) data[_addrb][ 7: 0] = _dinb[ 7: 0];
		if(_web[1]) data[_addrb][15: 8] = _dinb[15: 8];
		if(_web[2]) data[_addrb][23:16] = _dinb[23:16];
		if(_web[3]) data[_addrb][31:24] = _dinb[31:24];
		doutb <= data[_addrb];
	end
	
	initial
		$readmemh("/home/pentium/git/ZJUNIX-SoC/src/coe/bootstrap.hex", data);

	UART_RX #(.COUNTER_MSB(9)) U0(.clk(clkProg), .halfPeriod(9'd433), .RX(uartRx),
		.m_data(uartData), .m_valid(uartValid));
		
	AxisFifo #(.WIDTH(8), .DEPTH_BITS(5), .SYNC_STAGE_I(0), .SYNC_STAGE_O(1))
		cdcFifo ( .s_rst(0), .m_rst(0),
		.s_clk(clkProg), .s_valid(uartValid), .s_ready(),     .s_data(uartData), .s_load(),
		.m_clk(clkb),    .m_valid(progValid), .m_ready(1'b1), .m_data(progData), .m_load()
	);
	
	ReprogInterface #(.ADDR_WIDTH(12)) U1(.clkMem(clkb),
		.progData(progData), .progValid(progValid), .progEn(progEN),
		.addrIn(addrb), .dataIn(dinb), .weIn(web), .enIn(enb),
		.addrOut(_addrb), .dataOut(_dinb), .weOut(_web), .enOut(_enb));

endmodule
