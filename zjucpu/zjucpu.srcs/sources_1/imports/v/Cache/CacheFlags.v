`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2016/12/05 12:35:02
// Design Name: 
// Module Name: CacheFlags
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
module CacheLRUBit(
	input clk, input req,
	input [8:0] addr, input [1:0] hit, output flag
);
	//Output: 0 for entryB, 1 for entryA least-recently used.

	reg data[511:0];
	wire we = (hit[1] ^ hit[0]) & req;
	always @ (posedge clk)
		if(we) data[addr] <= hit[0];
	assign flag = data[addr];

	integer i;
	initial for(i = 0; i < 512; i = i+1) data[i] <= 1'b0;
	
endmodule

module DCacheTag(
	input clka, input [1:0] wea, input [8:0] addra,
	input [35:0] dina, output reg [35:0] douta
);
	
	reg [35:0] data[511:0];
	
	wire [3:0] _wea = {wea[1], wea[1], wea[0], wea[0]};
	always @ (posedge clka)
	begin
		if(_wea[0]) data[addra][ 8: 0] = dina[ 8: 0];
		if(_wea[1]) data[addra][17: 9] = dina[17: 9];
		if(_wea[2]) data[addra][26:18] = dina[26:18];
		if(_wea[3]) data[addra][35:27] = dina[35:27];
		douta <= data[addra];
	end

	integer i;
	initial for(i = 0; i < 512; i = i+1) data[i] <= 36'h000040000;
	
endmodule

module ICacheTag (
	input clka, input [1:0] wea, input [8:0] addra, input [35:0] dina, output [35:0] douta,
	input [8:0] addrb, output [35:0] doutb
);
	
	reg [35:0] data[511:0];
	
	always @ (posedge clka)
	begin
		if(wea[0]) data[addra][17: 0] = dina[17: 0];
		if(wea[1]) data[addra][35:18] = dina[35:18];
	end
	assign douta = data[addra];
	assign doutb = data[addrb];

	integer i;
	initial for(i = 0; i < 512; i = i+1) data[i] <= 36'h000040000;
	
endmodule
