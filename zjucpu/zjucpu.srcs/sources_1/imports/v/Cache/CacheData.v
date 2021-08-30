`timescale 1ns / 1ps
/**
 * Data payload for instruction and data cache. Data cache has dirty bits for each byte.
 * 
 * Data for instruction cache is a SDP RAM, constructed by concatenating 8 SDP RAM
 * primitives whose read port width are 4 bits and write port width 64 bits.
 * 
 * Data for data cache is a TDP RAM, constructed by 8 TDP RAM primitives whose
 * port widths are 9 bits and 36 bits. Downscaling is performed on CPU-side port.
 * Upscaling on DRAM-side port is performed by interleaving the two ways; more details
 * in data cache notes.
 * 
 * Data for data cache has a delayed-decision feature: writing to data cache can be
 * cancelled one cycle after the write operation by asserting writeReject high.
 * This is necessary since data cache hit or miss is determined one cycle after the
 * write operation.
 * 
 * @author Yunye Pu
 */
module DCacheDataCore(
	input [12:0] addra, input clka, input [31:0] dina, output [31:0] douta, input ena, input [3:0] wea,
	input [9:0] addrb, input clkb, input [255:0] dinb, input op, output [255:0] doutb, input enb, input web, output [31:0] dirtyb
);
	//op=0 for write back(clear dirty flags), =1 for read(load data into clean bytes)
	wire [11:0] _addra;
	wire [71:0] _dina;
	wire [71:0] _douta;
	wire [7:0] _wea;
	wire [287:0] _dinb;
	wire [287:0] _doutb;
	wire [31:0] _web;
	reg addra_reg;
	wire [255:0] dinb_op;
	
	//Port A scaling logic
	assign _addra = addra[12:1];
	assign _dina = {2{1'b1, dina[31:24], 1'b1, dina[23:16], 1'b1, dina[15:8], 1'b1, dina[7:0]}};
	assign douta = addra_reg?
		{_douta[70:63], _douta[61:54], _douta[52:45], _douta[43:36]}:
		{_douta[34:27], _douta[25:18], _douta[16: 9], _douta[ 7: 0]};
	assign _wea[7:4] = addra[0]? wea: 4'h0;
	assign _wea[3:0] = addra[0]? 4'h0: wea;
	
	//Port B operation logic
	assign dinb_op = op? dinb: doutb;
	assign _web = {32{web}} & (op? ~dirtyb: 32'hffffffff);
	genvar i;
	generate
		for(i = 0; i < 32; i = i+1)
		begin: portB_wire
			assign _dinb[i*9+8:i*9] = {1'b0, dinb_op[i*8+7:i*8]};
			//When op = 1, we of dirty bytes are off, so the dirty bits will be preserved.
			assign {dirtyb[i], doutb[i*8+7:i*8]} = _doutb[i*9+8:i*9];
		end
	endgenerate
	
	always @ (posedge clka)
		if(ena) addra_reg <= addra[0];
	
	BRAM_TDP_MACRO #(
		.BRAM_SIZE("36Kb"), .DEVICE("7SERIES"), .INIT_FILE ("NONE"),
		.SIM_COLLISION_CHECK ("ALL"),
		.DOA_REG(0), .DOB_REG(0),
		.INIT_A(36'h0), .INIT_B(36'h0),
		.SRVAL_A(36'h0), .SRVAL_B(36'h0),
		.READ_WIDTH_A(9), .READ_WIDTH_B(36),
		.WRITE_WIDTH_A(9), .WRITE_WIDTH_B(36),
		.WRITE_MODE_A("WRITE_FIRST"),
		.WRITE_MODE_B("WRITE_FIRST")
	) data[7:0] (
		.CLKA(clka), .ADDRA(_addra), .ENA(ena), .WEA(_wea), .DIA(_dina), .DOA(_douta),
		.CLKB(clkb), .ADDRB(addrb), .ENB(enb), .WEB(_web), .DIB(_dinb), .DOB(_doutb),
		.REGCEA(1'b0), .REGCEB(1'b0), .RSTA(1'b0), .RSTB(1'b0)
	);
	
endmodule

module DCacheData(
	input [12:0] addra, input clka, input [31:0] dina, output [31:0] douta, input ena, input [3:0] wea,
	input readReq, input writeReject,
	input [9:0] addrb, input clkb, input [255:0] dinb, input op, output [255:0] doutb, input enb, input web, output [31:0] dirtyb
);
	
	//Pending write operation
	reg [31:0] dina_pending = 32'h0;
	reg [3:0] wea_pending = 4'h0;
	reg [12:0] addra_pending = 13'h0;
	
	//Previous read operation
	reg prevReadReq = 1'b0;
	reg [12:0] prevReadAddr = 13'h0;
	
	wire [31:0] _douta;
	wire [3:0] _wea = (readReq | writeReject | ~ena)? 4'h0: wea_pending;
	wire [12:0] _addra = ena? (readReq? addra: addra_pending): prevReadAddr;
	wire [3:0] wea_accepted = writeReject? 4'h0: wea_pending;
	
	wire readCollision = prevReadReq & (prevReadAddr == addra_pending);
	assign douta[ 7: 0] = (readCollision & wea_accepted[0])? dina_pending[ 7: 0]: _douta[ 7: 0];
	assign douta[15: 8] = (readCollision & wea_accepted[1])? dina_pending[15: 8]: _douta[15: 8];
	assign douta[23:16] = (readCollision & wea_accepted[2])? dina_pending[23:16]: _douta[23:16];
	assign douta[31:24] = (readCollision & wea_accepted[3])? dina_pending[31:24]: _douta[31:24];
	
	always @ (posedge clka)
	if(ena)
	begin
		prevReadReq <= readReq;
		prevReadAddr <= addra;
		if(readReq)
			wea_pending <= wea_accepted;
		else
		begin
			wea_pending <= wea;
			addra_pending <= addra;
			dina_pending <= dina;
		end
	end
	
	wire [255:0] _dinb, _doutb;
	wire [31:0] _dirtyb;
	
	DCacheDataCore data(.addra(_addra), .clka(clka), .dina(dina_pending), .douta(_douta), .ena(1'b1), .wea(_wea),
		.addrb(addrb), .clkb(clkb), .dinb(_dinb), .op(op), .doutb(_doutb), .enb(enb), .web(web), .dirtyb(_dirtyb));
	
	genvar i;
	generate
	for(i = 0; i < 8; i = i+1)
	begin: PORTB_REORDER
		assign _dinb[i*32+7 :i*32   ] = dinb[i*8+7    :i*8    ];
		assign _dinb[i*32+15:i*32+8 ] = dinb[i*8+7+64 :i*8+64 ];
		assign _dinb[i*32+23:i*32+16] = dinb[i*8+7+128:i*8+128];
		assign _dinb[i*32+31:i*32+24] = dinb[i*8+7+192:i*8+192];
		
		assign doutb[i*8+7    :i*8    ] = _doutb[i*32+7 :i*32   ];
		assign doutb[i*8+7+64 :i*8+64 ] = _doutb[i*32+15:i*32+8 ];
		assign doutb[i*8+7+128:i*8+128] = _doutb[i*32+23:i*32+16];
		assign doutb[i*8+7+192:i*8+192] = _doutb[i*32+31:i*32+24];
		
		assign dirtyb[i   ] = _dirtyb[i*4  ];
		assign dirtyb[i+8 ] = _dirtyb[i*4+1];
		assign dirtyb[i+16] = _dirtyb[i*4+2];
		assign dirtyb[i+24] = _dirtyb[i*4+3];
	end
	endgenerate
	
endmodule

module ICacheData(
	input [12:0] addra, input clka, output [31:0] douta, input ena,
	input [8:0] addrb, input clkb, input [511:0] dinb, input enb, input web
);
	wire [511:0] _dinb;
	
	BRAM_SDP_MACRO #(
		.BRAM_SIZE("36Kb"), .DEVICE("7SERIES"),
		.WRITE_WIDTH(64), .READ_WIDTH(4), .DO_REG(0),
		.INIT_FILE ("NONE"), .SIM_COLLISION_CHECK ("ALL"),
		.SRVAL(72'h000000000000000000), .INIT(72'h000000000000000000),
		.WRITE_MODE("WRITE_FIRST")
	) data[7:0] (
		.RDADDR(addra), .RDCLK(clka), .RDEN(ena), .DO(douta),
		.WRADDR(addrb), .WRCLK(clkb), .WREN(enb), .DI(_dinb), .WE({8{web}}),
		.REGCE(1'b0), .RST(1'b0)
	);
	
	genvar i;
	generate for(i = 0; i < 16; i = i+1)
	begin:PORTB_REORDER
		assign _dinb[i*4+3    :i*4    ] = dinb[i*32+3 :i*32   ];
		assign _dinb[i*4+3+64 :i*4+64 ] = dinb[i*32+7 :i*32+4 ];
		assign _dinb[i*4+3+128:i*4+128] = dinb[i*32+11:i*32+8 ];
		assign _dinb[i*4+3+192:i*4+192] = dinb[i*32+15:i*32+12];
		assign _dinb[i*4+3+256:i*4+256] = dinb[i*32+19:i*32+16];
		assign _dinb[i*4+3+320:i*4+320] = dinb[i*32+23:i*32+20];
		assign _dinb[i*4+3+384:i*4+384] = dinb[i*32+27:i*32+24];
		assign _dinb[i*4+3+448:i*4+448] = dinb[i*32+31:i*32+28];
	end
	endgenerate
	
endmodule
