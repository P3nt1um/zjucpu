/*
字符信息共32位: |背景色12位|字体色12位|字符编码8位|

*/

`timescale 1ns / 1ps
/**
* VGA driver with character mode and graphics mode. Graphics mode can be disabled
* (excluded from synthesis & implementation) by setting the parameter to 0.
* Contains a hardware cursor in character mode.
* 
* @author Yunye Pu
*/

module VGADevice #(
	parameter GRAPHIC_VRAM = 1
) (
	//驱动VGA更新画面的时钟信号
	input clkVGA,
	//仅仅驱动VRAM写入的时钟信号
	input clkMem,

	//Control registers
    //光标属性: |空8位|光标频率8位|光标纵坐标8位|光标横坐标8位| 
	input [31:0] ctrl0,
	//图形VGA控制寄存器
	input [31:0] ctrl1,

	//处理器提供的用于更新VRAM的数据
	input [31:0] addrBus,//处理器提供的地址
	input [31:0] dataInBus,//处理器提供的数据
	input [3:0] weBus,//处理器提供的字节选通写使能信号

	//CPU IO interface(Graphic); addr[11:2]=X, addr[20:12]=Y
	//使能图形模式
	input en_Graphic,

	//CPU IO interface(Character); appears 128x32, uses addr[13:2]
	//一行共128个字符，一列共32个字符
	//使能字符模式
	input en_Char,
	//处理器更新VRAM某32位数据后同时返回该32位数据
	output [31:0] dataOut_Char,

	//内部使用的VGA信号
	//高7位为像素所在字符在屏幕的横坐标，低3位为像素在字符中的横坐标
	output [9:0] HCoord,
	//高5位为像素所在字符在屏幕的纵坐标，低4位为像素在字符中的纵坐标
	output [8:0] VCoord,
	//指示当前是否是在刷新新的一帧画面
	output frameStart,

	//直接发送给VGA端口
	//最终确定的像素颜色
	output [11:0] videoOut,
	//VGA同步信号
	output HSync,
	output VSync
);

//Graphic VRAM logic
wire [11:0] colorG;

generate if (GRAPHIC_VRAM != 0)
	begin: GRAPHIC_VRAM_EXIST
		reg [18:0] addrBus_reg, addra_reg;
		reg [1:0] ena_reg, wea_reg;
		wire [18:0] addra, addrb;
		reg [11:0] dina_reg0, dina_reg1;

		//
		assign addra = addrBus_reg[18:10] * 640 + addrBus_reg[9:0];
		assign addrb = VCoord * 640 + HCoord;
		
		//图形VRAM实体，与下方的字符VRAM并存
		GraphicVRAM RAM0 (
			//写入图形VRAM
			.clka(clkMem),//写入驱动时钟
			.ena(ena_reg[1]),//
			.wea(wea_reg[1]),//
			.addra(addra_reg),//写入地址
			.dina(dina_reg1),//写入数据，即12位颜色信息

			//读出图形VRAM
			.clkb(clkVGA),//读出驱动时钟
			.addrb(addrb),//读出地址
			.doutb(colorG)//读出数据，即12位颜色信息
		);

		always @ (posedge clkMem) begin
			dina_reg0 <= dataInBus[11:0];
			addrBus_reg <= addrBus[20:2];
			wea_reg[0] <= &weBus;
			ena_reg[0] <= en_Graphic;
			
			dina_reg1 <= dina_reg0;
			addra_reg <= addra;
			wea_reg[1] <= wea_reg[0];
			ena_reg[1] <= ena_reg[0];
		end
	end else begin: GRAPHIC_VRAM_NOTEXIST
		assign colorG = 12'h0;
	end
endgenerate

//Character VRAM logic

//VRAM中的字符信息，共32位: |背景色12位|字体色12位|字符编码8位|
wire [31:0] chData;//+1 cycle

//最终确定的字体色与背景色
reg [11:0] colorC_F, colorC_B;//+2 cycle

//当前像素位于所在字符的横坐标
reg [2:0] HCoord_reg;//+1 cycle

//当前像素是否处于所在字符的字形内
wire charDot;//+2 cycle

//当前需要点亮的像素是否处于明亮光标下
wire inCursor;//+1 cycle

//VRAM本体
CharVRAM RAM1 (
	.clka(clkMem),
	.ena(en_Char),
	.wea(weBus),
	//处理器将新数据写入VRAM时使用的地址
	.addra(addrBus[13:2]),
	//处理器提供的将写入VRAM的数据
	.dina(dataInBus),
	.douta(dataOut_Char),

	.clkb(clkVGA),

	//纵坐标作为高5位，横坐标作为低7位
	//拼合成的地址可直接用于在VRAM中确定唯一一个字符信息
	//可以将VRAM想象成一个矩阵，这个地址则刚好构成一个横纵坐标
	.addrb({VCoord[8:4], HCoord[9:3]}),

	//从VRAM中读出当前要打印的字符的32位信息
	.doutb(chData)
);

//ROM中存有所有ASCII字符的点阵信息
CharROM ROM0 (
	.clk(clkVGA),

	//从VRAM中取出的32位信息提取低8位的ASCII编码送入ROM中
	.ascii(chData[7:0]),
	//再加上该字符中指定像素的横纵坐标
	.x(HCoord_reg),
	.y(VCoord[3:0]),

	//得知是否需要绘制该点
	.dot(charDot)
);

//最终确定该像素将被填入的颜色
reg[11:0] colorMixed;

VGAScan #(
	.HCALIBRATE(0),
	.VCALIBRATE(0)
) U0 (
	.clk(clkVGA),

	//输出字符与像素的横纵坐标信息
	.HAddr(HCoord),
	.VAddr(VCoord),

	//传入VGA设备的同步信号
	.HSync(HSync),
	.VSync(VSync),

	//输入当前像素颜色
	.videoIn(colorMixed),

	//指示是否开始新一帧画面的描绘
	.frameStart(frameStart),

	//输出最终确定的像素颜色
	.videoOut(videoOut)
);

always @ (posedge clkVGA) begin
	//确定当前打印的像素所在字符中的3位横坐标
	HCoord_reg <= HCoord[2:0];

    //字符信息共32位: |背景色12位|字体色12位|字符编码8位|
	//由此确定当前字符的背景色与字体色

	//判断当前打印的字符是否处于明亮的光标下
	if (inCursor) begin
		//若处于明亮的光标下，需要将字体颜色与背景颜色颠倒
		colorC_F <= chData[31:20];
		colorC_B <= chData[19:8];
	end else begin
		//正常情况下则不需要
		colorC_F <= chData[19:8];
		colorC_B <= chData[31:20];
	end
end

//确定颜色
always @* begin
	//此时无需关心是否因为光标处于该字体上而颠倒颜色
	//这项工作已经由上面的逻辑完成了，屏蔽了这一层抽象

	if (charDot)
		//从ROM得知该像素需要被点亮
		//则该像素应被填入字体色
		colorMixed <= colorC_F;
		// colorMixed <= 12'h0f0;
	else if ((colorC_B == 12'h0) & ctrl1[0])
		//否则如果背景色是黑色且使用图形VGA
		colorMixed <= colorG;
		// colorMixed <= 12'hff0;
	else
		//其他情况下该像素直接填入背景色
		colorMixed <= colorC_B;
		// colorMixed <= 12'h00f;
end

vgaCursorGen cursor (
	.clk(clkVGA),

	.ctrl(ctrl0),

	.HCoord(HCoord),
	.VCoord(VCoord),

	//判定是否需要颠倒该字符的字体色与背景色
	.en(inCursor)
);

endmodule

module vgaCursorGen (
	input clk,
	input [31:0] ctrl,
	input [9:0] HCoord,
	input [8:0] VCoord,
	
	output reg en
);

//光标性质: |光标频率8位|光标纵坐标8位|光标横坐标8位| 
//见vga.c，三个域皆8位，但横纵坐标并没有全部使用
`define CURSOR_X ctrl[6:0]//光标横坐标7位，合一行128个字符
`define CURSOR_Y ctrl[12:8]//光标纵坐标5位，合一列32个字符
`define CURSOR_FREQ ctrl[23:16]//光标闪烁频率8位

