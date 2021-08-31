`timescale 1ns / 1ps
/**
 * 5x5 button pad driver.
 * 
 * @author Yunye Pu
 */
module Keypad (
	input clk,

	//直接由按钮产生的原始信号
	inout [4:0] keyX,
	inout [4:0] keyY,

	//按钮编码，标识唯一一个按钮
	//低三位横坐标，高三位纵坐标
	output reg [5:0] keyCode,

	//判定按钮是否按下
	output ready,
	//
	output [9:0] dbg_keyLine
);

//state为1时接收Y信号，清空X信号
//state为0时接收X信号，清空Y信号
reg state = 1'b0;

//保存按键情况
reg [4:0] keyLineX;
reg [4:0] keyLineY;

//有规律地清空从按键传来的信号
//这样有助于按键判定逻辑对按键是否按下进行初步判定
assign keyX = state? 5'b00000: 5'bzzzzz;
assign keyY = state? 5'bzzzzz: 5'b00000;

always @ (posedge clk) begin
	if (state)
		//state为1时保存Y信号
		keyLineY <= keyY;
	else
		//state为0时保存X信号
		keyLineX <= keyX;
	
	//状态在每个时钟不断切换
	state <= ~state;
end

//打包输出用于调试
assign dbg_keyLine = ~{keyLineY, keyLineX};

//横向判定是否按下某个按钮
wire ready_raw1 = (keyLineX == 5'b11110) |
				  (keyLineX == 5'b11101) |
				  (keyLineX == 5'b11011) |
				  (keyLineX == 5'b10111) |
				  (keyLineX == 5'b01111);
//纵向判定是否按下某个按钮
wire ready_raw2 = (keyLineY == 5'b11110) |
				  (keyLineY == 5'b11101) |
				  (keyLineY == 5'b11011) |
				  (keyLineY == 5'b10111) |
				  (keyLineY == 5'b01111);

//只有横向纵向都成功判定，才能判定真的按下了一个按钮
//但该按钮判定未经除颤，还是不准确的
wire ready_raw = ready_raw1 & ready_raw2;

//生成按键码
always @* begin
	case (keyLineX)
		5'b11110: keyCode[2:0] <= 3'h0;
		5'b11101: keyCode[2:0] <= 3'h1;
		5'b11011: keyCode[2:0] <= 3'h2;
		5'b10111: keyCode[2:0] <= 3'h3;
		5'b01111: keyCode[2:0] <= 3'h4;
		default: keyCode[2:0] <= 3'h7;
	endcase
	
	case (keyLineY)
		5'b11110: keyCode[5:3] <= 3'h0;
		5'b11101: keyCode[5:3] <= 3'h1;
		5'b11011: keyCode[5:3] <= 3'h2;
		5'b10111: keyCode[5:3] <= 3'h3;
		5'b01111: keyCode[5:3] <= 3'h4;
		default: keyCode[5:3] <= 3'h7;
	endcase
end

//按钮除颤
AntiJitter #(4)
rdyFilter (
	.clk(clk),
	//键盘扫描逻辑判定按下或松开了一个按钮
	.I(ready_raw),
	//经过除颤最终确定是否真的按下或松开了一个按钮
	.O(ready)
);

endmodule
