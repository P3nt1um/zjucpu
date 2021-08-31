`timescale 1ns / 1ps
/**
 * The top module integrating CPU and cache, along with
 * arbiter logic between two wishbone masters(instruction
 * cache and data cache). Exposes 3 buses to outer logic.
 * 
 * @author Yunye Pu
 */
module CPUCacheTop #(
	parameter CLKCPU_PERIOD = 10,
	parameter CLKDDR_PERIOD = 5
) (
	input clkCPU,
	input clkDDR,
	
	input rst,
	
	input [4:0] interrupt,

	//IBus signals
	output [31:0] addrIBus,
	input [31:0] dinIBus,	
	output stbIBus,
	input nakIBus,

	//DBus signals
	output [31:0] addrDBus,
	output [31:0] doutDBus,
	input [31:0] dinDBus,
	output stbDBus,
	output [3:0] dmDBus,
	output weDBus,
	input nakDBus,

	//DDR memory signals as wishbone master
	output [31:0] addrDDR,
	output [511:0] doutDDR,
	input [511:0] dinDDR,
	output stbDDR,
	output cycDDR,
	output weDDR,
	output [63:0] dmDDR,
	input ackDDR,

	//Debug signals
	output [31:0] dbg_vPC,
	output [31:0] dbg_vAddr,
	output [31:0] dbg_IDPC,
	output [31:0] dbg_EXPC,
	output [31:0] dbg_MEMPC
);

wire rstCPU, rstDDR;

wire iStall, dStall;
wire iCacheStall, dCacheStall;
wire mappedIBus, mappedDBus;
reg mappedDBus_reg;

wire [31:0] cpuInstIn, cpuDataIn;
wire [31:0] iCacheOut, dCacheOut;
wire [31:0] addrIBusMapped, addrDBusMapped;
wire iCacheStb, dCacheStb;
wire iCacheOp, dCacheOp;

wire [31:0] dbg_dcacheWay0, dbg_dcacheWay1;

PCPU cpu(.clk(clkCPU), .rst(rstCPU), .iStall(iStall), .dStall(dStall),
	.addrIBus(addrIBus), .stbIBus(stbIBus),
	.addrIBusMapped(addrIBusMapped), .stbIBusMapped(iCacheStb),
	.mappedIBus(mappedIBus), .instIn(cpuInstIn),
	
	.addrDBus(addrDBus), .stbDBus(stbDBus),
	.addrDBusMapped(addrDBusMapped), .stbDBusMapped(dCacheStb),
	.mappedDBus(mappedDBus), .dataOut(doutDBus),
	.dataMask(dmDBus), .memWE(weDBus), .dataIn(cpuDataIn),

	.iCacheOp(iCacheOp), .dCacheOp(dCacheOp),
	.INT(interrupt),
	.dbg_vPC(dbg_vPC), .dbg_vAddr(dbg_vAddr),
	.dbg_IDPC(dbg_IDPC), .dbg_EXPC(dbg_EXPC), .dbg_MEMPC(dbg_MEMPC));

always @ (posedge clkCPU)
if(~dStall) mappedDBus_reg <= mappedDBus;

assign cpuInstIn = mappedIBus? iCacheOut: dinIBus;
assign cpuDataIn = mappedDBus_reg? dCacheOut: dinDBus;
assign iStall = iCacheStall | nakIBus;
assign dStall = dCacheStall | nakDBus;

wire [31:0] ws_addr_m0, ws_addr_m1;
wire [511:0] ws_dout_m0, ws_dout_m1, ws_din_m0, ws_din_m1;
wire [63:0] ws_dm_m0, ws_dm_m1;
wire ws_cyc_m0, ws_cyc_m1;
wire ws_stb_m0, ws_stb_m1;
wire ws_we_m0, ws_we_m1;
wire ws_ack_m0, ws_ack_m1;

ICache #(.CLKCPU_PERIOD(CLKCPU_PERIOD), .CLKDDR_PERIOD(CLKDDR_PERIOD))
	icache(.clkCPU(clkCPU), .clkDDR(clkDDR), .rstCPU(rstCPU), .rstDDR(rstDDR),
	.PCIn(addrIBusMapped), .req(iCacheStb), .instOut(iCacheOut), .iStall(iCacheStall),
	.invalidateAddr(addrDBusMapped), .invalidateReq(iCacheOp),
	.ws_addr(ws_addr_m0), .ws_din(ws_din_m0), .ws_cyc(ws_cyc_m0),
	.ws_stb(ws_stb_m0), .ws_ack(ws_ack_m0));
assign ws_dout_m0 = 512'h0;
assign ws_dm_m0 = 16'h0;
assign ws_we_m0 = 1'b0;

DCache #(.CLKCPU_PERIOD(CLKCPU_PERIOD), .CLKDDR_PERIOD(CLKDDR_PERIOD))
	dcache(.clkCPU(clkCPU), .clkDDR(clkDDR), .rstCPU(rstCPU), .rstDDR(rstDDR),
	.addrIn(addrDBusMapped), .req(dCacheStb), .dataIn(doutDBus),
	.dm(dmDBus), .we(weDBus), .dataOut(dCacheOut), .dStall(dCacheStall),
	.invalidate(dCacheOp),
	.ws_addr(ws_addr_m1), .ws_dout(ws_dout_m1), .ws_dm(ws_dm_m1),
	.ws_we(ws_we_m1), .ws_cyc(ws_cyc_m1), .ws_stb(ws_stb_m1), .ws_ack(ws_ack_m1),
	.ws_din(ws_din_m1)
);

//Wishbone Arbiter logic
//Master data output(Slave input) not multiplexed, since only DCache actually will output data
reg wsMaster = 1'b0;
always @ (posedge clkDDR)
begin
	if(rstDDR)
		wsMaster <= 1'b0;
	else if(~cycDDR)
		wsMaster <= ~wsMaster;
end
assign cycDDR  = wsMaster? ws_cyc_m1 : ws_cyc_m0;
assign stbDDR  = wsMaster? ws_stb_m1 : ws_stb_m0;
assign weDDR   = wsMaster? ws_we_m1  : ws_we_m0;
assign addrDDR = wsMaster? ws_addr_m1: ws_addr_m0;
assign dmDDR   = ws_dm_m1;
assign doutDDR  = ws_dout_m1;
assign ws_din_m0 = dinDDR;
assign ws_din_m1 = dinDDR;
assign ws_ack_m0 = ackDDR & ~wsMaster;
assign ws_ack_m1 = ackDDR &  wsMaster;

PipeReg #(2) rstCPU_sync(.clk(clkCPU), .i(rst), .o(rstCPU));
PipeReg #(2) rstDDR_sync(.clk(clkDDR), .i(rst), .o(rstDDR));

endmodule
