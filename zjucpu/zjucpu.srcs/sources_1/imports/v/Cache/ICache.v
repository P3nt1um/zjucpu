`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2017/01/27 15:22:54
// Design Name: 
// Module Name: ICache
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////
module ICache #(
	parameter CLKCPU_PERIOD = 10,
	parameter CLKDDR_PERIOD = 5
) (
	input clkCPU, input clkDDR, input rstCPU, input rstDDR,
	//Interface to CPU, synchronous to clkCPU
	input [31:0] PCIn, input req, output [31:0] instOut, output iStall,
	input [31:0] invalidateAddr, input invalidateReq,
	//Interface to DDR(as Wishbone master device), synchronous to clkDDR
	//Write signal omitted since ICache never writes back
	output [31:0] ws_addr, input [511:0] ws_din, output ws_cyc, output ws_stb, input ws_ack
);
	//ICache: 64KiB, 2-way set associative, 64-byte line size
	
	wire [31:0] douta0, douta1;
	wire [8:0] addrb;
	wire [511:0] dinb;
	wire [1:0] web;
	
	wire replaceStb_CPU, replaceStb_DDR, completeStb_CPU, completeStb_DDR;
	wire [26:0] replaceBlock_CPU, replaceBlock_DDR;
	
	ICacheData way0Data(.addra(PCIn[14:2]), .clka(~clkCPU), .douta(douta0), .ena(1'b1),
		.addrb(addrb), .clkb(clkDDR), .dinb(dinb), .enb(1'b1), .web(web[0]));
	ICacheData way1Data(.addra(PCIn[14:2]), .clka(~clkCPU), .douta(douta1), .ena(1'b1),
		.addrb(addrb), .clkb(clkDDR), .dinb(dinb), .enb(1'b1), .web(web[1]));
	
	ICacheFSM_CPU FSM0(.clk(clkCPU), .rst(rstCPU), .addrIn(PCIn), .req(req), .dataOut(instOut), .stall(iStall),
		.invalidateAddr(invalidateAddr), .invalidateReq(invalidateReq), .douta0(douta0), .douta1(douta1),
		.replaceStb(replaceStb_CPU), .replaceBlock(replaceBlock_CPU), .completeStb(completeStb_CPU));
	ICacheFSM_DDR FSM1(.clk(clkDDR), .rst(rstDDR), .addrb(addrb), .dinb(dinb), .web(web),
		.replaceStb(replaceStb_DDR), .replaceBlock(replaceBlock_DDR), .completeStb(completeStb_DDR),
		.ws_addr(ws_addr), .ws_din(ws_din), .ws_cyc(ws_cyc), .ws_stb(ws_stb), .ws_ack(ws_ack));
	
	AsyncHandshake #(.STB_FREQ(1000 / CLKDDR_PERIOD), .ACK_FREQ(1000 / CLKCPU_PERIOD))
		completeCross(.clkStb(clkDDR), .clkAck(clkCPU),
		.stbI(completeStb_DDR), .stbO(completeStb_CPU),
		.ackI(completeStb_CPU), .ackO());
	ClockDomainCross #(0, 1) replaceStbCross(.clki(clkCPU), .clko(clkDDR), .i(replaceStb_CPU), .o(replaceStb_DDR));
	ClockDomainCross #(0, 1) replaceBlockCross[26:0](.clki(clkCPU), .clko(clkDDR), .i(replaceBlock_CPU), .o(replaceBlock_DDR));
	
endmodule

module ICacheFSM_CPU(
	input clk, input rst,
	//Interface to CPU
	input [31:0] addrIn, input req, output [31:0] dataOut, output stall,
	input [31:0] invalidateAddr, input invalidateReq,
	//Interface to DDR FSM
	output reg replaceStb, output reg [26:0] replaceBlock,
	input completeStb,
	//Interface to cache data
	input [31:0] douta0, input [31:0] douta1
);
	
	wire [17:0] tag0, tag1;
	wire [17:0] _tag0, _tag1;
	wire LRUBit;
	wire tagWSel;
	
	reg [35:0] tagDin;
	reg [1:0] tagWe;
	
	wire hit0 = (tag0[16:0] == addrIn[31:15]) & tag0[17];
	wire hit1 = (tag1[16:0] == addrIn[31:15]) & tag1[17];
	assign dataOut = hit1? douta1: douta0;
	
	reg [8:0] tagAddr = 0;
	reg [16:0] invalidateTag;
	
//	CacheTag #(.SYNC_READ(0)) cacheTag(.clka(clk), .wea(tagWe),
//		.addra(tagWSel? tagAddr: addrIn[14:6]), .dina(tagDin), .douta({tag1, tag0}));
	ICacheTag cacheTag(.clka(clk), .wea(tagWe), .addra(tagAddr), .dina(tagDin), .douta({_tag1, _tag0}),
		.addrb(addrIn[14:6]), .doutb({tag1, tag0}));
	CacheLRUBit cacheLRU(.clk(clk), .req(req), .addr(addrIn[14:6]), .hit({hit1, hit0}), .flag(LRUBit));
	
	localparam STATE_IDLE = 2'h0;
	localparam STATE_WAIT = 2'h1;
	localparam STATE_INVALIDATE = 2'h2;
	reg [1:0] state;
	
	assign stall = (req & ~(hit0 | hit1)) | (state == STATE_INVALIDATE);
	assign tagWSel = rst | (state == STATE_INVALIDATE);
	
	always @ (posedge clk)
	if(rst)
	begin
		state <= STATE_IDLE;
		tagAddr <= tagAddr + 1'b1;
		replaceStb <= 1'b0;
	end
	else
	case(state)
	STATE_IDLE: begin
		if(invalidateReq)
		begin
			state <= STATE_INVALIDATE;
			tagAddr <= invalidateAddr[14:6];
			invalidateTag <= invalidateAddr[31:15];
		end
		else if(stall)
		begin
			state <= STATE_WAIT;
			tagAddr <= addrIn[14:6];
			replaceStb <= 1'b1;
			replaceBlock <= {LRUBit, addrIn[31:6]};
		end
	end
	STATE_WAIT: begin
		replaceStb <= 1'b0;
		if(completeStb)
			state <= STATE_IDLE;
	end
	STATE_INVALIDATE: begin
		state <= STATE_IDLE;
	end
	endcase
	
	always @*
	case(state)
	STATE_WAIT: begin
//		tagDin <= {2{1'b1, addrIn[31:15]}};
		tagDin <= {2{1'b1, replaceBlock[25:9]}};
		tagWe <= {2{completeStb}} & {replaceBlock[26], ~replaceBlock[26]};
	end
	STATE_INVALIDATE: begin
		tagWe <= 2'b11;
		tagDin[35] <= _tag1[17] & (_tag1[16:0] != invalidateTag);
		tagDin[17] <= _tag0[17] & (_tag0[16:0] != invalidateTag);
		tagDin[34:18] <= _tag1[16:0];
		tagDin[16: 0] <= _tag0[16:0];
	end
	default: begin
		tagDin <= 36'h000040000;
		tagWe <= {2{rst}};
	end
	endcase
	
endmodule

module ICacheFSM_DDR(
	input clk, input rst,
	//Wishbone master interface
	output [31:0] ws_addr, input [511:0] ws_din, output ws_cyc, output ws_stb, input ws_ack,
	//Interface to cache data
	output [8:0] addrb, output reg [511:0] dinb = 0, output [1:0] web,
	//Interface to CPU FSM
	input replaceStb, input [26:0] replaceBlock, output completeStb
);

	localparam STATE_IDLE = 2'h0;
	localparam STATE_WAIT = 2'h1;
	localparam STATE_WRITE = 2'h2;
	reg [1:0] state = STATE_IDLE;
	
	reg [25:0] addr = 0;
	reg waySel;
	
	assign ws_addr = {addr, 6'h0};
	assign addrb = addr[8:0];
	
	assign ws_stb = (state == STATE_WAIT);
	assign ws_cyc = (state == STATE_WAIT);
	assign completeStb = (state == STATE_WRITE);
	assign web = (state == STATE_WRITE)? {waySel, ~waySel}: 2'b0;
	
	always @ (posedge clk)
	if(rst)
	begin
		state <= STATE_IDLE;
	end
	else
	case(state)
	STATE_IDLE: begin
		if(replaceStb)
		begin
			state <= STATE_WAIT;
			addr <= replaceBlock[25:0];
			waySel <= replaceBlock[26];
		end
	end
	STATE_WAIT: begin
		if(ws_ack)
		begin
			state <= STATE_WRITE;
			dinb <= ws_din;
		end
	end
	STATE_WRITE: begin
		state <= STATE_IDLE;
	end
	endcase

endmodule