//判定当前光标处于明还是暗的状态
reg blink = 0;

//光标计数器组，计数器一计数8位的频率
//计数器零是放大器，使时间间隔变为频率乘上一个倍数
reg [18:0] counter0 = 0;
reg [7:0] counter1 = 0;

//判定是否
wire en_ascii;

always @ (posedge clk) begin
	if (counter0 == 0) begin
		//放大器，使时间间隔放大390625倍
		counter0 <= 19'd390625;

		//光标闪烁逻辑
		if (`CURSOR_FREQ == 0)
			//若闪烁频率为零，则光标永远不会亮起
			blink <= 1'b0;
		else if (counter1 == 0)
			//每当计数器一完成一次计数，光标就会反转一次
			blink <= ~blink;
		
		//计数器一更新逻辑
		if (counter1 == 0)
			//当减为零后重新赋值
			counter1 <= `CURSOR_FREQ;
		else
			//在时钟上升沿自减一
			counter1 <= counter1 - 1'b1;
	end else
		counter0 <= counter0 - 1'b1;
	
	//判定打印当前字符是否处于明亮的光标下
	//首先blink为一时代表光标处于明亮状态
	//en_ascii表示光标位于字符所在位置
	//此时打印该字符时需要将字体颜色与背景颜色颠倒以达到光标的效果
	en <= blink & en_ascii;
end

//比较当前光标所在字符的坐标与传入的正在打印的像素所在字符的坐标
//若完全一致则说明该光标位于字符所在位置
assign en_ascii = (HCoord[9:3] == `CURSOR_X) & (VCoord[8:4] == `CURSOR_Y);

endmodule
