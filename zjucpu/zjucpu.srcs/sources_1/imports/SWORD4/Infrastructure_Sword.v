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
	//clk is clock output from DDR3 MIG core
	input clk,//时钟源，来自DDR3而不是板载时钟源
	input rstn,//复位按钮按下产生的原始信号，需要进行除颤

	//Clock and reset
	output clk_100M,
	output clkCPU,
	output clkVGA,
	output globlRst,//除颤后作为全局复位信号

	//GPIO
	//开关
	input [15:0] SW,

	//按钮
	inout [4:0] btnX,
	inout [4:0] btnY,

	//
	output [7:0] segment,
	output [1:0] anode,

	//Arduino子板上的左右两个按钮
	inout btnL,
	input btnR,

	//
	output [1:0] led_sout,
	output [2:0] seg_sout,

//	inout ps2Clk,
//	inout ps2Dat,
	input ps2Clk,
	input ps2Dat,

	//UART
	input uartRx,
	output uartTx,
	
	//CPU bus interface
	//处理器送上总线将写入某一个设备的数据
	input [31:0] dataInBus,
	//处理器指定的将操作的设备的地址
	input [31:0] addrBus,
	//字节选通写使能信号，全零代表读取
	input [3:0] weBus,
	input en,
	//最终决定送上总线由处理器接收的数据
	output reg [31:0] dataOutBus,
	
	//PS2中断信号
	output ps2Int,

	//UART中断信号
	output uartInt,
	
	//VGA control signals
	output [31:0] vgaCtrlReg0,
	output [31:0] vgaCtrlReg1,
	
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

ClockGen C0 (
	.clk_in1(clk),//时钟源

	//由时钟源生成的各个驱动时钟信号
	.clkUART(clkUART),//驱动UART
	.clk_100M(clk_100M),//100MHz的时钟信号
	.clkCPU(clkCPU),//驱动处理器
	.clkVGA(clkVGA)//驱动VGA
);

//由100MHz的时钟信号进行一系列的分频使用
always @ (posedge clk_100M)
	clkdiv <= clkdiv + 1'b1;
	
/*
Address allocation:
00: switch, read-only.
04: button, read-only.
08: Seg, R/W.
0c: LED, R/W.
10: PS/2 data register, R/W
14: PS/2 control register, R/W
18: UART data register, R/W
1c: UART control register, R/W
20: VGA cursor control
24: VGA graphic mode switch
28-fc: reserved

PS/2 control register:
 [5:0]: RX buffer load(R)
 [13:0]:TX buffer load(R)
 [18:16]: Error code(R)
 [31]:  Interrupt enable(RW)

UART control register:
 [7:0]: RX buffer load(R)
 [15:8]:TX buffer load(R)
 [18:16]: baud rate(RW)
 [31]:  Interrupt enable(RW)
*/

//Buttonpad and switch


//16个开关除颤
wire [15:0] switch;
AntiJitter #(
	.WIDTH(4),
	.INIT(1'b0)
) SWFilter[15:0] (
	.clk(clkdiv[15]),
	//开关状态产生的原始信号
	.I(SW),
	//经除颤后可被实际使用的开关信号
	.O(switch)
);

//按钮判定逻辑，内含除颤
wire [6:0] button;
Keypad U1 (
	.clk(clkdiv[15]),
	.keyX(btnY),
	.keyY(btnX),
	.keyCode(button[5:0]),
	.ready(button[6])
);

//复位按钮除颤
AntiJitter #(
	.WIDTH(4),
	.INIT(1'b1)
) rstFilter (
	.clk(clkdiv[15]),
	//复位按钮直接传来的信号
	.I(~rstn),
	//除颤后作为全局复位信号发出
	.O(globlRst)
);

//Arduino basic I/O board: btnL and 7-seg multiplex logic
reg btnL_reg;
reg btnR_reg;

//clkdiv[15:14] is the scan clock on the 7-seg
//扫描Arduino七段数码管的时钟是clkdiv[15:14]

