/*

*/

`timescale 1ns / 1ps
/**
 * VGA scanning module. 640x480@59.94Hz; 59.5238Hz in practice since
 * it is difficult to generate a 25.175MHz clock. Input clock runs at 25MHz.
 * Color depth is 4 bits for each channel.
 * 
 * @author Yunye Pu
 */
module VGAScan (
	input clk,

	input [11:0] videoIn,

	output [9:0] HAddr,
	output [8:0] VAddr,

	output reg frameStart,

	output reg HSync,
	output reg VSync,

	output reg [11:0] videoOut
);

//
parameter PIPE_STAGE = 10'd20;//Must be at least 2.

//横向和纵向的像素偏移校准值，可以在需要时手动调节
parameter HCALIBRATE = 10'd200;
parameter VCALIBRATE = 10'd20;

//为了美观，横向的起始像素和结束像素的横坐标
//一行总共能显示(783-143)/8=80个字符
localparam HSTART = 10'd143 + HCALIBRATE - PIPE_STAGE;
localparam HEND = 10'd783 + HCALIBRATE - PIPE_STAGE;

//纵向的起始像素和结束像素的纵坐标
//一列总共能显示(515-35)/16=30个字符
localparam VSTART = 10'd35 + VCALIBRATE;
localparam VEND = 10'd515 + VCALIBRATE;

//扫描器计数器，从左到右从上到下一行一行遍历每一个像素
reg [9:0] HCount;
reg [9:0] VCount;

//
reg [PIPE_STAGE-1:0] HActive_FF;

//根据扫描器计数器判定当前指向的像素是否处于内矩形中
//只有处于内矩形中的像素才给予颜色更新
wire HActive, VActive;
assign HActive = (HCount >= HSTART && HCount < HEND);
assign VActive = (VCount >= VSTART && VCount < VEND);

//扫描器计数器减去相应的起始值得到在内矩形中的偏移量
//由于显存VRAM中实际只保存内矩形中所有字符的信息而不关心周围的
//所以真正用于图像处理的应该是这个偏移量而不是计数器
wire [9:0] _HAddr, _VAddr;
assign _HAddr = HCount - HSTART;
assign _VAddr = VCount - VSTART;
assign HAddr = _HAddr;
assign VAddr = _VAddr[8:0];

//初始时计数器指向左上角的像素
initial begin
	HCount = 10'h0;
	VCount = 10'h0;
end

always @ (posedge clk) begin
	//更新纵向和横向计数器，判定是否开始绘制新一帧画面
	//扫描器从左到右从上到下一行一行遍历每一个像素
	if (HCount == 10'd799) begin
		//清零横向计数器
		HCount = 10'h0;

		if (VCount == 10'd524) begin
			//清零纵向计数器
			VCount = 10'h0;

			//当重新遍历到第一行时，判定开始绘制新一帧画面
			frameStart <= 1'b1;
		end else
			//指向下一行
			VCount = VCount + 1'b1;
	end else begin
		//指向下一列
		HCount = HCount + 1'b1;

		//除了位于第一行第一列的特殊位置，其余都判定失败
		frameStart <= 1'b0;
	end

	//判定填色
	if (HActive_FF[0] && VActive)
		//内矩形内部的像素填入已经确定好的颜色
		videoOut <= videoIn;
		// videoOut <= 12'hF0F;
	else
		//内矩形外围的像素一律填黑
		videoOut <= 12'hF00;

	//横坐标的判定要慢一个时钟周期
	HActive_FF <= {HActive, HActive_FF[PIPE_STAGE-1:1]};

	//同步信号
	HSync <= (HCount > 10'd95);
	VSync <= (VCount > 10'd1);
end

endmodule
