`timescale 1ns / 1ps

module AntiJitter #(
	//计数器宽度
	parameter WIDTH = 20,
	parameter INIT = 1'b0
) (
	input clk,

	//原始输入信号
	input I,
	//经判定后输出的输入信号
	output reg O = INIT
);

//初始化计数器
reg [WIDTH-1:0] cnt = {WIDTH{INIT}};

always @ (posedge clk) begin
	if (I) begin
		//按钮按下或开关开启瞬间，输入为高电平

		if (&cnt)
			//直到累积到全一之后判定输入高电平有效
			O <= 1'b1;
		else
			//计数器在每个clk上升沿不断自增
			cnt <= cnt + 1'b1;
	end else begin
		//按钮松开或开关关闭瞬间，输入为低电平

		if (|cnt)
			//计数器在每个clk上升沿不断自减，直到清零
			cnt <= cnt - 1'b1;
		else
			//清零时判定输入为低电平有效
			O <= 1'b0;
	end
end

endmodule
