`timescale 1ns / 1ps
/**
 * The top module of SD card controller.
 * 
 * @author Yunye Pu
 */
module SDController(
	//Clock and reset
	input wb_clk, input wb_rst,
	input sd_clk, input sd_rst,
	//Wishbone slave interface
	input [7:0] wb_addr, input [31:0] wb_din, output [31:0] wb_dout,
	input [3:0] wb_dm, input wb_cyc, input wb_stb, input wb_we,
	output wb_ack,
	//Wishbone master interface
	output [31:0] wbm_addr, output [31:0] wbm_dout, input [31:0] wbm_din,
	output [3:0] wbm_dm, output wbm_cyc, output wbm_stb, output wbm_we,
	input wbm_ack,
	//Interrupts
	output int_cmd, output int_data,
	//SD card pins
	inout [3:0] sd_dat_pad,
	inout sd_cmd_pad,
	output sd_clk_pad
);

localparam
	BLKSIZE_W = 12,
	BLKCNT_W = 16,
	CMD_TIMEOUT_W = 24,
	DATA_TIMEOUT_W = 24,
	DIV_BITS = 8;

	//Internal clock and reset
	wire sd_sysclk, sd_sysrst;

	//Signals to/from SDC register set
	wire [31:0] argument_wb, argument_sd;
	wire [13:0] cmd_wb, cmd_sd;
	wire [DATA_TIMEOUT_W-1:0] dataTimeout_wb, dataTimeout_sd;
	wire wideBus_wb, wideBus_sd;
	wire [CMD_TIMEOUT_W-1:0] cmdTimeout_wb, cmdTimeout_sd;
	wire [DIV_BITS-1:0] clkdiv_wb;
	wire [BLKSIZE_W-1:0] blockSize_wb, blockSize_sd;
	wire [BLKCNT_W-1:0] blockCount_wb, blockCount_sd;
	wire [31:0] dmaAddress_wb, dmaAddress_sd;
	wire softRst_wb, softRstStatus_wb;
	wire cmdStart_wb, cmdStart_sd;
	
	wire [6:0] dataIntEvents_wb, dataIntEvents_sd;
	wire [4:0] cmdIntEvents_wb, cmdIntEvents_sd;
	wire [119:0] response_wb, response_sd;
	
	localparam CDC_WB_SD_W = 32 + 14 + 1 + 32 //argument, command, widebus, dmaAddress
		+ DATA_TIMEOUT_W + CMD_TIMEOUT_W + BLKSIZE_W + BLKCNT_W;
	localparam CDC_SD_WB_W = 120 + 5 + 7;//Response + command int + data int
	
	//SD control signals
	wire sdBusy;
	wire startDataRx, startDataTx;
	
	SDC_Clocking #(DIV_BITS, CDC_WB_SD_W, CDC_SD_WB_W) infrastructure(
		.wb_clk(wb_clk), .sd_clk_in(sd_clk), .sd_rst_in(sd_rst),
		.sd_clk_out(sd_sysclk), .sd_rst_out(sd_sysrst),
		.sd_clk_pad(sd_clk_pad),
		.clkdivValue(clkdiv_wb),
		.cmdStart_in(cmdStart_wb), .cmdStart_out(cmdStart_sd),
		.softRst_in(softRst_wb), .softRst_status(softRstStatus_wb),
		.wb_sd_cdcIn ({argument_wb, cmd_wb, dataTimeout_wb, wideBus_wb, cmdTimeout_wb, blockSize_wb, blockCount_wb, dmaAddress_wb}),
		.wb_sd_cdcOut({argument_sd, cmd_sd, dataTimeout_sd, wideBus_sd, cmdTimeout_sd, blockSize_sd, blockCount_sd, dmaAddress_sd}),
		.sd_wb_cdcIn ({response_sd, cmdIntEvents_sd, dataIntEvents_sd}),
		.sd_wb_cdcOut({response_wb, cmdIntEvents_wb, dataIntEvents_wb})
	);
	
	SDC_Registers #(BLKSIZE_W, BLKCNT_W, CMD_TIMEOUT_W, DATA_TIMEOUT_W, DIV_BITS) registers (
		.clk(wb_clk), .rst(wb_rst),
		.wb_addr(wb_addr), .wb_din(wb_din), .wb_dout(wb_dout),
		.wb_dm(wb_dm), .wb_cyc(wb_cyc), .wb_stb(wb_stb),
		.wb_we(wb_we), .wb_ack(wb_ack),
		.cmdInt(int_cmd), .dataInt(int_data),
		.sdc_argument(argument_wb),
		.sdc_cmd(cmd_wb),
		.sdc_dataTimeout(dataTimeout_wb),
		.sdc_wideBus(wideBus_wb),
		.sdc_cmdTimeout(cmdTimeout_wb),
		.sdc_clkdiv(clkdiv_wb),
		.sdc_blockSize(blockSize_wb),
		.sdc_blockCount(blockCount_wb),
		.sdc_dmaAddress(dmaAddress_wb),
		.sdc_softReset(softRst_wb),
		.sdc_cmdStart(cmdStart_wb),
		.dataIntEvents(dataIntEvents_wb),
		.cmdIntEvents(cmdIntEvents_wb),
		.resetStatus(softRstStatus_wb),
		.responseIn(response_wb)
	);
	
	wire sd_cmd_o, sd_cmd_t;
	SDC_Cmdpath #(CMD_TIMEOUT_W) commandPath (
		.clk(sd_sysclk), .rst(sd_sysrst),
		.cmdIndex(cmd_sd[13:8]), .cmdArgument(argument_sd),
		.cmdStart(cmdStart_sd), .startRx(startDataRx), .startTx(startDataTx),
		.cmdConfig(cmd_sd[6:0]), .response(response_sd), .timeoutValue(cmdTimeout_sd),
		.interruptEvents(cmdIntEvents_sd),
		.sdCmd_o(sd_cmd_o), .sdCmd_t(sd_cmd_t), .sdCmd_i(sd_cmd_pad),
		.sdBusy(sdBusy)
	);
	assign sd_cmd_pad = sd_cmd_t? sd_cmd_o: 1'bz;
	
	SDC_Datapath #(BLKSIZE_W, BLKCNT_W, DATA_TIMEOUT_W) dataPath(
		.wb_clk(wb_clk), .wb_rst(wb_rst),
		.sd_clk(sd_sysclk), .sd_rst(sd_sysrst),
		.wb_addr(wbm_addr), .wb_dout(wbm_dout), .wb_din(wbm_din),
		.wb_dm(wbm_dm), .wb_cyc(wbm_cyc), .wb_stb(wbm_stb),
		.wb_we(wbm_we), .wb_ack(wbm_ack),
		.sdDat(sd_dat_pad),
		.blockSize(blockSize_sd), .blockCount(blockCount_sd),
		.timeoutValue(dataTimeout_sd), .dmaAddress(dmaAddress_sd),
		.wideBus(wideBus_sd),
		.rxStart(startDataRx), .txStart(startDataTx), .sdBusy(sdBusy),
		.interruptEvents(dataIntEvents_sd)
	);
	
	
endmodule
