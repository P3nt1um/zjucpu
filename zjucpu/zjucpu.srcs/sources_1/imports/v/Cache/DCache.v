`timescale 1ns / 1ps
/**
 * Data cache, 2-way set associative, 64-byte line size, 512 sets per way, total 64KB.
 * No allocate on write miss combined with writeback, improves cache performance on cache
 * misses.
 * A 'hit writeback' operation is available to CPU.
 * 
 * DRAM-side port is upscaled by interleaving two way data. Due to limits in RAM port width,
 * we can read/write at most 8 words(half a set) in a bank in one clock cycle.
 * This is how data is normally stored:
 * |          ...           |  |          ...           |
 * | way 0, set 1, word 8-15|  | way 1, set 1, word 8-15|
 * | way 0, set 1, word 0-7 |  | way 1, set 1, word 0-7 |
 * | way 0, set 0, word 8-15|  | way 1, set 0, word 8-15|
 * | way 0, set 0, word 0-7 |  | way 1, set 0, word 0-7 |
 * --------------------------  --------------------------
 * In this configuration, it takes at least two clock cycles to read/write a single set.
 * This is how data is stored after interleaving:
 * |          ...           |  |          ...           |
 * | way 1, set 1, word 8-15|  | way 0, set 1, word 8-15|
 * | way 0, set 1, word 0-7 |  | way 1, set 1, word 0-7 |
 * | way 1, set 0, word 8-15|  | way 0, set 0, word 8-15|
 * | way 0, set 0, word 0-7 |  | way 1, set 0, word 0-7 |
 * --------------------------  --------------------------
 * Note that way 0 and way 1 alternates inside each bank, so we can read/write the whole
 * set in one clock cycle if we provide appropriate addresses for each bank.
 * 
 * @author Yunye Pu
 */
module DCache #(
	parameter CLKCPU_PERIOD = 10,
	parameter CLKDDR_PERIOD = 5
) (
	input clkCPU, input clkDDR, input rstCPU, input rstDDR,
	//Interface to CPU, synchronous to clkCPU
	input [31:0] addrIn, input req, input [31:0] dataIn,
	input [3:0] dm, input we, output [31:0] dataOut, output dStall, input invalidate,
	//Interface to DDR, synchronous to clkDDR
	output [31:0] ws_addr, output [511:0] ws_dout, output [63:0] ws_dm,
	output ws_we, output ws_cyc, output ws_stb, input ws_ack,
	input [511:0] ws_din
);
	wire [31:0] douta0, douta1;
	wire [1:0] writeReject;
	wire [9:0] addrb;
	wire [511:0] dinb, doutb;
	wire [63:0] dirtyb;
	wire dataOp;
	wire waySelA, waySelB;
	wire web;
	
	wire replaceStb_CPU, replaceStb_DDR;
	wire replaceType_CPU, replaceType_DDR;
	wire replaceAck_CPU, replaceAck_DDR;
	wire completeStb_CPU, completeStb_DDR;
	wire [9:0] replaceIndex_CPU, replaceIndex_DDR;
	wire [16:0] oldTag_CPU, oldTag_DDR;
	wire [16:0] newTag_CPU, newTag_DDR;
	
	DCacheData way0Data(
		.addra(addrIn[14:2]), .clka(clkCPU), .ena(~dStall), .wea(dm),
		.dina(dataIn), .douta(douta0), .readReq(req & ~we), .writeReject(writeReject[0]),
		.addrb({addrb[8:0], addrb[9]}), .clkb(clkDDR), .enb(1'b1), .web(web), .op(dataOp),
		.dinb(dinb[255:  0]), .doutb(doutb[255:  0]), .dirtyb(dirtyb[31: 0]));
	DCacheData way1Data(
		.addra(addrIn[14:2]), .clka(clkCPU), .ena(~dStall), .wea(dm),
		.dina(dataIn), .douta(douta1), .readReq(req & ~we), .writeReject(writeReject[1]),
		.addrb({addrb[8:0],~addrb[9]}), .clkb(clkDDR), .enb(1'b1), .web(web), .op(dataOp),
		.dinb(dinb[511:256]), .doutb(doutb[511:256]), .dirtyb(dirtyb[63:32]));

	DCacheFSM_CPU FSM0(.clk(clkCPU), .rst(rstCPU),
		.addrIn(addrIn), .req(req), .write(we),
		.dataOut(dataOut), .stall(dStall), .invalidateReq(invalidate),
		.writeReject(writeReject), .douta0(douta0), .douta1(douta1),
		.replaceStb(replaceStb_CPU), .replaceType(replaceType_CPU), .replaceAck(replaceAck_CPU),
		.completeStb(completeStb_CPU), .replaceIndex(replaceIndex_CPU),
		.oldTag(oldTag_CPU), .newTag(newTag_CPU));
	
	DCacheFSM_DDR FSM1(.clk(clkDDR), .rst(rstDDR),
		.ws_addr(ws_addr), .ws_dout(ws_dout), .ws_dm(ws_dm),
		.ws_din(ws_din), .ws_cyc(ws_cyc), .ws_stb(ws_stb), .ws_we(ws_we), .ws_ack(ws_ack),
		.addrb(addrb), .dinb(dinb), .dataOp(dataOp), .doutb(doutb),
		.web(web), .dirtyb(dirtyb),
		.replaceStb(replaceStb_DDR), .replaceType(replaceType_DDR), .replaceAck(replaceAck_DDR),
		.completeStb(completeStb_DDR), .replaceIndex(replaceIndex_DDR),
		.oldTag(oldTag_DDR), .newTag(newTag_DDR));
	
	ClockDomainCross #(0, 1) replaceTypeCross (.clki(clkCPU), .clko(clkDDR), .i(replaceType_CPU), .o(replaceType_DDR));
	ClockDomainCross #(0, 1) replaceIndexCross[9:0](.clki(clkCPU), .clko(clkDDR), .i(replaceIndex_CPU), .o(replaceIndex_DDR));
	ClockDomainCross #(0, 1) oldTagCross[16:0](.clki(clkCPU), .clko(clkDDR), .i(oldTag_CPU), .o(oldTag_DDR));
	ClockDomainCross #(0, 1) newTagCross[16:0](.clki(clkCPU), .clko(clkDDR), .i(newTag_CPU), .o(newTag_DDR));
	
	AsyncHandshake #(.STB_FREQ(1000 / CLKCPU_PERIOD), .ACK_FREQ(1000 / CLKDDR_PERIOD))
		replaceCross(.clkStb(clkCPU), .clkAck(clkDDR),
		.stbI(replaceStb_CPU), .stbO(replaceStb_DDR),
		.ackI(replaceAck_DDR), .ackO(replaceAck_CPU));
	AsyncHandshake #(.STB_FREQ(1000 / CLKDDR_PERIOD), .ACK_FREQ(1000 / CLKCPU_PERIOD))
		completeCross(.clkStb(clkDDR), .clkAck(clkCPU),
		.stbI(completeStb_DDR), .stbO(completeStb_CPU),
		.ackI(completeStb_CPU), .ackO());

endmodule

module DCacheFSM_CPU(
	input clk, input rst,
	//Interface to CPU
	input [31:0] addrIn, input req, input write,
	output [31:0] dataOut, output stall, input invalidateReq,
	//Interface to cache data
	output [1:0] writeReject, input [31:0] douta0, input [31:0] douta1,
	//Interface to DDR FSM
	output reg replaceStb = 0, output reg replaceType = 0, input replaceAck, input completeStb,
	output reg [9:0] replaceIndex = 0, output reg [16:0] oldTag = 0, output reg [16:0] newTag = 0
);
	reg [16:0] requestedTag = 0;
	reg req_reg = 0;
	reg write_reg = 0;
	reg invalidateReq_reg = 0;
	reg wayInterleave = 0;
		
	wire [17:0] tag0, tag1;
	wire LRUBit;
	wire tagWSel;
	
	reg [35:0] tagDin;
	reg [1:0] tagWe;
	
	wire invalidHit0 = (tag0[16:0] == requestedTag);
	wire invalidHit1 = (tag1[16:0] == requestedTag);
	wire hit0 = invalidHit0 & (write_reg | tag0[17]);
	wire hit1 = invalidHit1 & (write_reg | tag1[17]);
	assign dataOut = (hit1 ^ wayInterleave)? douta1: douta0;
	
	reg [8:0] tagAddr = 0;
	
	DCacheTag cacheTag(.clka(clk), .wea(tagWe),
		.addra(tagWSel? tagAddr: addrIn[14:6]), .dina(tagDin), .douta({tag1, tag0}));
	CacheLRUBit cacheLRU(.clk(clk), .req(req_reg), .addr(tagAddr), .hit({hit1, hit0}), .flag(LRUBit));
	
	wire [1:0] _writeReject;
	assign _writeReject[0] = ~invalidHit0 & write_reg;
	assign _writeReject[1] = ~invalidHit1 & write_reg;
	assign writeReject = wayInterleave? {_writeReject[0], _writeReject[1]}: _writeReject;
	
	localparam STATE_IDLE = 2'h0;
	localparam STATE_WAIT = 2'h1;
	localparam STATE_INVALIDATE = 2'h2;
	reg [1:0] state = STATE_IDLE;
	
	wire reqMiss = req_reg & ~(hit0 | hit1);
	wire invHit = invalidateReq_reg & (invalidHit0 | invalidHit1);
	assign stall = reqMiss | invHit | (state != STATE_IDLE);
	assign tagWSel = rst | (state != STATE_IDLE);
	
	always @ (posedge clk)
	if(rst)
	begin
		tagAddr <= tagAddr + 1'b1;
		requestedTag <= 17'h0;
		wayInterleave <= 1'b0;
		req_reg <= 1'b0;
		write_reg <= 1'b0;
	end
	else if(~stall)
	begin
		tagAddr <= addrIn[14:6];
		wayInterleave <= addrIn[5];
		requestedTag <= addrIn[31:15];
		req_reg <= req;
		write_reg <= write;
	end
	
	always @ (posedge clk)
	if(rst | stall)
		invalidateReq_reg <= 1'b0;
	else
		invalidateReq_reg <= invalidateReq;
	
	always @ (posedge clk)
	if(rst)
		state <= STATE_IDLE;
	else
	case(state)
	STATE_IDLE: begin
		if(reqMiss | invHit)
		begin
			state <= reqMiss? STATE_WAIT: STATE_INVALIDATE;
			replaceType <= reqMiss? ~write_reg: 1'b0;
			replaceStb <= 1'b1;
			replaceIndex[8:0] <= tagAddr;
			oldTag <= (invalidHit0 | invalidHit1)? requestedTag: (LRUBit? tag1[16:0]: tag0[16:0]);
			newTag <= requestedTag;
			replaceIndex[9] <= (invalidHit0 | invalidHit1)? invalidHit1: LRUBit;
		end
	end
	STATE_WAIT: begin
		replaceStb <= 1'b0;
		if((~replaceType & replaceAck) | completeStb)
			state <= STATE_IDLE;
	end
	STATE_INVALIDATE: begin
		if(replaceAck)
			state <= STATE_IDLE;
		replaceStb <= 1'b0;
	end
	default: state <= STATE_IDLE;
	endcase
	
	always @*
	case(state)
	STATE_WAIT: begin
		tagDin <={2{~write_reg, requestedTag}};
		tagWe <= {replaceIndex[9], ~replaceIndex[9]};
	end
	STATE_INVALIDATE: begin
		tagDin <= {tag1, tag0};
		tagWe <= 2'b00;
	end
	STATE_IDLE: begin
		tagWe <= {2{rst}};
		tagDin <= 36'h000040000;
	end
	default: begin
		tagWe <= {2{rst}};
		tagDin <= 36'h000040000;
	end
	endcase

endmodule

module DCacheFSM_DDR(
	input clk, input rst,
	//Wishbone master interface
	output [31:0] ws_addr, output reg [511:0] ws_dout, output reg [63:0] ws_dm,
	input [511:0] ws_din, output reg ws_cyc = 0, output ws_stb, output ws_we, input ws_ack,
	//Cache data interface
	output [9:0] addrb, output dataOp, output reg web,
	output reg [511:0] dinb, input [511:0] doutb, input [63:0] dirtyb,
	//Interface to CPU FSM
	input replaceStb, input replaceType, output reg replaceAck, output reg completeStb = 0,
	input [9:0] replaceIndex, input [16:0] oldTag, input [16:0] newTag
);
	//replace0=writeback only, 1=writeback & read

	reg [16:0] newTag_reg;
	reg writeBack, readIn;
	reg [25:0] addr = 0;
	reg waySel = 0;
	assign ws_addr = {addr, 6'h0};
	assign addrb = {waySel, addr[8:0]};
	
	reg blockDirty;
	
	localparam STATE_IDLE = 3'h0;
	localparam STATE_MEM_READ = 3'h1;
	localparam STATE_MEM_READ_END = 3'h2;
	localparam STATE_WS_PREP = 3'h3;
	localparam STATE_WS_READ = 3'h4;
//	localparam STATE_MEM_WRITE = 3'h5;
	localparam STATE_MEM_WRITE_END = 3'h6;
	localparam STATE_WS_WRITE = 3'h7;
	reg [2:0] state;
	
	assign ws_stb = (state == STATE_WS_READ) | (state == STATE_WS_WRITE);
	assign ws_we = (state == STATE_WS_WRITE);
	assign dataOp = (state != STATE_MEM_READ_END);
	
	always @ (posedge clk)
	if(rst)
	begin
		state <= STATE_IDLE;
		ws_cyc <= 1'b0;
	end
	else
	begin
	replaceAck <= 1'b0;
	completeStb <= 1'b0;
	case(state)
	STATE_IDLE: begin
		if(replaceStb)
		begin
			waySel <= replaceIndex[9];
			readIn <= replaceType;
			writeBack <= (oldTag != newTag);
			newTag_reg <= oldTag ^ newTag;
			addr <= {oldTag, replaceIndex[8:0]};
			if(replaceType & (oldTag == newTag))
			begin
				state <= STATE_WS_READ;
				ws_cyc <= 1'b1;
				replaceAck <= 1'b1;
			end
			else
				state <= STATE_MEM_READ;
		end
	end
	STATE_MEM_READ: begin
		state <= STATE_MEM_READ_END;
		web <= 1'b1;
	end
	STATE_MEM_READ_END: begin
		web <= 1'b0;
		ws_dout <= waySel? {doutb[255:0], doutb[511:256]}: doutb;
		ws_dm <= waySel? {dirtyb[31:0], dirtyb[63:32]}: dirtyb;
		blockDirty <= |dirtyb;
		state <= STATE_WS_PREP;
		replaceAck <= 1'b1;
	end
	STATE_WS_PREP: begin
		writeBack <= writeBack & blockDirty;
		if(readIn)
		begin
			ws_cyc <= 1'b1;
			state <= STATE_WS_READ;
			addr[25:9] <= addr[25:9] ^ newTag_reg;
		end
		else if(blockDirty)
		begin
			ws_cyc <= 1'b1;
			state <= STATE_WS_WRITE;
		end
		else
			state <= STATE_IDLE;
	end
	STATE_WS_READ: begin
		if(ws_ack)
		begin
			state <= STATE_MEM_WRITE_END;
			dinb <= waySel? {ws_din[255:0], ws_din[511:256]}: ws_din;
			web <= 1'b1;
			ws_cyc <= writeBack;
		end
	end
	STATE_MEM_WRITE_END: begin
		web <= 1'b0;
		completeStb <= 1'b1;
		if(writeBack)
		begin
			state <= STATE_WS_WRITE;
			addr[25:9] <= addr[25:9] ^ newTag_reg;
		end
		else
			state <= STATE_IDLE;
	end
	STATE_WS_WRITE: begin
		if(ws_ack)
		begin
			state <= STATE_IDLE;
			ws_cyc <= 1'b0;
		end
	end
	endcase
	end

endmodule
