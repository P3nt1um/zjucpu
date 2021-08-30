`timescale 1ns / 1ps
/**
 * Clocking infrastructure for SD card controller.
 * Provides a divided clock output, controller reset signal in divided clock domain,
 * and clock domain crossing for various control/status signals in SD card controller.
 * The divided clock is sourced by a BUFHCE primitive, a horizontal clock buffer,
 * so all the logic driven by the divided clock should be in the same clock region,
 * which means all SD card pins should be in the same I/O bank.
 * 
 * @author Yunye Pu
 */
module SDC_Clocking #(
	parameter DIV_BITS = 8,
	parameter CDC_WB_SD_W = 32,
	parameter CDC_SD_WB_W = 32
)(
	//Clock source
	input wb_clk,
	input sd_clk_in, input sd_rst_in,
	//Output clock
	output sd_clk_out, output reg sd_rst_out = 1,//Output reset is ORed with software reset
	output sd_clk_pad,//Output clock to SD_CLK pin
	//Division value, synchronous to wb_clk
	input [DIV_BITS-1:0] clkdivValue,
	//CDC wb_clk to sd_sysclk
	input [CDC_WB_SD_W-1:0] wb_sd_cdcIn, output reg [CDC_WB_SD_W-1:0] wb_sd_cdcOut,
	//CDC sd_sysclk to wb_clk
	input [CDC_SD_WB_W-1:0] sd_wb_cdcIn, output reg [CDC_SD_WB_W-1:0] sd_wb_cdcOut,
	//Trigger signals
	input cmdStart_in, output reg cmdStart_out = 0,
	input softRst_in, output reg softRst_status = 1
);
	
	//SD clock generation
	reg [DIV_BITS-1:0] divValue_sync = 255;
	reg [DIV_BITS-1:0] divValue_reg = 255;
	reg [DIV_BITS-1:0] divCounter = 0;
	wire [DIV_BITS:0] divCounter2 = {divCounter, 1'b0};
	reg sd_ce;
	
	always @ (posedge sd_clk_in)
	if(sd_rst_in)
		divValue_sync <= 255;
	else
		divValue_sync <= clkdivValue;
	always @ (posedge sd_clk_in)
	begin
		sd_ce <= (divCounter == divValue_reg);
		if(divCounter == divValue_reg)
		begin
			divCounter <= 0;
			divValue_reg <= divValue_sync;
		end
		else
			divCounter <= divCounter + 1;
	end

	BUFHCE #(.CE_TYPE("SYNC"), .INIT_OUT(0)) sdclk_buf(.I(sd_clk_in), .CE(sd_ce), .O(sd_clk_out));
	ODDR #(.DDR_CLK_EDGE("SAME_EDGE"), .INIT(1'b1), .SRTYPE("ASYNC")) sd_clk_fwd (
		.Q(sd_clk_pad), .C(sd_clk_in), .CE(1'b1), .R(1'b0), .S(sd_rst_in),
		.D1(divCounter2 <= divValue_reg),
		.D2(divCounter2 <  divValue_reg)
	);
	
	//Command trigger signal synchronization
	reg cmdStart_trigger = 0;
	reg [2:0] cmdStart_sync = 5'b0;
	always @ (posedge wb_clk)
	if(cmdStart_in) cmdStart_trigger <= !cmdStart_trigger;
	always @ (posedge sd_clk_out)
	begin
		cmdStart_sync <= {cmdStart_sync[1:0], cmdStart_trigger};
		cmdStart_out <= cmdStart_sync[2] ^ cmdStart_sync[1];
	end
	
	//Reset trigger signal synchronization
	reg softRst_trigger = 0;
	reg [2:0] softRst_sync = 2'b0;
	always @ (posedge wb_clk)
	if(softRst_in) softRst_trigger <= !softRst_trigger;
	always @ (posedge sd_clk_out)
		softRst_sync <= {softRst_sync[1:0], softRst_trigger};
	
	//SD reset signal generation
	reg [3:0] sdResetCounter = 0;
	reg sd_rst_in_sync = 1;
	always @ (posedge sd_clk_out)
	begin
		sd_rst_in_sync <= sd_rst_in;
		if(sd_rst_in_sync || (softRst_sync[2] ^ softRst_sync[1]))
			sdResetCounter <= 0;
		else if(~&sdResetCounter)
			sdResetCounter <= sdResetCounter + 1;
		sd_rst_out <= ~&sdResetCounter;
	end
	always @ (posedge wb_clk)
		softRst_status <= sd_rst_out;
	
	//Clock domain crossing
	always @ (posedge wb_clk)
		sd_wb_cdcOut <= sd_wb_cdcIn;
	
	always @ (posedge sd_clk_out)
		wb_sd_cdcOut <= wb_sd_cdcIn;
	
endmodule
