`timescale 1ns / 1ps
/**
 * A single TLB header for matching virtual address.
 * 
 * @author Yunye Pu
 */
`include "TLBDefines.vh"

module TLBHeader(input clk, input we,
	input [31:0] vAddrI, output matchI, output oddI,
	input [31:0] vAddrD, output matchD, output oddD,
	input [7:0] ASID, input [18:0] VPN2, output probeMatch,//Interface for TLBP instruction
	
	input G, input [15:0] pageMask
);
	reg [44:0] headerData = 0;
	
	always @ (posedge clk)
	if(we)
		headerData <= {pageMask, VPN2, G, ASID};
	
	wire [16:0] evenOddBitMask = {headerData[`PageMask], 1'b1} & {1'b1, ~headerData[`PageMask]};
	assign oddI = |(vAddrI[28:12] & evenOddBitMask) & matchI;
	assign oddD = |(vAddrD[28:12] & evenOddBitMask) & matchD;
	wire ASIDMatch = (headerData[`G] | (headerData[`ASID] == ASID));
	assign matchI = (((headerData[`VPN2] ^ vAddrI[31:13]) & {3'b111, ~headerData[`PageMask]}) == 19'h0) & ASIDMatch;
	assign matchD = (((headerData[`VPN2] ^ vAddrD[31:13]) & {3'b111, ~headerData[`PageMask]}) == 19'h0) & ASIDMatch;
	assign probeMatch = (((headerData[`VPN2] ^ VPN2) & {3'b111, ~headerData[`PageMask]}) == 19'h0) & ASIDMatch;

endmodule
