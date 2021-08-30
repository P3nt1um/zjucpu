`timescale 1ns / 1ps
/**
 * Control register set of SD card controller. Accessible
 * through a Wishbone slave interface; ack output is always
 * high whenever stb and cyc inputs are high, so the Wishbone
 * master can assume a non-blocking operation.
 * 
 * @author Yunye Pu
 */
module SDC_Registers #(
	parameter BLKSIZE_W = 12,
	parameter BLKCNT_W = 16,
	parameter CMD_TIMEOUT_W = 24,
	parameter DATA_TIMEOUT_W = 24,
	parameter DIV_BITS = 8
)(
	input clk, input rst,
	//Wishbone interface
	input [7:0] wb_addr, input [31:0] wb_din,
	output reg [31:0] wb_dout, input [3:0] wb_dm,
	input wb_cyc, input wb_stb, input wb_we,
	output wb_ack,
	//Interrupt output
	output cmdInt, output dataInt,
	//SDC configuration signals output
	output [31:0] sdc_argument,
	output [13:0] sdc_cmd,
	output [DATA_TIMEOUT_W-1:0] sdc_dataTimeout,
	output sdc_wideBus,
	output [CMD_TIMEOUT_W-1:0] sdc_cmdTimeout,
	output [DIV_BITS-1:0] sdc_clkdiv,
	output [BLKSIZE_W-1:0] sdc_blockSize,
	output [BLKCNT_W-1:0] sdc_blockCount,
	output [31:0] sdc_dmaAddress,
	//SDC trigger signals output
	output reg sdc_softReset,
	output reg sdc_cmdStart,
	//SDC status signals input
	input [6:0] dataIntEvents, input [4:0] cmdIntEvents, input resetStatus,
	input [119:0] responseIn
);
	wire [6:0] dataIntMask;
	wire [4:0] cmdIntMask;
	
	wire [6:0] dataIntTrigger;
	wire [4:0] cmdIntTrigger;
	
	wire dataIntClear, cmdIntClear;
	
	assign cmdInt = |(cmdIntTrigger & cmdIntMask);
	assign dataInt = |(dataIntTrigger & dataIntMask);
	
	SDC_IntTrigger dataIntReg[6:0] (.clk(clk), .trigger(dataIntEvents), .reset(dataIntClear), .out(dataIntTrigger));
	SDC_IntTrigger cmdIntReg [4:0] (.clk(clk), .trigger(cmdIntEvents),  .reset(cmdIntClear),  .out(cmdIntTrigger));
	
	wire regWe = wb_cyc && wb_stb && wb_we;
	assign wb_ack = wb_cyc && wb_stb;
	
	SDC_Reg #(32, 32'h0, 6, 6'h00) argument_reg    (clk, rst, wb_addr[7:2], regWe, wb_din[31:0], wb_dm[3:0], sdc_argument);
	SDC_Reg #(14, 14'h0, 6, 6'h01) command_reg     (clk, rst, wb_addr[7:2], regWe, wb_din[13:0], wb_dm[1:0], sdc_cmd);
	SDC_Reg #( 1,  1'h0, 6, 6'h07) wideBus_reg     (clk, rst, wb_addr[7:2], regWe, wb_din[0],    wb_dm[0],   sdc_wideBus);
	SDC_Reg #( 5,  5'h0, 6, 6'h0e) cmdIntMask_reg  (clk, rst, wb_addr[7:2], regWe, wb_din[ 4:0], wb_dm[0],   cmdIntMask);
	SDC_Reg #( 7,  7'h0, 6, 6'h10) dataIntMask_reg (clk, rst, wb_addr[7:2], regWe, wb_din[ 6:0], wb_dm[0],   dataIntMask);
	SDC_Reg #(32, 32'h0, 6, 6'h18) dmaAddress_reg  (clk, rst, wb_addr[7:2], regWe, wb_din[31:0], wb_dm[3:0], sdc_dmaAddress);

	SDC_Reg #(DATA_TIMEOUT_W, 0, 6, 6'h06) dataTimeout_reg (clk, rst, wb_addr[7:2], regWe, wb_din[DATA_TIMEOUT_W-1:0], wb_dm[(DATA_TIMEOUT_W-1)/8:0], sdc_dataTimeout);
	SDC_Reg #(CMD_TIMEOUT_W,  0, 6, 6'h08) cmdTimeout_reg  (clk, rst, wb_addr[7:2], regWe, wb_din[CMD_TIMEOUT_W -1:0], wb_dm[(CMD_TIMEOUT_W -1)/8:0], sdc_cmdTimeout);
	SDC_Reg #(DIV_BITS,     255, 6, 6'h09) clkdiv_reg      (clk, rst, wb_addr[7:2], regWe, wb_din[DIV_BITS      -1:0], wb_dm[(DIV_BITS      -1)/8:0], sdc_clkdiv);
	SDC_Reg #(BLKSIZE_W,    511, 6, 6'h11) blockSize_reg   (clk, rst, wb_addr[7:2], regWe, wb_din[BLKSIZE_W     -1:0], wb_dm[(BLKSIZE_W     -1)/8:0], sdc_blockSize);
	SDC_Reg #(BLKCNT_W,       0, 6, 6'h12) blockCount_reg  (clk, rst, wb_addr[7:2], regWe, wb_din[BLKCNT_W      -1:0], wb_dm[(BLKCNT_W      -1)/8:0], sdc_blockCount);
	
	always @*
	case(wb_addr[7:2])
	6'h00: wb_dout <= sdc_argument;
	6'h01: wb_dout <= sdc_cmd;
	6'h02: wb_dout <= responseIn[31: 0];
	6'h03: wb_dout <= responseIn[63:32];
	6'h04: wb_dout <= responseIn[95:64];
	6'h05: wb_dout <= responseIn[119:96];
	6'h06: wb_dout <= sdc_dataTimeout;
	6'h07: wb_dout <= sdc_wideBus;
	6'h08: wb_dout <= sdc_cmdTimeout;
	6'h09: wb_dout <= sdc_clkdiv;
	6'h0a: wb_dout <= resetStatus;
	6'h0b: wb_dout <= 32'd3300;//Voltage
	6'h0c: wb_dout <= 32'h0;//Capabilities
	6'h0d: wb_dout <= cmdIntEvents;
	6'h0e: wb_dout <= cmdIntMask;
	6'h0f: wb_dout <= dataIntEvents;
	6'h10: wb_dout <= dataIntMask;
	6'h11: wb_dout <= sdc_blockSize;
	6'h12: wb_dout <= sdc_blockCount;
	6'h18: wb_dout <= sdc_dmaAddress;
	default: wb_dout <= 32'h0;
	endcase
	
	always @ (posedge clk)
	begin
		sdc_softReset <= regWe && wb_dm[0] && wb_din[0] && (wb_addr[7:2] == 6'h0a);
		sdc_cmdStart  <= regWe && (wb_addr[7:2] == 6'h00);
	end
	assign cmdIntClear   = regWe && (wb_addr[7:2] == 6'h0d);
	assign dataIntClear  = regWe && (wb_addr[7:2] == 6'h0f);
	
endmodule

module SDC_Reg #(
	parameter DW = 32,
	parameter INIT = 32'h0,
	parameter AW = 6,
	parameter ADDR = 6'h0
)(
	input clk, input rst, input [AW-1:0] addr,
	input we, input [DW-1:0] din, input [(DW-1)/8:0] dm,
	output reg [DW-1:0] dout = INIT
);
	
	wire write = we && (addr == ADDR);
	
	integer i;
	
	always @ (posedge clk)
	if(rst)
		dout <= INIT;
	else if(we && (addr == ADDR))
	begin
		for(i = 0; i < DW; i = i+1)
			if(dm[i/8]) dout[i] <= din[i];
	end
		
endmodule

module SDC_IntTrigger(
	input clk, input trigger, input reset, output reg out = 0
);
	reg trigger_reg = 0;
	always @ (posedge clk)
	if(reset)
		out <= 0;
	else if(trigger && !trigger_reg)
		out <= 1;
	
	always @ (posedge clk)
		trigger_reg <= trigger;

endmodule
