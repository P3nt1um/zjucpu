`timescale 1ns / 1ps
/**
 * 4-port register file implemented using RAM32M distributed memory primitive.
 * 
 * @author Yunye Pu
 */
module RegFile(
	input clk, input rst, input stall,
	input [4:0] rsAddr, input [4:0] rtAddr, input [4:0] rdAddr, input [4:0] rtAddrDelay,
	output [31:0] rs, output [31:0] rt, output [31:0] rtDelay, input [31:0] rd
);
	
	RAM32M U0[15:0] (.WCLK(clk), .WE(|rdAddr & ~stall),
        .ADDRA(rsAddr), .ADDRB(rtAddr), .ADDRC(rtAddrDelay), .ADDRD(rdAddr),
        .DIA(rd), .DIB(rd), .DIC(rd), .DID(rd),
        .DOA(rs), .DOB(rt), .DOC(rtDelay));
	
endmodule
