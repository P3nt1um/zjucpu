`timescale 1ns / 1ps
/**
 * Generates and synchronizes asynchronous reset signals in each clock domain.
 * (Note: asynchronous reset should be synchronized so that it asserts asynchronously
 * but de-asserts synchronously.)
 * 
 * @author Yunye Pu
 */
module ResetGen #(
	parameter NUM_CLOCKS = 1,
	parameter FILTER_BITS = 22
)(
	input [NUM_CLOCKS-1:0] clk, input clkFilter,
	input rstIn, input mmcmLocked,
	output reg [NUM_CLOCKS-1:0] rstOut = {NUM_CLOCKS{1'b1}}
);
	
	reg [FILTER_BITS-1:0] filterCounter = 0;
	reg rstFiltered = 1'b1;
	always @ (posedge clkFilter or posedge rstIn)
	if(rstIn)
		filterCounter <= 0;
	else if(~&filterCounter & mmcmLocked)
		filterCounter <= filterCounter + 1'b1;
	always @ (posedge clkFilter or negedge mmcmLocked)
	if(~mmcmLocked)
		rstFiltered <= 1'b1;
	else
		rstFiltered <= ~&filterCounter;
	
	genvar i;
	generate for(i = 0; i < NUM_CLOCKS; i = i+1)
	begin:RST_SYNC
		always @ (posedge clk[i] or negedge mmcmLocked)
		if(~mmcmLocked)
			rstOut <= 1'b1;
		else
			rstOut <= rstFiltered;
	end
	endgenerate
	
endmodule