//
wire btnL_input = (clkdiv[15:14] == clkdiv[17:16]);

always @ (posedge clkdiv[3]) begin
	if (btnL_input & (&clkdiv[13:4]))
		btnL_reg <= ~btnL;//左按键除颤
	if (&clkdiv[15:4])
		btnR_reg <= ~btnR;//右按键除颤
end

assign btnL = btnL_input? 1'bz: 1'b0;

//LED and SEG
wire [31:0] segData;
wire [15:0] ledData;
wire [31:0] seg_internal, led_internal;
wire led_oe;

Seg7Device segDevice (
	.clkIO(clkdiv[3]),
	.clkScan(clkdiv[15:14]),
	.clkBlink(clkdiv[25]),
	.data(segData),
	.point(8'h0),
	.LES(8'h0),
	.sout(seg_sout),
	.segment(segment),
	.anode(anode)
);

//LED接收串行数据，故需要移位寄存器将并行数据进行转换
ShiftReg #(
	.WIDTH(16),
	.DELAY(12)
) ledDevice (
	.clk(clkdiv[3]),
	//输入16位并行数据，每一位对应一个LED灯
	.pdata(ledData),
	//
	.sout({led_sout, led_oe})
);

//Keyboard and UART
//控制寄存器
wire [31:0] ps2CtrlReg, uartCtrlReg;
//数据寄存器
wire [7:0] ps2DatReg, uartDatReg;

generate
if (PS2) begin: PS2_DEFINED
	PS2Wrapper #(
		.PARITY("NONE")
	) ps2 (
		.clkBus(clkCPU),
		.clkDevice(clk_100M),

		.rst(globlRst),

		.din(dataInBus),
		.we(weBus),
		.en(en & (addrBus[7:3] == 5'b00010)),
		.sel(addrBus[2]),
		.datRegOut(ps2DatReg),
		.ctrlRegOut(ps2CtrlReg),

		.interrupt(ps2Int),

		.ps2ClkIn(ps2Clk),
		.ps2DatIn(ps2Dat),
		.ps2ClkOut(),
		.ps2DatOut()
	);
end else begin: PS2_UNDEFINED
	assign ps2DatReg = 8'h0;
	assign ps2CtrlReg = 32'h0;
	assign ps2Int = 1'b0;
	assign ps2Clk = 1'bz;
	assign ps2Dat = 1'bz;
end

if (UART) begin: UART_DEFINED
	UARTWrapper uart (
		.clk(clkCPU),
		.clkUART(clkUART),
		.rst(globlRst),
		.din(dataInBus),
		.we(weBus),
		.en(en & (addrBus[7:3] == 5'b00011)),
		.sel(addrBus[2]),
		.datRegOut(uartDatReg),
		.ctrlRegOut(uartCtrlReg),
		.interrupt(uartInt),
		.uartRx(uartRx),
		.uartTx(uartTx)
	);
end else begin: UART_UNDEFINED
	assign uartDatReg = 8'h0;
	assign uartCtrlReg = 32'h0;
	assign uartInt = 1'b0;
	assign uartTx = 1'bz;
end
endgenerate

//根据CPU总线给出的总线地址判定接收哪一个设备的数据
reg [31:0] dataBus_internal;
always @* begin
	//由于取出的数据长度32位，故每条数据都是4字节对其的
	//又因为按字节寻址，地址从第2位算起
	case (addrBus[7:2])
	//16个开关，高16位不用用零填充
	6'h0: dataBus_internal <= {16'h0, switch};
	//Arduino左右按钮以及板载按钮
	6'h1: dataBus_internal <= {22'h0, btnL_reg, btnR_reg, 1'b0, button};
	//板载数码管
	6'h2: dataBus_internal <= seg_internal;
	//板载LED
	6'h3: dataBus_internal <= led_internal;
	//PS2数据寄存器
	6'h4: dataBus_internal <= {24'h0, ps2DatReg};
	//PS2控制寄存器
	6'h5: dataBus_internal <= ps2CtrlReg;
	//UART数据寄存器
	6'h6: dataBus_internal <= {24'h0, uartDatReg};
	//UART控制寄存器
	6'h7: dataBus_internal <= uartCtrlReg;
	//VGA控制寄存器1
	6'h8: dataBus_internal <= vgaCtrlReg0;
	//VGA控制寄存器2
	6'h9: dataBus_internal <= vgaCtrlReg1;
	default: dataBus_internal <= 32'h0;
	endcase
end

//最终将数据呈送给处理器，当且仅当未全局复位
always @ (posedge clkCPU) begin
	if (globlRst)
		dataOutBus <= 32'h0;
	else
		dataOutBus <= dataBus_internal;
end

//GPIO

//数码管
GPIOReg #(
	.ADDR(6'h2)
) regSeg (
	.clk(clkCPU),
	.rst(globlRst),

	.en(en),
	.addr(addrBus[7:2]),
	.din(dataInBus),
	.we(weBus),

	//取出数码管数据
	.dout(seg_internal)
);

//LED
GPIOReg #(
	.ADDR(6'h3)
) regLED (
	.clk(clkCPU),
	.rst(globlRst),
	.en(en),

	.addr(addrBus[7:2]),
	.din(dataInBus),
	.we(weBus),

	//取出LED数据
	.dout(led_internal)
);

//VGA控制寄存器0
GPIOReg #(
	.ADDR(6'h8)
) regVGA0 (
	.clk(clkCPU),
	.rst(globlRst),
	.en(en),

	.addr(addrBus[7:2]),
	.din(dataInBus),
	.we(weBus),

	//取出控制寄存器0数据
	.dout(vgaCtrlReg0)
);

//VGA控制寄存器1
GPIOReg #(
	.ADDR(6'h9)
) regVGA1 (
	.clk(clkCPU),
	.rst(globlRst),
	.en(en),

	.addr(addrBus[7:2]),
	.din(dataInBus),
	.we(weBus),

	//取出控制寄存器1数据
	.dout(vgaCtrlReg1)
);

generate
if (DEBUG) begin: DEBUG_defined
	reg [31:0] seg_dbgData;
	always @* begin
		case (switch[15:13])
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

//	assign clkCPU = switch[12]? (button == 6'b100000): clkCPU_internal;
	assign segData = seg_dbgData;
	assign ledData = |switch[15:13]? dbg_flags: led_internal;
end else begin: DEBUG_undefined
	assign ledData = led_internal[15:0];
	assign segData = seg_internal;
end
endgenerate

endmodule

//GPIO寄存器，一个寄存器32位
//本质上与通用寄存器的原理相同，只是GPIO寄存器可以逐个使用
module GPIOReg #(
	//GPIO寻址地址宽度
	parameter ADDR_WIDTH = 6,
	//该GPIO设备的地址
	parameter ADDR = 6'h0
) (
	input clk,//GPIO驱动时钟信号
	input rst,//GPIO复位信号

	//总线给出的寻址地址
	input [ADDR_WIDTH-1:0] addr,
	//将写入给定地址的32位数据
	input [31:0] din,
	//字节选通写使能
	input [3:0] we,
	//使能GPIO设备
	input en,
	//从给定地址读出的32位数据
	output reg [31:0] dout
);

always @ (posedge clk) begin
	if (rst)
		//复位该GPIO设备，此时读出的数据一律为零
		dout <= 32'h0;
	else if (en & (addr == ADDR)) begin
		//比较总线给出的地址是否正是该GPIO寄存器的地址
		//若是则代表总线请求访问该GPIO寄存器

		//dout本身为reg，将保存GPIO寄存器的数据
		//当被字节选通后根据din更新reg中的数据
		//处理器只需直接读取dout端口即可得到当前该GPIO寄存器的最新数据
		if(we[0]) dout[ 7: 0] <= din[ 7: 0];
		if(we[1]) dout[15: 8] <= din[15: 8];
		if(we[2]) dout[23:16] <= din[23:16];
		if(we[3]) dout[31:24] <= din[31:24];
	end
end

endmodule
