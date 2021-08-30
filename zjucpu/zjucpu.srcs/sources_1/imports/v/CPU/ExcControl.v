`timescale 1ns / 1ps
/**
 * This module gathers various exception signals from CPU,
 * and informs coprocessor 0 and CPU pipeline whenever normal
 * execution flow should be changed.
 * 
 * @author Yunye Pu
 */
module ExcControl(input clk, input rst, 
	//IF stage exceptions
	input adErrI, input TLBMissI, input TLBInvalidI,
	//ID stage exceptions
	input RI, input breakpoint, input syscall, input cpU,
	//EX stage exceptions
	input overflow, input trap, input adEL, input adES, input memWrite,
	input TLBMissD, input TLBInvalidD, input TLBModD,
	input eret, input interrupt,
	//Pipeline flush signals to supress exceptions
	input [2:0] pipelineFlush,
	//PC and BD
	input [31:0] ID_PC, input [31:0] EX_PC,
	input ID_BD, input EX_BD, input IF_BD,
	//Output to CPU pipeline
	output ID_excFlush, output EX_excFlush, output Mem_excFlush,
	output [31:0] excPC, output useExcPC, output Mem_excFlush_unmapped,
	//COP0 interface
	input [31:0] regEPCIn, input [31:0] regErrorEPCIn,
	input statusEXL, input statusBEV, input statusERL, input causeIV,
	output [31:0] regEPCOut, output bdOut, output [4:0] excCodeOut,
	output excAccept,
	
	input [31:0] IF_PC, input [31:0] memVAddr,
	output [31:0] badVAddr, output writeBadVAddr
);
	//AdEL(I), TLBInvalidI, TLBMissI, RI, Bp, Sys, cpU, Ov, Tr, AdEL, AdES, TLBMissDL, TLBMissDS, Mod, TLBInvalidDL, TLBInvalidDS, Int
	reg [16:0] excSignalReg;
	wire _IF_exc = (adErrI | TLBMissI | TLBInvalidI) & ~pipelineFlush[2];
	wire _ID_exc = (RI | breakpoint | syscall | cpU) & ~pipelineFlush[1];
	wire _EX_exc = (overflow | trap | adEL | adES | TLBMissD | TLBInvalidD | TLBModD | interrupt) & ~pipelineFlush[0];
	wire _eret = eret & ~pipelineFlush[0];
	
	assign ID_excFlush = _IF_exc | _ID_exc | _EX_exc | _eret;
	assign EX_excFlush = _ID_exc | _EX_exc | _eret;
	assign Mem_excFlush = _EX_exc | _eret;
	
	assign Mem_excFlush_unmapped = ((overflow | trap | adEL | adES) & ~pipelineFlush[0]) | _eret;
	
	reg [3:0] vectorOffset;
	always @*
	begin
		if(~statusEXL)
		begin
			if((TLBMissI & ~_ID_exc & ~_EX_exc) | TLBMissD)
				vectorOffset <= 4'd0;
			else if(interrupt & causeIV)
				vectorOffset <= 4'd4;
			else
				vectorOffset <= 4'd3;
		end
		else
			vectorOffset <= 4'd3;
	end
	wire [31:0] excPC_, eretPC;
	assign excPC_[31:12] = statusBEV? 20'hbfc00: 20'h80000;
	assign excPC_[11] = 1'b0;
	assign excPC_[6:0] = 7'h0;
	assign excPC_[10:7] = statusBEV? 4'd4 + vectorOffset: vectorOffset;
	assign eretPC = statusERL? regErrorEPCIn: regEPCIn;
	assign excPC = eret? eretPC: excPC_;
	assign useExcPC = ID_excFlush;
	assign excAccept = _IF_exc | _ID_exc | _EX_exc;//Excludes eret.
	
`define CODE_INT 4'h0
`define CODE_MOD 4'h1
`define CODE_TLBL 4'h2
`define CODE_TLBS 4'h3
`define CODE_ADEL 4'h4
`define CODE_ADES 4'h5
`define CODE_SYS 4'h8
`define CODE_BP 4'h9
`define CODE_RI 4'ha
`define CODE_CPU 4'hb
`define CODE_OV 4'hc
`define CODE_TR 4'hd
	
	reg [3:0] excCode;//bit 5 and 4 of excCode are always 0
	reg [32:0] EPC_;
	reg [32:0] IF_PC_reg, ID_PC_reg, EX_PC_reg;
	reg [31:0] IF_VAddr;
	reg [31:0] memVAddr_reg;
	always @*
	begin
		//AdEL(I), TLBInvalidI, TLBMissI, RI, Bp, Sys, cpU, Ov, Tr, AdEL, AdES, TLBMissDL, TLBMissDS, Mod, TLBInvalidDL, TLBInvalidDS, Int
		casex(excSignalReg)
		17'b10000000000000000: begin excCode <= `CODE_ADEL; EPC_ <= IF_PC_reg; end
		17'bx1000000000000000: begin excCode <= `CODE_TLBL; EPC_ <= IF_PC_reg; end
		17'bxx100000000000000: begin excCode <= `CODE_TLBL; EPC_ <= IF_PC_reg; end
		17'bxxx10000000000000: begin excCode <= `CODE_RI;   EPC_ <= ID_PC_reg; end
		17'bxxxx1000000000000: begin excCode <= `CODE_BP;   EPC_ <= ID_PC_reg; end
		17'bxxxxx100000000000: begin excCode <= `CODE_SYS;  EPC_ <= ID_PC_reg; end
		17'bxxxxxx10000000000: begin excCode <= `CODE_CPU;  EPC_ <= ID_PC_reg; end
		17'bxxxxxxx1000000000: begin excCode <= `CODE_OV;   EPC_ <= EX_PC_reg; end
		17'bxxxxxxxx100000000: begin excCode <= `CODE_TR;   EPC_ <= EX_PC_reg; end
		17'bxxxxxxxxx10000000: begin excCode <= `CODE_ADEL; EPC_ <= EX_PC_reg; end
		17'bxxxxxxxxxx1000000: begin excCode <= `CODE_ADES; EPC_ <= EX_PC_reg; end
		17'bxxxxxxxxxxx100000: begin excCode <= `CODE_TLBL; EPC_ <= EX_PC_reg; end
		17'bxxxxxxxxxxxx10000: begin excCode <= `CODE_TLBS; EPC_ <= EX_PC_reg; end
		17'bxxxxxxxxxxxxx1000: begin excCode <= `CODE_MOD;  EPC_ <= EX_PC_reg; end
		17'bxxxxxxxxxxxxxx100: begin excCode <= `CODE_TLBL; EPC_ <= EX_PC_reg; end
		17'bxxxxxxxxxxxxxxx10: begin excCode <= `CODE_TLBS; EPC_ <= EX_PC_reg; end
		17'bxxxxxxxxxxxxxxxx1: begin excCode <= `CODE_INT;  EPC_ <= EX_PC_reg; end
		default: begin excCode <= 4'h0; EPC_ <= IF_PC_reg; end
		endcase
	end
	assign regEPCOut = EPC_[31:0];
	assign bdOut = EPC_[32];
	assign excCodeOut = {1'b0, excCode};
	
	always @ (posedge clk)
	begin
		//AdEL(I), TLBInvalidI, TLBMissI, RI, Bp, Sys, cpU, Ov, Tr, AdEL, AdES, TLBMissDL, TLBMissDS, Mod, TLBInvalidDL, TLBInvalidDS, Int
		excSignalReg[16] <= adErrI;
		excSignalReg[15] <= TLBInvalidI;
		excSignalReg[14] <= TLBMissI;
		excSignalReg[13:6] <= {RI, breakpoint, syscall, cpU, overflow, trap, adEL, adES};
		excSignalReg[5] <= TLBMissD & ~memWrite;
		excSignalReg[4] <= TLBMissD & memWrite;
		excSignalReg[3] <= TLBModD;
		excSignalReg[2] <= TLBInvalidD & ~memWrite;
		excSignalReg[1] <= TLBInvalidD & memWrite;
		excSignalReg[0] <= interrupt;
		IF_PC_reg <= {IF_BD, IF_BD? ID_PC: IF_PC};
		ID_PC_reg <= {ID_BD, ID_PC};
		EX_PC_reg <= {EX_BD, EX_PC};
		IF_VAddr <= IF_PC;
		memVAddr_reg <= memVAddr;
	end
	
	assign regEPCOut = EPC_[31:0];
	assign badVAddr = (|excSignalReg[16:14])? IF_VAddr: memVAddr_reg;
	assign writeBadVAddr = |{excSignalReg[16:14], excSignalReg[7:1]};
	
endmodule
