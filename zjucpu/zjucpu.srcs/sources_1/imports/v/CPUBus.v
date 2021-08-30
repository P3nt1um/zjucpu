`timescale 1ns / 1ps
/**
 * Data bus decoder and multiplexer. Since data bus has a single master(the CPU), 
 * simple decoding and multiplexing logic is sufficient.
 * 
 * @author Yunye Pu
 */
module CPUBus(
	input clk, input rst,
	//CPU bus
	input [31:0] addrBus, input masterEN, output reg [31:0] dataToCPU, output nakDBus,
	//BIOS memory, bfc00000-bfc04000, 4K word
	output progMemEN, input [31:0] progMemData, input progMemNak,
	//Character VRAM, bfc04000-bfc08000, 4K word
	output cVramEN, input [31:0] cVramData, input cVramNak,
	//Graphic VRAM, bfe00000-c0000000, 512K word
	output gVramEN, input [31:0] gVramData, input gVramNak,
	//GPIO, bfc09000-bfc09100, 64 word
	output ioEN, input [31:0] ioData, input ioNak,
	//SD control, bfc09100-bfc09200, 64 word
	output sdCtrlEN, input [31:0] sdCtrlData, input sdCtrlNak,
	//SD data, bfc08000-bfc09000, 1K word(8 sectors)
	output sdDataEN, input [31:0] sdDataData, input sdDataNak
);
	reg [5:0] en_reg;
	wire [5:0] nak = {progMemNak, cVramNak, gVramNak, ioNak, sdCtrlNak, sdDataNak};
	assign nakDBus = |(en_reg & nak);
	
	always @ (posedge clk)
		if(!nakDBus) en_reg <= {progMemEN, cVramEN, gVramEN, ioEN, sdCtrlEN, sdDataEN};
	
	assign progMemEN = masterEN & (addrBus[28:14] == 15'b1_1111_1100_0000_00);
	assign cVramEN   = masterEN & (addrBus[28:14] == 15'b1_1111_1100_0000_01);
	assign gVramEN   = masterEN & (addrBus[28:21] ==  8'b1_1111_111);
	assign ioEN      = masterEN & (addrBus[28:8]  == 21'b1_1111_1100_0000_1001_0000);//bfc090
	assign sdCtrlEN  = masterEN & (addrBus[28:8]  == 21'b1_1111_1100_0000_1001_0001);//bfc091
	assign sdDataEN  = masterEN & (addrBus[28:12] == 17'b1_1111_1100_0000_1000);//bfc08
	
	always @*
	begin
		case(en_reg)
		6'b100000: dataToCPU <= progMemData;
		6'b010000: dataToCPU <= cVramData;
		6'b001000: dataToCPU <= gVramData;
		6'b000100: dataToCPU <= ioData;
		6'b000010: dataToCPU <= sdCtrlData;
		6'b000001: dataToCPU <= sdDataData;
		default:   dataToCPU <= 32'h0;
		endcase
	end
	
endmodule
