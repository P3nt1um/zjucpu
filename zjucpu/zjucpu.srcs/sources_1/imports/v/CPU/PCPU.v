`timescale 1ns / 1ps
/**
 * Main module of CPU.
 * TLB-based MMU and coprocessor 0 are included in this module.
 * 
 * @author Yunye Pu
 */
module PCPU #(
	parameter PERIOD = 10
)(
	input clk, input rst, input iStall, input dStall,
	//IBus signals: data must return before next clock edge
	output [31:0] addrIBus, output stbIBus,
	output [31:0] addrIBusMapped, output stbIBusMapped,
	output mappedIBus, input [31:0] instIn,

	output [31:0] addrDBus, output stbDBus,
	output [31:0] addrDBusMapped, output stbDBusMapped,
	output mappedDBus, output [31:0] dataOut,
	output [3:0] dataMask, output memWE, input [31:0] dataIn,
	
	output iCacheOp, output dCacheOp,
	
	input [4:0] INT,
	output [31:0] dbg_vPC, output [31:0] dbg_vAddr,
	output [31:0] dbg_IDPC, output [31:0] dbg_EXPC, output [31:0] dbg_MEMPC
);

	//Note: a stall within a stage should stall all the stages before it,
	//and flush the stage right after it.
	//A flush to a stage should stall all stages before it.
	wire ID_excFlush, EX_excFlush, MEM_excFlush;
	wire MEM_excFlush_unmapped;
	wire [4:0] INT_sync;
	
	//IF stage signals
	reg [31:0] IF_PC;
	wire IF_bd;
	wire IF_stall;
	wire exc_TLBMissI, exc_TLBInvalidI, exc_adErrI, exc_interrupt;
	
	//ID stage signals
	wire ID_stall, ID_flush;
	wire [31:0] ID_rsFwd, ID_rtFwd;
	wire [31:0] ID_nextPC;
	wire [1:0] ID_fwdEN;
	wire [31:0] ID_opA, ID_opB;
	wire [12:0] ID_exCtrl;
	wire [7:0] ID_memCtrl;
	wire [4:0] ID_wbReg;
	wire [2:0] ID_wbCond;
	wire [2:0] ID_wbSrc;
	wire [2:0] ID_branchCond;
	wire [31:0] ID_inst;
	wire exc_RI, exc_syscall, exc_bp, exc_cpU;
	wire [2:0] cp0Op;
	wire [1:0] ID_cacheOp;
	wire [31:0] ID_PC;
	wire ID_bd;
	wire ID_instValid;
	wire [3:0] ID_copAccess;
	
	wire stallRs, stallRt;
	wire [31:0] rs, rt, rtDelay;
	
	//EX stage signals
	wire EX_stall, EX_stallOut, EX_flush;
	wire EX_branchCond;
	wire [2:0] EX_wbSrc;
	wire [31:0] EX_inst;
	wire [4:0] EX_wbReg;
	wire [31:0] EX_ALUout;
	wire [2:0] EX_memCtrl;
	wire [31:0] EX_regHi, EX_regLo;
	wire [31:0] EX_memAddr;
	wire EX_memReq, EX_memW_1b;
	wire [3:0] EX_memW;
	wire EX_branchTaken;
	wire EX_ALUValid;
	wire [31:0] EX_PC;
	wire EX_bd;
	wire EX_instValid;
	wire EX_iCacheOp, EX_dCacheOp;
	wire exc_ov, exc_tr, exc_adEL, exc_adES;
	wire exc_TLBMissD, exc_TLBInvalidD, exc_TLBModD;
	
	//MEM stage signals
	wire MEM_flush, MEM_stall;
	wire [4:0] MEM_wbReg;
	wire [31:0] MEM_rtFwd;
	wire [31:0] MEM_wbData;
	wire [31:0] cp0RegOut;
	wire [31:0] MEM_PC;
	wire MEM_bd;
	
	//TLB to Cop0 interface; condensed in one wire declaration
	wire [332:0] TLB_CP0;
	//Exception control to Cop0 interface
	wire [31:0] CP0_EXC_EPC;
	wire [31:0] CP0_EXC_ErrorEPC;
	wire CP0_EXC_interrupt;
	wire CP0_EXC_eret;
	wire [31:0] EXC_CP0_EPC;
	wire EXC_CP0_bd;
	wire [4:0] EXC_CP0_excCode;
	wire EXC_CP0_excAccept;
	wire [31:0] EXC_CP0_badVAddr;
	wire EXC_CP0_writeBadVAddr;
	
	//Useful CP0 status signals
	wire cp0_userMode;
	wire cp0_statusEXL, cp0_statusERL, cp0_statusBEV, cp0_causeIV;
	
	//IF stage logic
	wire TP_flushOut, BP_flushOut;
	wire [15:0] pageMask_TLB;
	wire [31:0] pPC_TLB;
	wire [31:0] PC_BP;
	wire [31:0] PC_exc;
	wire excReq;

	TranslatePredict TP(.clk(clk), .rst(rst), .stall(1'b0),
		.vPC(IF_PC), .pPCin(pPC_TLB), .pPCOut(addrIBusMapped), .pageMask(pageMask_TLB),
		.flush(TP_flushOut));
	BranchPredictor BP(.clk(clk), .rst(rst), .stall(ID_stall), .exc_flush(excReq),
		.PC(IF_PC), .branchDest(ID_nextPC),
		.ID_branchCond(ID_branchCond[2:1] != 2'b11), .EX_branchCond(EX_branchCond),
		.branchTaken(EX_branchTaken), .nextPC(PC_BP), .BP_flush(BP_flushOut));
	assign exc_adErrI = IF_PC[1] | IF_PC[0] | (IF_PC[31] & cp0_userMode);
	
	always @ (posedge clk)
	begin
		if(rst)
			IF_PC <= 32'hbfc00000;
		else if(excReq)
			IF_PC <= PC_exc;
		else if(BP_flushOut | !IF_stall)
			IF_PC <= PC_BP;
	end
	
	//ID stage logic
	StageID stageID(.clk(clk), .rst(rst), .stall(ID_stall),
		.flush(ID_flush | ID_excFlush), .TP_flush(TP_flushOut),
		.instIn(instIn), .PC(IF_PC), .rsFwd(ID_rsFwd), .rtFwd(ID_rtFwd),
		.nextPC(ID_nextPC), .fwdEN(ID_fwdEN), .opA(ID_opA), .opB(ID_opB),
		.exCtrl(ID_exCtrl), .memCtrl(ID_memCtrl), .wbReg(ID_wbReg),
		.wbSrc(ID_wbSrc), .wbCond(ID_wbCond), .branchCond(ID_branchCond),
		.RIexception(exc_RI), .syscall(exc_syscall), .breakpoint(exc_bp),
		.cp0Op(cp0Op), .cacheOp(ID_cacheOp), .instOut(ID_inst),
		.PCOut(ID_PC), .copAccess(ID_copAccess), .cpU(exc_cpU),
		.bd(ID_bd), .bd_IF(IF_bd), .instValid(ID_instValid));
	//Forwarding logic
	assign MEM_rtFwd = ((MEM_wbReg == EX_inst[20:16]) & |MEM_wbReg)? MEM_wbData: rtDelay;
	GprFwdUnit fwdRs(.regFile(rs), .ALUout(EX_ALUout), .dataToReg(MEM_wbData),
		.regRequest(ID_inst[25:21]), .EN(ID_fwdEN[1]), .IDEX_wb(EX_wbReg),
		.IDEX_dv(EX_ALUValid), .EXMEM_wb(MEM_wbReg), .dataOut(ID_rsFwd), .stall(stallRs));
	GprFwdUnit fwdRt(.regFile(rt), .ALUout(EX_ALUout), .dataToReg(MEM_wbData),
		.regRequest(ID_inst[20:16]), .EN(ID_fwdEN[0]), .IDEX_wb(EX_wbReg),
		.IDEX_dv(EX_ALUValid), .EXMEM_wb(MEM_wbReg), .dataOut(ID_rtFwd), .stall(stallRt));
	
	//EX stage logic
	StageEX stageEX(.clk(clk), .rst(rst), .stallIn(EX_stall),
		.flush(EX_flush | EX_excFlush),
		.instIn(ID_inst), .opA(ID_opA), .opB(ID_opB), .rsFwd(ID_rsFwd), .rtFwd(ID_rtFwd),
		.exCtrl(ID_exCtrl), .memCtrlIn(ID_memCtrl), .wbRegIn(ID_wbReg), .wbCond(ID_wbCond),
		.wbSrcIn(ID_wbSrc), .branchCond(ID_branchCond), .userMode(cp0_userMode), .cacheOp(ID_cacheOp),
		.wbSrcOut(EX_wbSrc), .instOut(EX_inst), .wbRegOut(EX_wbReg), .ALUout(EX_ALUout),
		.memCtrlOut(EX_memCtrl), .regHi(EX_regHi), .regLo(EX_regLo),
		.memAddrOut(EX_memAddr), .memDataOut(dataOut), .memReq(EX_memReq), .memW_1b(EX_memW_1b),
		.memWrite(EX_memW), .ov(exc_ov), .trap(exc_tr), .adEL(exc_adEL), .adES(exc_adES),
		.iCacheOp(EX_iCacheOp), .dCacheOp(EX_dCacheOp), .branchCond_out(EX_branchCond),
		.stallOut(EX_stallOut), .branchTaken(EX_branchTaken), .ALUValid(EX_ALUValid),
		.PCIn(ID_PC), .PCOut(EX_PC), .bdIn(ID_bd), .bdOut(EX_bd),
		.instValidIn(ID_instValid), .instValidOut(EX_instValid));
	
	//MEM stage logic
	StageMem stageMem(.clk(clk), .rst(rst), .stall(MEM_stall),
		.flush(MEM_flush | MEM_excFlush),
		.memCtrl(EX_memCtrl), .wbSrc(EX_wbSrc), .wbRegIn(EX_wbReg),
		.ALUout(EX_ALUout), .rtFwdMem(MEM_rtFwd), .regHi(EX_regHi), .regLo(EX_regLo),
		.cp0RegOut(cp0RegOut), .memDataIn(dataIn), .wbRegOut(MEM_wbReg),
		.wbData(MEM_wbData), .PCIn(EX_PC), .PCOut(MEM_PC), .bdIn(EX_bd), .bdOut(MEM_bd));
	
	//Cross-stage logic
	RegFile regFile(.clk(clk), .rst(rst), .stall(dStall),
		.rsAddr(ID_inst[25:21]), .rtAddr(ID_inst[20:16]), .rdAddr(MEM_wbReg),
		.rtAddrDelay(EX_inst[20:16]), .rs(rs), .rt(rt), .rtDelay(rtDelay), .rd(MEM_wbData));
	
	wire IOAddrI, IOAddrD;
	TLB tlb(.clk(clk), .rst(rst), .statusERL(cp0_statusERL),
		.vAddrI(IF_PC), .pAddrI(pPC_TLB), .IOAddrI(IOAddrI),
		.missI(exc_TLBMissI), .invalidI(exc_TLBInvalidI),
		.pageMaskI_out(pageMask_TLB),
		.vAddrD(EX_memAddr), .reqD(EX_memReq), .writeD(EX_memW_1b),
		.pAddrD(addrDBusMapped), .IOAddrD(IOAddrD),
		.missD(exc_TLBMissD), .invalidD(exc_TLBInvalidD), .modifiedD(exc_TLBModD),
		
		.regEntryLo0In(TLB_CP0[31:0]), .regEntryLo0Out(TLB_CP0[63:32]),
		.regEntryLo1In(TLB_CP0[95:64]), .regEntryLo1Out(TLB_CP0[127:96]),
		.regEntryHiIn(TLB_CP0[159:128]), .regEntryHiOut(TLB_CP0[191:160]),
		.regPageMaskIn(TLB_CP0[223:192]), .regPageMaskOut(TLB_CP0[255:224]),
		.regIndexIn(TLB_CP0[287:256]), .regIndexOut(TLB_CP0[319:288]),
		.regWired(TLB_CP0[324:320]), .regRandom(TLB_CP0[329:325]),
		.regWiredWrite(TLB_CP0[330]), .op(TLB_CP0[332:331]));
	
	ExcControl exceptionCtrl(.clk(clk), .rst(rst),
		.adErrI(exc_adErrI),
		.TLBMissI(exc_TLBMissI & ~exc_adErrI),
		.TLBInvalidI(exc_TLBInvalidI),
		.interrupt(exc_interrupt & EX_instValid),
		.RI(exc_RI),
		.syscall(exc_syscall),
		.breakpoint(exc_bp),
		.cpU(exc_cpU),
		.overflow(exc_ov),
		.trap(exc_tr),
		.adEL(exc_adEL),
		.adES(exc_adES),
		.memWrite(EX_memW_1b),
		.TLBMissD(exc_TLBMissD & ~(exc_adEL | exc_adES)),
		.TLBInvalidD(exc_TLBInvalidD),
		.TLBModD(exc_TLBModD),
		.eret(CP0_EXC_eret),
		.pipelineFlush({ID_flush, EX_flush, MEM_flush}),
		.IF_PC(IF_PC), .ID_PC(ID_PC), .EX_PC(EX_PC),
		.IF_BD(IF_bd), .ID_BD(ID_bd), .EX_BD(EX_bd),
		.ID_excFlush(ID_excFlush), .EX_excFlush(EX_excFlush), .Mem_excFlush(MEM_excFlush),
		.excPC(PC_exc), .useExcPC(excReq), .Mem_excFlush_unmapped(MEM_excFlush_unmapped),
		.regEPCIn(CP0_EXC_EPC),
		.regErrorEPCIn(CP0_EXC_ErrorEPC),
		.regEPCOut(EXC_CP0_EPC), .bdOut(EXC_CP0_bd),
		.excCodeOut(EXC_CP0_excCode), .excAccept(EXC_CP0_excAccept),
		.statusEXL(cp0_statusEXL), .statusERL(cp0_statusERL),
		.statusBEV(cp0_statusBEV), .causeIV(cp0_causeIV),
		.memVAddr(EX_memAddr),
		.badVAddr(EXC_CP0_badVAddr), .writeBadVAddr(EXC_CP0_writeBadVAddr));
	
	Cp0 cop0(.clk(clk), .rst(rst),
		.EX_flush(EX_flush | EX_excFlush),
		.op(cp0Op), .rdField(ID_inst[15:11]), .selField(ID_inst[2:0]),
		.copNum(ID_inst[27:26]), .dataIn(ID_rtFwd),
		.eret(CP0_EXC_eret), .dataOut(cp0RegOut), .interruptReq(INT_sync),
		
		.regEntryLo0Out(TLB_CP0[31:0]), .regEntryLo0In(TLB_CP0[63:32]),
		.regEntryLo1Out(TLB_CP0[95:64]), .regEntryLo1In(TLB_CP0[127:96]),
		.regEntryHiOut(TLB_CP0[159:128]), .regEntryHiIn(TLB_CP0[191:160]),
		.regPageMaskOut(TLB_CP0[223:192]), .regPageMaskIn(TLB_CP0[255:224]),
		.regIndexOut(TLB_CP0[287:256]), .regIndexIn(TLB_CP0[319:288]),
		.regWiredOut(TLB_CP0[324:320]), .regRandomIn(TLB_CP0[329:325]),
		.regWiredWrite(TLB_CP0[330]), .TLBop(TLB_CP0[332:331]),
		
		.regEPCOut(CP0_EXC_EPC), .regErrorEPCOut(CP0_EXC_ErrorEPC),
		.statusEXL(cp0_statusEXL), .statusERL(cp0_statusERL),
		.statusBEV(cp0_statusBEV), .causeIV(cp0_causeIV),
		.userMode(cp0_userMode), .interrupt(exc_interrupt),
		.regEPCIn(EXC_CP0_EPC), .bdIn(EXC_CP0_bd), .copAccess(ID_copAccess),
		.excCodeIn(EXC_CP0_excCode), .excAccept(EXC_CP0_excAccept),
		.badVAddrIn(EXC_CP0_badVAddr), .writeBadVAddr(EXC_CP0_writeBadVAddr));

	//Stall & flush logic
	assign MEM_flush = EX_stallOut & ~MEM_stall;
	assign EX_flush = (stallRs | stallRt | iStall | TP_flushOut) & ~EX_stall;
	assign ID_flush = (BP_flushOut & ~TP_flushOut) & ~ID_stall;
	assign MEM_stall = dStall;
	assign EX_stall = EX_stallOut | MEM_stall;
	assign ID_stall = stallRs | stallRt | iStall | EX_stall;
	assign IF_stall = TP_flushOut | ID_stall;

	assign stbDBusMapped = EX_memReq & ~MEM_excFlush & mappedDBus;
	assign stbDBus = EX_memReq & ~MEM_excFlush_unmapped & ~mappedDBus;
	assign iCacheOp = EX_iCacheOp & ~MEM_excFlush;
	assign dCacheOp = EX_dCacheOp & ~MEM_excFlush;
	assign dataMask = EX_memW;
	assign memWE = EX_memW_1b;
	assign stbIBusMapped = mappedIBus;
	assign stbIBus = ~mappedIBus;
	
	//Others
	//Interrupt signal sync logic: rising edge trigger
	reg [4:0] I_sync0, I_sync1;
	always @ (posedge clk)
	begin
		I_sync1 <= I_sync0;
		I_sync0 <= INT;
	end
	assign INT_sync = ~I_sync1 & I_sync0;
	
	assign dbg_vPC = IF_PC;
	assign dbg_vAddr = EX_memAddr;
	assign dbg_IDPC = ID_PC;
	assign dbg_EXPC = EX_PC;
	assign dbg_MEMPC = MEM_PC;
	
	assign addrIBus = {3'b0, IF_PC[28:0]};
	assign addrDBus = {3'b0, EX_memAddr[28:0]};
	assign mappedIBus = ~IOAddrI;
	assign mappedDBus = ~IOAddrD;
	
endmodule
