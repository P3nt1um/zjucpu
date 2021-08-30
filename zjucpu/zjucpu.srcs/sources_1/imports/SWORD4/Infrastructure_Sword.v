`timescale 1ns / 1ps
/**
 * SoC infrastructure for SWORD4 platform.
 * Contains clocking and reset logic and basic I/O, including
 * LED, 7-seg display, slide switches, button pad, PS/2 and UART.
 * 
 * @author Yunye Pu
 */
module Infrastructure_Sword #(
	parameter DEBUG = 1'b0,
	parameter PS2 = 1'b1,
	parameter UART = 1'b1
)
(
	input clk, input rstn,//clk is clock output from DDR3 MIG core
	//Clock and reset
	output clk_100M, output clkCPU, output clkVGA, output globlRst,
	//GPIO
	input [15:0] SW, inout [4:0] btnX, inout [4:0] btnY,
	output [7:0] segment, output [1:0] anode,
	inout btnL, input btnR,
	output [1:0] led_sout, output [2:0] seg_sout,
//	inout ps2Clk, inout ps2Dat,
	input ps2Clk, input ps2Dat,
	input uartRx, output uartTx,
	
	//CPU bus interface
	input [31:0] dataInBus, input [31:0] addrBus, input [3:0] weBus,
	input en, output reg [31:0] dataOutBus,
	output ps2Int, output uartInt,
	
	//VGA control signals
	output [31:0] vgaCtrlReg0, output [31:0] vgaCtrlReg1,
	
	//Debug signals
	input [31:0] dbg_dat1,
	input [31:0] dbg_dat2,
	input [31:0] dbg_dat3,
	input [31:0] dbg_dat4,
	input [31:0] dbg_dat5,
	input [31:0] dbg_dat6,
	input [31:0] dbg_dat7,
	input [15:0] dbg_flags
);
	
	wire clkUART;
	reg [31:0] clkdiv;
	
	ClockGen C0(.clk_in1(clk), .clkUART(clkUART), .clk_100M(clk_100M), .clkCPU(clkCPU), .clkVGA(clkVGA));
	always @ (posedge clk_100M)
		clkdiv <= clkdiv + 1'b1;

	//Address allocation:
	//00: switch, read-only.
	//04: button, read-only.
	//08: Seg, R/W.
	//0c: LED, R/W.
	//10: PS/2 data register, R/W
	//14: PS/2 control register, R/W
	//18: UART data register, R/W
	//1c: UART control register, R/W
	//20: VGA cursor control
	//24: VGA graphic mode switch
	//28-fc: reserved
	
	//PS/2 control register:
	//  [5:0]: RX buffer load(R)
	//  [13:0]:TX buffer load(R)
	//  [18:16]: Error code(R)
	//  [31]:  Interrupt enable(RW)
	//UART control register:
	//  [7:0]: RX buffer load(R)
	//  [15:8]:TX buffer load(R)
	//  [18:16]: baud rate(RW)
	//  [31]:  Interrupt enable(RW)

	//Buttonpad and switch
	wire [15:0] switch;
	wire [6:0] button;
	AntiJitter #(.WIDTH(4), .INIT(1'b0)) SWFilter[15:0] (.clk(clkdiv[15]), .I(SW), .O(switch));
	Keypad U1(.clk(clkdiv[15]), .keyX(btnY), .keyY(btnX), .keyCode(button[5:0]), .ready(button[6]));
	AntiJitter #(.WIDTH(4), .INIT(1'b1)) rstFilter (.clk(clkdiv[15]), .I(~rstn), .O(globlRst));
	
	//Arduino basic I/O board: btnL and 7-seg multiplex logic
	reg btnL_reg;
	reg btnR_reg;
	wire btnL_input = (clkdiv[15:14] == clkdiv[17:16]);//clkdiv[15:14] is the scan clock on the 7-seg
	always @ (posedge clkdiv[3])
	begin
		if(btnL_input & (&clkdiv[13:4])) btnL_reg <= ~btnL;
		if(&clkdiv[15:4]) btnR_reg <= ~btnR; //btnR debounce
	end
	assign btnL = btnL_input? 1'bz: 1'b0;

	//LED and SEG
	wire [31:0] segData;
	wire [15:0] ledData;
	wire [31:0] seg_internal, led_internal;
	wire led_oe;
	Seg7Device segDevice(.clkIO(clkdiv[3]), .clkScan(clkdiv[15:14]), .clkBlink(clkdiv[25]), .data(segData),
		.point(8'h0), .LES(8'h0), .sout(seg_sout), .segment(segment), .anode(anode));
	ShiftReg #(.WIDTH(16), .DELAY(12)) ledDevice(.clk(clkdiv[3]), .pdata(ledData), .sout({led_sout, led_oe}));
	
	//Keyboard and UART
	wire [31:0] ps2CtrlReg, uartCtrlReg;
	wire [7:0] ps2DatReg, uartDatReg;
	generate
	if(PS2)
	begin: PS2_DEFINED
		PS2Wrapper #(.PARITY("NONE")) ps2(.clkBus(clkCPU), .clkDevice(clk_100M), .rst(globlRst),
			.din(dataInBus), .we(weBus), .en(en & (addrBus[7:3] == 5'b00010)), .sel(addrBus[2]),
			.datRegOut(ps2DatReg), .ctrlRegOut(ps2CtrlReg), .interrupt(ps2Int),
			.ps2ClkIn(ps2Clk), .ps2DatIn(ps2Dat), .ps2ClkOut(), .ps2DatOut());
	end
	else
	begin: PS2_UNDEFINED
		assign ps2DatReg = 8'h0;
		assign ps2CtrlReg = 32'h0;
		assign ps2Int = 1'b0;
		assign ps2Clk = 1'bz;
		assign ps2Dat = 1'bz;
	end
	
	if(UART)
	begin: UART_DEFINED
		UARTWrapper uart(.clk(clkCPU), .clkUART(clkUART), .rst(globlRst),
			.din(dataInBus), .we(weBus), .en(en & (addrBus[7:3] == 5'b00011)), .sel(addrBus[2]),
			.datRegOut(uartDatReg), .ctrlRegOut(uartCtrlReg), .interrupt(uartInt),
			.uartRx(uartRx), .uartTx(uartTx));
	end
	else
	begin: UART_UNDEFINED
		assign uartDatReg = 8'h0;
		assign uartCtrlReg = 32'h0;
		assign uartInt = 1'b0;
		assign uartTx = 1'bz;
	end
	endgenerate
	
	reg [31:0] dataBus_internal;
	always @*
	begin
		case(addrBus[7:2])
		6'h0: dataBus_internal <= {16'h0, switch};
		6'h1: dataBus_internal <= {22'h0, btnL_reg, btnR_reg, 1'b0, button};
		6'h2: dataBus_internal <= seg_internal;
		6'h3: dataBus_internal <= led_internal;
		6'h4: dataBus_internal <= {24'h0, ps2DatReg};
		6'h5: dataBus_internal <= ps2CtrlReg;
		6'h6: dataBus_internal <= {24'h0, uartDatReg};
		6'h7: dataBus_internal <= uartCtrlReg;
		6'h8: dataBus_internal <= vgaCtrlReg0;
		6'h9: dataBus_internal <= vgaCtrlReg1;
		default: dataBus_internal <= 32'h0;
		endcase
	end
	always @ (posedge clkCPU)
	begin
		if(globlRst)
			dataOutBus <= 32'h0;
		else
			dataOutBus <= dataBus_internal;
	end
	GPIOReg #(.ADDR(6'h2)) regSeg(.clk(clkCPU), .rst(globlRst), .en(en),
		.addr(addrBus[7:2]), .din(dataInBus), .we(weBus), .dout(seg_internal));
	GPIOReg #(.ADDR(6'h3)) regLED(.clk(clkCPU), .rst(globlRst), .en(en),
		.addr(addrBus[7:2]), .din(dataInBus), .we(weBus), .dout(led_internal));
	GPIOReg #(.ADDR(6'h8)) regVGA0(.clk(clkCPU), .rst(globlRst), .en(en),
		.addr(addrBus[7:2]), .din(dataInBus), .we(weBus), .dout(vgaCtrlReg0));
	GPIOReg #(.ADDR(6'h9)) regVGA1(.clk(clkCPU), .rst(globlRst), .en(en),
		.addr(addrBus[7:2]), .din(dataInBus), .we(weBus), .dout(vgaCtrlReg1));
	
	generate
	if(DEBUG)
	begin: DEBUG_defined
		reg [31:0] seg_dbgData;
		always @*
		begin
			case(switch[15:13])
			3'h0: seg_dbgData <= seg_internal;
			3'h1: seg_dbgData <= dbg_dat1;
			3'h2: seg_dbgData <= dbg_dat2;
			3'h3: seg_dbgData <= dbg_dat3;
			3'h4: seg_dbgData <= dbg_dat4;
			3'h5: seg_dbgData <= dbg_dat5;
			3'h6: seg_dbgData <= dbg_dat6;
			3'h7: seg_dbgData <= dbg_dat7;
			endcase
		end
//		assign clkCPU = switch[12]? (button == 6'b100000): clkCPU_internal;
		assign segData = seg_dbgData;
		assign ledData = |switch[15:13]? dbg_flags: led_internal;
	end
	else
	begin: DEBUG_undefined
		assign ledData = led_internal[15:0];
		assign segData = seg_internal;
	end
	endgenerate
	
endmodule

module GPIOReg #(
	parameter ADDR_WIDTH = 6,
	parameter ADDR = 6'h0
)(
	input clk, input rst,
	input [ADDR_WIDTH-1:0] addr, input [31:0] din,
	input [3:0] we, input en, output reg [31:0] dout
);
	always @ (posedge clk)
	begin
		if(rst)
			dout <= 32'h0;
		else if(en & (addr == ADDR))
		begin
			if(we[0]) dout[ 7: 0] <= din[ 7: 0];
			if(we[1]) dout[15: 8] <= din[15: 8];
			if(we[2]) dout[23:16] <= din[23:16];
			if(we[3]) dout[31:24] <= din[31:24];
		end
	end

endmodule
