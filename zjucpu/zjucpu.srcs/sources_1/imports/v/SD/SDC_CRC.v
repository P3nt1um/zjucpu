`timescale 1ns / 1ps
/**
 * CRC modules used in CMD and DAT lines. CRC results are output serially.
 * 
 * @author Yunye Pu
 */
module SDC_CRC16(
	input clk, input ce, input din,
	input clr, output crc_out
);
	reg [15:0] crc;
	wire crc_in = clr? 1'b0: crc_out ^ din;
	assign crc_out = crc[3] ^ crc[10] ^ crc[15];
	always @ (posedge clk)
	if(ce || clr) crc <= {crc[14:0], crc_in};
	
endmodule

module SDC_CRC7(
	input clk, input ce, input din,
	input clr, output crc_out
);
	reg [6:0] crc;
	wire crc_in = clr? 1'b0: crc_out ^ din;
	assign crc_out = crc[3] ^ crc[6];
	always @ (posedge clk)
	if(ce || clr) crc <= {crc[5:0], crc_in};
	
endmodule
