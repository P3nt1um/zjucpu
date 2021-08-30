`timescale 1ns / 1ps
/**
* The top module of SoC project.
* 
* @auther Yunye Pu
*/
module Top (
	output[5:0] gpio_o,

	//	input clk, 
	input rstn,

	//系统时钟
	input sysclk_p,
	input sysclk_n,

	//拨动开关
	input [15:0] SW,

	//按钮
	inout [4:0] btnX,
	inout [4:0] btnY,

	//
	output [2:0] seg_sout,

	output [1:0] led_sout,

	//直接发送给VGA接口
	output [11:0] VGAColor,//最终确定填入当前像素的颜色
	output HSync,
	output VSync,

	//PS2
	inout ps2Clk,
	inout ps2Dat,

	//UART
	input uartRx,
	output uartTx,

	//SD
	inout [3:0] sdDat,
	inout sdCmd,
	input sdCd,
	output sdClk,

	//Arduino basic I/O
	output [7:0] segment,
	output [1:0] anode,
	output [7:0] LED,
	inout btnL,
	input btnR,

	//DDR3 interface
	output [13:0] ddr3_addr,
	output [2:0] ddr3_ba,
	output ddr3_cas_n,
	output [0:0] ddr3_ck_n,
	output [0:0] ddr3_ck_p,
	output [0:0] ddr3_cke,
	output ddr3_ras_n,
	output ddr3_reset_n,
	output ddr3_we_n,
	inout [31:0] ddr3_dq,
	inout [3:0] ddr3_dqs_n,
	inout [3:0] ddr3_dqs_p,
	output ddr3_cs_n,
	output [3:0] ddr3_dm,
	output [0:0] ddr3_odt,
	output sdRst
);

assign gpio_o = 6'b101010;

//Unused I/O signals
wire buzzer;

//Clock and reset signal
wire clk_100M, clkCPU, clkVGA, clkDDR, globlRst;

//IBus signals
wire [31:0] addrIBus, dinIBus;

//DBus signals
wire [31:0] addrDBus, doutDBus, dinDBus;
wire stbDBus, weDBus;
wire [3:0] dmDBus;

//Wishbone DDR3 signals
wire [31:0] addrDDR;
wire [511:0] doutDDR, dinDDR;
wire stbDDR, cycDDR, weDDR, ackDDR;
wire [63:0] dmDDR;

//Peripheral signals
wire [31:0] progMemData, cVramData, gVramData, ioData, sdCtrlData, sdDataData;
wire progMemEN, cVramEN, gVramEN, ioEN, sdCtrlEN, sdDataEN;

//传入处理器的中断编号
wire [4:0] cpuInterrupt;

//Debug signals
wire [31:0] dbg_vPC, dbg_vAddr;
wire [2:0] dbg_ddrState;

//VGA control registers
wire [31:0] vgaCtrlReg0, vgaCtrlReg1;


//处理器与cache组成的子系统
CPUCacheTop core (
	.clkCPU(clkCPU),
	.clkDDR(clkDDR),
	.rst(globlRst),

	.interrupt(cpuInterrupt),

	.addrIBus(addrIBus),
	.dinIBus(dinIBus),
	.stbIBus(),
	.nakIBus(1'b0),
	
	.addrDBus(addrDBus),
	.doutDBus(doutDBus),
	.dinDBus(dinDBus),
	.stbDBus(stbDBus),
	.weDBus(weDBus),
	.dmDBus(dmDBus),
	.nakDBus(1'b0),

	.addrDDR(addrDDR),
	.doutDDR(doutDDR),
	.dinDDR(dinDDR),
	.dmDDR(dmDDR),
	.cycDDR(cycDDR),
	.stbDDR(stbDDR),
	.weDDR(weDDR),
	.ackDDR(ackDDR),
	
	.dbg_vPC(dbg_vPC),
	.dbg_vAddr(dbg_vAddr),
	.dbg_IDPC(),
	.dbg_EXPC(),
	.dbg_MEMPC()
);

//Sword开发板上的基础设施子系统	
Infrastructure_Sword #(
	.DEBUG(1'b1)
) infrastructure (
	.clk(clkDDR),
	.rstn(rstn),
	.clk_100M(clk_100M),
	.clkCPU(clkCPU),
	.clkVGA(clkVGA),

	.globlRst(globlRst),

	.SW(SW),
	
	.btnX(btnX),
	.btnY(btnY),
	.btnL(btnL),
	.btnR(btnR),

	.segment(segment),
	.anode(anode),

	.led_sout(led_sout),
	
	.seg_sout(seg_sout),

	//PS2键盘
	.ps2Clk(ps2Clk),
	.ps2Dat(ps2Dat),

	//UART
	.uartRx(uartRx),
	.uartTx(uartTx),

	//	
	.vgaCtrlReg0(vgaCtrlReg0),
	.vgaCtrlReg1(vgaCtrlReg1),
	
	.dataInBus(doutDBus),
	.addrBus(addrDBus),
	.weBus(dmDBus),
	.en(ioEN),
	.dataOutBus(ioData),
	
	.ps2Int(cpuInterrupt[0]),
	
	.uartInt(cpuInterrupt[1]),
	
	.dbg_dat1(addrIBus),
	.dbg_dat2(dbg_vPC),
	.dbg_dat3(dinIBus),
	.dbg_dat4(addrDBus),
	.dbg_dat5(dbg_vAddr),
	.dbg_dat6(doutDBus),
	.dbg_dat7(dinDBus),
//	.dbg_flags({dmDBus, stbDBus, progMemEN, cVramEN, gVramEN, ioEN, sdCtrlEN, sdDataEN, cpuInterrupt[4:0]})
	.dbg_flags({dmDBus, stbDBus, stbDDR, cycDDR, weDDR, ackDDR, dbg_ddrState, cpuInterrupt[3:0]})
);

assign LED = {stbDBus, stbDDR, cycDDR, weDDR, ackDDR, dbg_ddrState};


//VGA模块，与显示器相连
VGADevice
#(
	.GRAPHIC_VRAM(0)
) vga (
	.clkVGA(clkVGA),
	.clkMem(clkCPU),

	.ctrl0(vgaCtrlReg0),
	.ctrl1(vgaCtrlReg1),

	.dataInBus(doutDBus),
	.addrBus(addrDBus),
	.weBus(dmDBus),
	
	.en_Graphic(gVramEN),
	.en_Char(cVramEN),
	.dataOut_Char(cVramData),
	.videoOut(VGAColor),

	.HSync(HSync),
	.VSync(VSync)
);

assign gVramData = 32'h0;

//SD卡控制器模块
SDWrapper sdc(
	.clkCPU(clkCPU),
	.clkSD(clk_100M),

	.globlRst(globlRst),
	.dataInBus(doutDBus),
	.addrBus(addrDBus),
	.weBus(dmDBus),
	.en_ctrl(sdCtrlEN),
	.en_data(sdDataEN),

	.dataOut_ctrl(sdCtrlData),
	.dataOut_data(sdDataData),
	
	.sdInt(cpuInterrupt[2]),

	.sd_dat(sdDat),
	.sd_cmd(sdCmd),
	.sd_clk(sdClk),
	.sd_rst(sdRst),
	.sd_cd(sdCd)
);

//处理器与各个子系统的相连总线
CPUBus bus0(
	.clk(clkCPU),
	.rst(globlRst),
	
	.masterEN(stbDBus),
	.addrBus(addrDBus),
	.dataToCPU(dinDBus),
	.progMemEN(progMemEN),
	.progMemData(progMemData),

	//CharVRAM
	.cVramEN(cVramEN),
	.cVramData(cVramData),

	//GraphicsVRAM
	.gVramEN(gVramEN),
	.gVramData(gVramData),

	.ioEN(ioEN),
	.ioData(ioData),
	
	.sdCtrlEN(sdCtrlEN),
	.sdCtrlData(sdCtrlData),
	.sdDataEN(sdDataEN),
	.sdDataData(sdDataData));

//处理器与存储设备相连的接口模块
BiosMem mem0 (
	.clka(clkCPU),
	.addra(addrDBus[13:2]),
	.dina(doutDBus),
	.wea(dmDBus),
	.ena(progMemEN),
	.douta(progMemData),

	.clkb(~clkCPU),
	.addrb(addrIBus[13:2]),
	.dinb(32'h0),
	.web(4'h0),
	.enb(1'b1),
	.doutb(dinIBus),

	.clkProg(clk_100M),
	.uartRx(uartRx),
	.progEN(globlRst));

//SDRAM存储器模块，数据存储器
DDR3_wsWrapper ddr3 (
	.sysclk_p(sysclk_p),
	.sysclk_n(sysclk_n),

	.clkOut(clkDDR),
	.rst(globlRst),
	
	.ws_addr(addrDDR),
	.ws_din(doutDDR),
	.ws_dm(dmDDR),
	.ws_cyc(cycDDR),
	.ws_stb(stbDDR),
	.ws_we(weDDR),
	.ws_dout(dinDDR),
	.ws_ack(ackDDR),
	
	.dbg_state(dbg_ddrState),
	
	.ddr3_addr(ddr3_addr),
	.ddr3_ba(ddr3_ba),
	.ddr3_cas_n(ddr3_cas_n),
	.ddr3_ck_n(ddr3_ck_n),
	.ddr3_ck_p(ddr3_ck_p),
	.ddr3_cke(ddr3_cke),
	.ddr3_ras_n(ddr3_ras_n),
	.ddr3_reset_n(ddr3_reset_n),
	.ddr3_we_n(ddr3_we_n),
	.ddr3_dq(ddr3_dq),
	.ddr3_dqs_n(ddr3_dqs_n),
	.ddr3_dqs_p(ddr3_dqs_p),
	.ddr3_cs_n(ddr3_cs_n),
	.ddr3_dm(ddr3_dm),
	.ddr3_odt(ddr3_odt)
);

assign buzzer = 1'b1;

endmodule
