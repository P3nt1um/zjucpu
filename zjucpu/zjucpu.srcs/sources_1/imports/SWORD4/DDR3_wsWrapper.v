`timescale 1ns / 1ps
/**
 * Adapts the user interface of DDR3 MIG core to Wishbone slave interface.
 * 
 * @author Yunye Pu
 */
module DDR3_wsWrapper(
	//input clkIn, 
	input sysclk_p,
	input sysclk_n,
	input rst, output clkOut,
	//Wishbone slave interface
	input [31:0] ws_addr, input [511:0] ws_din,
	input [63:0] ws_dm, input ws_cyc, input ws_stb, input ws_we,
	output reg ws_ack = 0, output [511:0] ws_dout,
	
	//debug signals
	output [2:0] dbg_state, //output [7:0] dbg_signal,
	
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
	output [0:0] ddr3_odt
);
	localparam MEM_READ = 3'b001;
	localparam MEM_WRITE = 3'b000;
	
	reg [22:0] addr_reg;
	reg addrLow = 1'b0;
	reg [511:0] rdData;
	reg [511:0] wrData;
	reg [63:0] wrDm;
	
	localparam STATE_READY = 3'b000;
	localparam STATE_READ = 3'b001;
	localparam STATE_READ_WAIT = 3'b010;
	localparam STATE_WRITE_DATA = 3'b011;
	localparam STATE_WRITE_CMD = 3'b100;
	localparam STATE_WS_END = 3'b111;
	reg [2:0] state = STATE_READY;
	
	wire [27:0] app_addr;
	wire [2:0] app_cmd;
	wire app_en;
	wire app_rdy;
	
	wire [255:0] app_wdf_data;
	wire [31:0] app_wdf_mask;
	wire app_wdf_end;
	wire app_wdf_wren;
	wire app_wdf_rdy;
	
	wire [255:0] app_rd_data;
	wire app_rd_data_valid;
	
	always @ (posedge clkOut)
	case(state)
	STATE_READY: begin
		addrLow <= 1'b0;
		if(ws_cyc & ws_stb)
		begin
			addr_reg <= ws_addr[28:6];
			if(ws_we)
			begin
				state <= STATE_WRITE_DATA;
				wrData <= ws_din;
				wrDm <= ws_dm;
				ws_ack <= 1'b1;
			end
			else
				state <= STATE_READ;
		end
	end
	STATE_WRITE_DATA: begin
		ws_ack <= 1'b0;
		if(app_wdf_rdy)
		begin
			addrLow <= addrLow + 1'b1;
			if(addrLow == 1'b1)
				state <= STATE_WRITE_CMD;
		end
	end
	STATE_WRITE_CMD: begin
		if(app_rdy)
		begin
			addrLow <= addrLow + 1'b1;
			if(addrLow == 1'b1)
				state <= STATE_READY;
		end
	end
	STATE_READ: begin
		if(app_rdy)
		begin
			addrLow <= addrLow + 1'b1;
			if(addrLow == 1'b1)
				state <= STATE_READ_WAIT;
		end
	end
	STATE_READ_WAIT: begin
		if(app_rd_data_valid)
		begin
			addrLow <= addrLow + 1'b1;
			rdData <= {app_rd_data, rdData[511:256]};
			if(addrLow == 1'b1)
			begin
				state <= STATE_WS_END;
				ws_ack <= 1'b1;
			end
		end
	end
	STATE_WS_END: begin
		ws_ack <= 1'b0;
		state <= STATE_READY;
	end
	default: state <= STATE_READY;
	endcase
	
	assign app_en = (state == STATE_WRITE_CMD) | (state == STATE_READ);
	assign app_wdf_wren = (state == STATE_WRITE_DATA);
	assign app_wdf_end = app_wdf_wren;
	assign app_cmd = (state == STATE_WRITE_CMD)? MEM_WRITE: MEM_READ;
//	assign app_addr = {addr_reg, addrLow, 4'h0};
	assign app_addr = {1'b0, addr_reg, addrLow, 3'h0};//This might be an issue in the MIG core
	
	assign ws_dout = rdData;
	
	assign app_wdf_data = addrLow? wrData[511:256]: wrData[255:0];
	assign app_wdf_mask = addrLow? wrDm[63:32]: wrDm[31:0];

	DDR3 u_DDR3 (
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
		.ddr3_odt(ddr3_odt),
		.init_calib_complete(init_calib_complete),

		.app_addr(app_addr),
		.app_cmd(app_cmd),
		.app_en(app_en),
		.app_rdy(app_rdy),

		.app_wdf_data(app_wdf_data),
		.app_wdf_mask(~app_wdf_mask),
		.app_wdf_end(app_wdf_end),
		.app_wdf_wren(app_wdf_wren),
		.app_wdf_rdy(app_wdf_rdy),

		.app_rd_data(app_rd_data),
		.app_rd_data_end(app_rd_data_end),
		.app_rd_data_valid(app_rd_data_valid),

		.app_sr_req(1'b0),
		.app_ref_req(1'b0),
		.app_zq_req(1'b0),
		.app_sr_active(),
		.app_ref_ack(),
		.app_zq_ack(),

		.sys_clk_p(sysclk_p),
		.sys_clk_n(sysclk_n),
		.ui_clk(clkOut),
		.ui_clk_sync_rst(),
		.sys_rst(1'b0)
	);
	
	assign dbg_state = state;
	
endmodule
