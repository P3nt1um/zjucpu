
q
Command: %s
53*	vivadotcl2@
,synth_design -top Top -part xc7k325tffg676-12default:defaultZ4-113h px? 
:
Starting synth_design
149*	vivadotclZ4-321h px? 
?
@Attempting to get a license for feature '%s' and/or device '%s'
308*common2
	Synthesis2default:default2
xc7k325t2default:defaultZ17-347h px? 
?
0Got license for feature '%s' and/or device '%s'
310*common2
	Synthesis2default:default2
xc7k325t2default:defaultZ17-349h px? 
|
%Your %s license expires in %s day(s)
86*common2
	Synthesis2default:default2
232default:defaultZ17-86h px? 
W
Loading part %s157*device2$
xc7k325tffg676-12default:defaultZ21-403h px? 
?
HMultithreading enabled for synth_design using a maximum of %s processes.4828*oasys2
42default:defaultZ8-7079h px? 
a
?Launching helper process for spawning children vivado processes4827*oasysZ8-7078h px? 
a
#Helper process launched with PID %s4824*oasys2
1013722default:defaultZ8-7075h px? 
?
%s*synth2?
?Starting RTL Elaboration : Time (s): cpu = 00:00:07 ; elapsed = 00:00:14 . Memory (MB): peak = 2372.766 ; gain = 0.000 ; free physical = 884 ; free virtual = 2157
2default:defaulth px? 
?
synthesizing module '%s'%s4497*oasys2
Top2default:default2
 2default:default2U
?/home/pentium/zjucpu/zjucpu.srcs/sources_1/imports/SWORD4/Top.v2default:default2
72default:default8@Z8-6157h px? 
?
synthesizing module '%s'%s4497*oasys2
CPUCacheTop2default:default2
 2default:default2X
B/home/pentium/zjucpu/zjucpu.srcs/sources_1/imports/v/CPUCacheTop.v2default:default2
92default:default8@Z8-6157h px? 
c
%s
*synth2K
7	Parameter CLKCPU_PERIOD bound to: 10 - type: integer 
2default:defaulth p
x
? 
b
%s
*synth2J
6	Parameter CLKDDR_PERIOD bound to: 5 - type: integer 
2default:defaulth p
x
? 
?
synthesizing module '%s'%s4497*oasys2
PCPU2default:default2
 2default:default2U
?/home/pentium/zjucpu/zjucpu.srcs/sources_1/imports/v/CPU/PCPU.v2default:default2
82default:default8@Z8-6157h px? 
\
%s
*synth2D
0	Parameter PERIOD bound to: 10 - type: integer 
2default:defaulth p
x
? 
?
synthesizing module '%s'%s4497*oasys2$
TranslatePredict2default:default2
 2default:default2a
K/home/pentium/zjucpu/zjucpu.srcs/sources_1/imports/v/CPU/TranslatePredict.v2default:default2
122default:default8@Z8-6157h px? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2$
TranslatePredict2default:default2
 2default:default2
12default:default2
12default:default2a
K/home/pentium/zjucpu/zjucpu.srcs/sources_1/imports/v/CPU/TranslatePredict.v2default:default2
122default:default8@Z8-6155h px? 
?
synthesizing module '%s'%s4497*oasys2#
BranchPredictor2default:default2
 2default:default2`
J/home/pentium/zjucpu/zjucpu.srcs/sources_1/imports/v/CPU/BranchPredictor.v2default:default2
72default:default8@Z8-6157h px? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2#
BranchPredictor2default:default2
 2default:default2
22default:default2
12default:default2`
J/home/pentium/zjucpu/zjucpu.srcs/sources_1/imports/v/CPU/BranchPredictor.v2default:default2
72default:default8@Z8-6155h px? 
?
synthesizing module '%s'%s4497*oasys2
StageID2default:default2
 2default:default2X
B/home/pentium/zjucpu/zjucpu.srcs/sources_1/imports/v/CPU/StageID.v2default:default2
72default:default8@Z8-6157h px? 
?
synthesizing module '%s'%s4497*oasys2
InstDecoder2default:default2
 2default:default2\
F/home/pentium/zjucpu/zjucpu.srcs/sources_1/imports/v/CPU/InstDecoder.v2default:default2
1332default:default8@Z8-6157h px? 
?
synthesizing module '%s'%s4497*oasys2

Op0Decoder2default:default2
 2default:default2\
F/home/pentium/zjucpu/zjucpu.srcs/sources_1/imports/v/CPU/InstDecoder.v2default:default2
222default:default8@Z8-6157h px? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2

Op0Decoder2default:default2
 2default:default2
32default:default2
12default:default2\
F/home/pentium/zjucpu/zjucpu.srcs/sources_1/imports/v/CPU/InstDecoder.v2default:default2
222default:default8@Z8-6155h px? 
?
synthesizing module '%s'%s4497*oasys2

Op1Decoder2default:default2
 2default:default2\
F/home/pentium/zjucpu/zjucpu.srcs/sources_1/imports/v/CPU/InstDecoder.v2default:default2
692default:default8@Z8-6157h px? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2

Op1Decoder2default:default2
 2default:default2
42default:default2
12default:default2\
F/home/pentium/zjucpu/zjucpu.srcs/sources_1/imports/v/CPU/InstDecoder.v2default:default2
692default:default8@Z8-6155h px? 
?
synthesizing module '%s'%s4497*oasys2"
OpSpec2Decoder2default:default2
 2default:default2\
F/home/pentium/zjucpu/zjucpu.srcs/sources_1/imports/v/CPU/InstDecoder.v2default:default2
902default:default8@Z8-6157h px? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2"
OpSpec2Decoder2default:default2
 2default:default2
52default:default2
12default:default2\
F/home/pentium/zjucpu/zjucpu.srcs/sources_1/imports/v/CPU/InstDecoder.v2default:default2
902default:default8@Z8-6155h px? 
?
synthesizing module '%s'%s4497*oasys2 
OpCp0Decoder2default:default2
 2default:default2\
F/home/pentium/zjucpu/zjucpu.srcs/sources_1/imports/v/CPU/InstDecoder.v2default:default2
1092default:default8@Z8-6157h px? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2 
OpCp0Decoder2default:default2
 2default:default2
62default:default2
12default:default2\
F/home/pentium/zjucpu/zjucpu.srcs/sources_1/imports/v/CPU/InstDecoder.v2default:default2
1092default:default8@Z8-6155h px? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
InstDecoder2default:default2
 2default:default2
72default:default2
12default:default2\
F/home/pentium/zjucpu/zjucpu.srcs/sources_1/imports/v/CPU/InstDecoder.v2default:default2
1332default:default8@Z8-6155h px? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
StageID2default:default2
 2default:default2
82default:default2
12default:default2X
B/home/pentium/zjucpu/zjucpu.srcs/sources_1/imports/v/CPU/StageID.v2default:default2
72default:default8@Z8-6155h px? 
?
synthesizing module '%s'%s4497*oasys2

GprFwdUnit2default:default2
 2default:default2X
B/home/pentium/zjucpu/zjucpu.srcs/sources_1/imports/v/CPU/FwdUnit.v2default:default2
102default:default8@Z8-6157h px? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2

GprFwdUnit2default:default2
 2default:default2
92default:default2
12default:default2X
B/home/pentium/zjucpu/zjucpu.srcs/sources_1/imports/v/CPU/FwdUnit.v2default:default2
102default:default8@Z8-6155h px? 
?
synthesizing module '%s'%s4497*oasys2
StageEX2default:default2
 2default:default2X
B/home/pentium/zjucpu/zjucpu.srcs/sources_1/imports/v/CPU/stageEX.v2default:default2
72default:default8@Z8-6157h px? 
?
synthesizing module '%s'%s4497*oasys2
ALU2default:default2
 2default:default2T
>/home/pentium/zjucpu/zjucpu.srcs/sources_1/imports/v/CPU/ALU.v2default:default2
362default:default8@Z8-6157h px? 
?
synthesizing module '%s'%s4497*oasys2
CLO2default:default2
 2default:default2T
>/home/pentium/zjucpu/zjucpu.srcs/sources_1/imports/v/CPU/ALU.v2default:default2
72default:default8@Z8-6157h px? 
?
synthesizing module '%s'%s4497*oasys2
MUXCY2default:default2
 2default:default2O
9/tools/Xilinx/Vivado/2020.2/scripts/rt/data/unisim_comp.v2default:default2
429362default:default8@Z8-6157h px? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
MUXCY2default:default2
 2default:default2
102default:default2
12default:default2O
9/tools/Xilinx/Vivado/2020.2/scripts/rt/data/unisim_comp.v2default:default2
429362default:default8@Z8-6155h px? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
CLO2default:default2
 2default:default2
112default:default2
12default:default2T
>/home/pentium/zjucpu/zjucpu.srcs/sources_1/imports/v/CPU/ALU.v2default:default2
72default:default8@Z8-6155h px? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
ALU2default:default2
 2default:default2
122default:default2
12default:default2T
>/home/pentium/zjucpu/zjucpu.srcs/sources_1/imports/v/CPU/ALU.v2default:default2
362default:default8@Z8-6155h px? 
?
synthesizing module '%s'%s4497*oasys2
MulDiv2default:default2
 2default:default2W
A/home/pentium/zjucpu/zjucpu.srcs/sources_1/imports/v/CPU/MulDiv.v2default:default2
112default:default8@Z8-6157h px? 
M
%s
*synth25
!	Parameter IDLE bound to: 2'b00 
2default:defaulth p
x
? 
V
%s
*synth2>
*	Parameter WAIT_FOR_MADD bound to: 2'b01 
2default:defaulth p
x
? 
V
%s
*synth2>
*	Parameter WAIT_FOR_MSUB bound to: 2'b10 
2default:defaulth p
x
? 
U
%s
*synth2=
)	Parameter WAIT_FOR_DIV bound to: 2'b11 
2default:defaulth p
x
? 
?
synthesizing module '%s'%s4497*oasys2
Div_CPU2default:default2
 2default:default2X
B/home/pentium/zjucpu/zjucpu.srcs/sources_1/imports/v/CPU/divider.v2default:default2
72default:default8@Z8-6157h px? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
Div_CPU2default:default2
 2default:default2
132default:default2
12default:default2X
B/home/pentium/zjucpu/zjucpu.srcs/sources_1/imports/v/CPU/divider.v2default:default2
72default:default8@Z8-6155h px? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
MulDiv2default:default2
 2default:default2
142default:default2
12default:default2W
A/home/pentium/zjucpu/zjucpu.srcs/sources_1/imports/v/CPU/MulDiv.v2default:default2
112default:default8@Z8-6155h px? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
StageEX2default:default2
 2default:default2
152default:default2
12default:default2X
B/home/pentium/zjucpu/zjucpu.srcs/sources_1/imports/v/CPU/stageEX.v2default:default2
72default:default8@Z8-6155h px? 
?
synthesizing module '%s'%s4497*oasys2
StageMem2default:default2
 2default:default2Y
C/home/pentium/zjucpu/zjucpu.srcs/sources_1/imports/v/CPU/StageMem.v2default:default2
72default:default8@Z8-6157h px? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
StageMem2default:default2
 2default:default2
162default:default2
12default:default2Y
C/home/pentium/zjucpu/zjucpu.srcs/sources_1/imports/v/CPU/StageMem.v2default:default2
72default:default8@Z8-6155h px? 
?
synthesizing module '%s'%s4497*oasys2
RegFile2default:default2
 2default:default2U
?/home/pentium/zjucpu/zjucpu.srcs/sources_1/imports/v/CPU/Regs.v2default:default2
72default:default8@Z8-6157h px? 
?
synthesizing module '%s'%s4497*oasys2
RAM32M2default:default2
 2default:default2O
9/tools/Xilinx/Vivado/2020.2/scripts/rt/data/unisim_comp.v2default:default2
701032default:default8@Z8-6157h px? 
?
%s
*synth2v
b	Parameter INIT_A bound to: 64'b0000000000000000000000000000000000000000000000000000000000000000 
2default:defaulth p
x
? 
?
%s
*synth2v
b	Parameter INIT_B bound to: 64'b0000000000000000000000000000000000000000000000000000000000000000 
2default:defaulth p
x
? 
?
%s
*synth2v
b	Parameter INIT_C bound to: 64'b0000000000000000000000000000000000000000000000000000000000000000 
2default:defaulth p
x
? 
?
%s
*synth2v
b	Parameter INIT_D bound to: 64'b0000000000000000000000000000000000000000000000000000000000000000 
2default:defaulth p
x
? 
X
%s
*synth2@
,	Parameter IS_WCLK_INVERTED bound to: 1'b0 
2default:defaulth p
x
? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
RAM32M2default:default2
 2default:default2
172default:default2
12default:default2O
9/tools/Xilinx/Vivado/2020.2/scripts/rt/data/unisim_comp.v2default:default2
701032default:default8@Z8-6155h px? 
?
9port '%s' of module '%s' is unconnected for instance '%s'4818*oasys2
DOD2default:default2
RAM32M2default:default2
U02default:default2U
?/home/pentium/zjucpu/zjucpu.srcs/sources_1/imports/v/CPU/Regs.v2default:default2
132default:default8@Z8-7071h px? 
?
Kinstance '%s' of module '%s' has %s connections declared, but only %s given4757*oasys2
U02default:default2
RAM32M2default:default2
142default:default2
132default:default2U
?/home/pentium/zjucpu/zjucpu.srcs/sources_1/imports/v/CPU/Regs.v2default:default2
132default:default8@Z8-7023h px? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
RegFile2default:default2
 2default:default2
182default:default2
12default:default2U
?/home/pentium/zjucpu/zjucpu.srcs/sources_1/imports/v/CPU/Regs.v2default:default2
72default:default8@Z8-6155h px? 
?
synthesizing module '%s'%s4497*oasys2
TLB2default:default2
 2default:default2T
>/home/pentium/zjucpu/zjucpu.srcs/sources_1/imports/v/CPU/TLB.v2default:default2
182default:default8@Z8-6157h px? 
?
synthesizing module '%s'%s4497*oasys2
TLBEntry2default:default2
 2default:default2Y
C/home/pentium/zjucpu/zjucpu.srcs/sources_1/imports/v/CPU/TLBEntry.v2default:default2
102default:default8@Z8-6157h px? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
TLBEntry2default:default2
 2default:default2
192default:default2
12default:default2Y
C/home/pentium/zjucpu/zjucpu.srcs/sources_1/imports/v/CPU/TLBEntry.v2default:default2
102default:default8@Z8-6155h px? 
?
synthesizing module '%s'%s4497*oasys2
	TLBHeader2default:default2
 2default:default2Z
D/home/pentium/zjucpu/zjucpu.srcs/sources_1/imports/v/CPU/TLBHeader.v2default:default2
92default:default8@Z8-6157h px? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
	TLBHeader2default:default2
 2default:default2
202default:default2
12default:default2Z
D/home/pentium/zjucpu/zjucpu.srcs/sources_1/imports/v/CPU/TLBHeader.v2default:default2
92default:default8@Z8-6155h px? 
?
synthesizing module '%s'%s4497*oasys2
	Encoder322default:default2
 2default:default2T
>/home/pentium/zjucpu/zjucpu.srcs/sources_1/imports/v/CPU/TLB.v2default:default2
1322default:default8@Z8-6157h px? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
	Encoder322default:default2
 2default:default2
212default:default2
12default:default2T
>/home/pentium/zjucpu/zjucpu.srcs/sources_1/imports/v/CPU/TLB.v2default:default2
1322default:default8@Z8-6155h px? 
?
synthesizing module '%s'%s4497*oasys2
TLBRNG2default:default2
 2default:default2W
A/home/pentium/zjucpu/zjucpu.srcs/sources_1/imports/v/CPU/TLBRNG.v2default:default2
92default:default8@Z8-6157h px? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
TLBRNG2default:default2
 2default:default2
222default:default2
12default:default2W
A/home/pentium/zjucpu/zjucpu.srcs/sources_1/imports/v/CPU/TLBRNG.v2default:default2
92default:default8@Z8-6155h px? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
TLB2default:default2
 2default:default2
232default:default2
12default:default2T
>/home/pentium/zjucpu/zjucpu.srcs/sources_1/imports/v/CPU/TLB.v2default:default2
182default:default8@Z8-6155h px? 
?
9port '%s' of module '%s' is unconnected for instance '%s'4818*oasys2
cacheI2default:default2
TLB2default:default2
tlb2default:default2U
?/home/pentium/zjucpu/zjucpu.srcs/sources_1/imports/v/CPU/PCPU.v2default:default2
1902default:default8@Z8-7071h px? 
?
9port '%s' of module '%s' is unconnected for instance '%s'4818*oasys2
cacheD2default:default2
TLB2default:default2
tlb2default:default2U
?/home/pentium/zjucpu/zjucpu.srcs/sources_1/imports/v/CPU/PCPU.v2default:default2
1902default:default8@Z8-7071h px? 
?
9port '%s' of module '%s' is unconnected for instance '%s'4818*oasys2
dupMatch2default:default2
TLB2default:default2
tlb2default:default2U
?/home/pentium/zjucpu/zjucpu.srcs/sources_1/imports/v/CPU/PCPU.v2default:default2
1902default:default8@Z8-7071h px? 
?
Kinstance '%s' of module '%s' has %s connections declared, but only %s given4757*oasys2
tlb2default:default2
TLB2default:default2
342default:default2
312default:default2U
?/home/pentium/zjucpu/zjucpu.srcs/sources_1/imports/v/CPU/PCPU.v2default:default2
1902default:default8@Z8-7023h px? 
?
synthesizing module '%s'%s4497*oasys2

ExcControl2default:default2
 2default:default2[
E/home/pentium/zjucpu/zjucpu.srcs/sources_1/imports/v/CPU/ExcControl.v2default:default2
92default:default8@Z8-6157h px? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2

ExcControl2default:default2
 2default:default2
242default:default2
12default:default2[
E/home/pentium/zjucpu/zjucpu.srcs/sources_1/imports/v/CPU/ExcControl.v2default:default2
92default:default8@Z8-6155h px? 
?
synthesizing module '%s'%s4497*oasys2
Cp02default:default2
 2default:default2T
>/home/pentium/zjucpu/zjucpu.srcs/sources_1/imports/v/CPU/Cp0.v2default:default2
92default:default8@Z8-6157h px? 
?
synthesizing module '%s'%s4497*oasys2
Cp0Reg2default:default2
 2default:default2W
A/home/pentium/zjucpu/zjucpu.srcs/sources_1/imports/v/CPU/Cp0Reg.v2default:default2
102default:default8@Z8-6157h px? 
c
%s
*synth2K
7	Parameter SOFTWARE_MASK bound to: 31 - type: integer 
2default:defaulth p
x
? 
`
%s
*synth2H
4	Parameter RESET_STATE bound to: 0 - type: integer 
2default:defaulth p
x
? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
Cp0Reg2default:default2
 2default:default2
252default:default2
12default:default2W
A/home/pentium/zjucpu/zjucpu.srcs/sources_1/imports/v/CPU/Cp0Reg.v2default:default2
102default:default8@Z8-6155h px? 
?
synthesizing module '%s'%s4497*oasys2*
Cp0Reg__parameterized02default:default2
 2default:default2W
A/home/pentium/zjucpu/zjucpu.srcs/sources_1/imports/v/CPU/Cp0Reg.v2default:default2
102default:default8@Z8-6157h px? 
i
%s
*synth2Q
=	Parameter SOFTWARE_MASK bound to: 67108863 - type: integer 
2default:defaulth p
x
? 
`
%s
*synth2H
4	Parameter RESET_STATE bound to: 0 - type: integer 
2default:defaulth p
x
? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2*
Cp0Reg__parameterized02default:default2
 2default:default2
252default:default2
12default:default2W
A/home/pentium/zjucpu/zjucpu.srcs/sources_1/imports/v/CPU/Cp0Reg.v2default:default2
102default:default8@Z8-6155h px? 
?
synthesizing module '%s'%s4497*oasys2*
Cp0Reg__parameterized12default:default2
 2default:default2W
A/home/pentium/zjucpu/zjucpu.srcs/sources_1/imports/v/CPU/Cp0Reg.v2default:default2
102default:default8@Z8-6157h px? 
i
%s
*synth2Q
=	Parameter SOFTWARE_MASK bound to: -8388608 - type: integer 
2default:defaulth p
x
? 
`
%s
*synth2H
4	Parameter RESET_STATE bound to: 0 - type: integer 
2default:defaulth p
x
? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2*
Cp0Reg__parameterized12default:default2
 2default:default2
252default:default2
12default:default2W
A/home/pentium/zjucpu/zjucpu.srcs/sources_1/imports/v/CPU/Cp0Reg.v2default:default2
102default:default8@Z8-6155h px? 
?
synthesizing module '%s'%s4497*oasys2*
Cp0Reg__parameterized22default:default2
 2default:default2W
A/home/pentium/zjucpu/zjucpu.srcs/sources_1/imports/v/CPU/Cp0Reg.v2default:default2
102default:default8@Z8-6157h px? 
j
%s
*synth2R
>	Parameter SOFTWARE_MASK bound to: 536862720 - type: integer 
2default:defaulth p
x
? 
`
%s
*synth2H
4	Parameter RESET_STATE bound to: 0 - type: integer 
2default:defaulth p
x
? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2*
Cp0Reg__parameterized22default:default2
 2default:default2
252default:default2
12default:default2W
A/home/pentium/zjucpu/zjucpu.srcs/sources_1/imports/v/CPU/Cp0Reg.v2default:default2
102default:default8@Z8-6155h px? 
?
synthesizing module '%s'%s4497*oasys2*
Cp0Reg__parameterized32default:default2
 2default:default2W
A/home/pentium/zjucpu/zjucpu.srcs/sources_1/imports/v/CPU/Cp0Reg.v2default:default2
102default:default8@Z8-6157h px? 
b
%s
*synth2J
6	Parameter SOFTWARE_MASK bound to: 0 - type: integer 
2default:defaulth p
x
? 
`
%s
*synth2H
4	Parameter RESET_STATE bound to: 0 - type: integer 
2default:defaulth p
x
? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2*
Cp0Reg__parameterized32default:default2
 2default:default2
252default:default2
12default:default2W
A/home/pentium/zjucpu/zjucpu.srcs/sources_1/imports/v/CPU/Cp0Reg.v2default:default2
102default:default8@Z8-6155h px? 
?
synthesizing module '%s'%s4497*oasys2*
Cp0Reg__parameterized42default:default2
 2default:default2W
A/home/pentium/zjucpu/zjucpu.srcs/sources_1/imports/v/CPU/Cp0Reg.v2default:default2
102default:default8@Z8-6157h px? 
c
%s
*synth2K
7	Parameter SOFTWARE_MASK bound to: -1 - type: integer 
2default:defaulth p
x
? 
`
%s
*synth2H
4	Parameter RESET_STATE bound to: 0 - type: integer 
2default:defaulth p
x
? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2*
Cp0Reg__parameterized42default:default2
 2default:default2
252default:default2
12default:default2W
A/home/pentium/zjucpu/zjucpu.srcs/sources_1/imports/v/CPU/Cp0Reg.v2default:default2
102default:default8@Z8-6155h px? 
?
synthesizing module '%s'%s4497*oasys2*
Cp0Reg__parameterized52default:default2
 2default:default2W
A/home/pentium/zjucpu/zjucpu.srcs/sources_1/imports/v/CPU/Cp0Reg.v2default:default2
102default:default8@Z8-6157h px? 
f
%s
*synth2N
:	Parameter SOFTWARE_MASK bound to: -7937 - type: integer 
2default:defaulth p
x
? 
`
%s
*synth2H
4	Parameter RESET_STATE bound to: 0 - type: integer 
2default:defaulth p
x
? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2*
Cp0Reg__parameterized52default:default2
 2default:default2
252default:default2
12default:default2W
A/home/pentium/zjucpu/zjucpu.srcs/sources_1/imports/v/CPU/Cp0Reg.v2default:default2
102default:default8@Z8-6155h px? 
?
synthesizing module '%s'%s4497*oasys2*
Cp0Reg__parameterized62default:default2
 2default:default2W
A/home/pentium/zjucpu/zjucpu.srcs/sources_1/imports/v/CPU/Cp0Reg.v2default:default2
102default:default8@Z8-6157h px? 
j
%s
*synth2R
>	Parameter SOFTWARE_MASK bound to: 272695063 - type: integer 
2default:defaulth p
x
? 
h
%s
*synth2P
<	Parameter RESET_STATE bound to: 272629764 - type: integer 
2default:defaulth p
x
? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2*
Cp0Reg__parameterized62default:default2
 2default:default2
252default:default2
12default:default2W
A/home/pentium/zjucpu/zjucpu.srcs/sources_1/imports/v/CPU/Cp0Reg.v2default:default2
102default:default8@Z8-6155h px? 
?
synthesizing module '%s'%s4497*oasys2*
Cp0Reg__parameterized72default:default2
 2default:default2W
A/home/pentium/zjucpu/zjucpu.srcs/sources_1/imports/v/CPU/Cp0Reg.v2default:default2
102default:default8@Z8-6157h px? 
h
%s
*synth2P
<	Parameter SOFTWARE_MASK bound to: 8389376 - type: integer 
2default:defaulth p
x
? 
`
%s
*synth2H
4	Parameter RESET_STATE bound to: 0 - type: integer 
2default:defaulth p
x
? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2*
Cp0Reg__parameterized72default:default2
 2default:default2
252default:default2
12default:default2W
A/home/pentium/zjucpu/zjucpu.srcs/sources_1/imports/v/CPU/Cp0Reg.v2default:default2
102default:default8@Z8-6155h px? 
?
synthesizing module '%s'%s4497*oasys2*
Cp0Reg__parameterized82default:default2
 2default:default2W
A/home/pentium/zjucpu/zjucpu.srcs/sources_1/imports/v/CPU/Cp0Reg.v2default:default2
102default:default8@Z8-6157h px? 
b
%s
*synth2J
6	Parameter SOFTWARE_MASK bound to: 0 - type: integer 
2default:defaulth p
x
? 
d
%s
*synth2L
8	Parameter RESET_STATE bound to: 65536 - type: integer 
2default:defaulth p
x
? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2*
Cp0Reg__parameterized82default:default2
 2default:default2
252default:default2
12default:default2W
A/home/pentium/zjucpu/zjucpu.srcs/sources_1/imports/v/CPU/Cp0Reg.v2default:default2
102default:default8@Z8-6155h px? 
?
synthesizing module '%s'%s4497*oasys2*
Cp0Reg__parameterized92default:default2
 2default:default2W
A/home/pentium/zjucpu/zjucpu.srcs/sources_1/imports/v/CPU/Cp0Reg.v2default:default2
102default:default8@Z8-6157h px? 
b
%s
*synth2J
6	Parameter SOFTWARE_MASK bound to: 0 - type: integer 
2default:defaulth p
x
? 
j
%s
*synth2R
>	Parameter RESET_STATE bound to: -2147483517 - type: integer 
2default:defaulth p
x
? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2*
Cp0Reg__parameterized92default:default2
 2default:default2
252default:default2
12default:default2W
A/home/pentium/zjucpu/zjucpu.srcs/sources_1/imports/v/CPU/Cp0Reg.v2default:default2
102default:default8@Z8-6155h px? 
?
synthesizing module '%s'%s4497*oasys2+
Cp0Reg__parameterized102default:default2
 2default:default2W
A/home/pentium/zjucpu/zjucpu.srcs/sources_1/imports/v/CPU/Cp0Reg.v2default:default2
102default:default8@Z8-6157h px? 
b
%s
*synth2J
6	Parameter SOFTWARE_MASK bound to: 0 - type: integer 
2default:defaulth p
x
? 
i
%s
*synth2Q
=	Parameter RESET_STATE bound to: 1055487104 - type: integer 
2default:defaulth p
x
? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2+
Cp0Reg__parameterized102default:default2
 2default:default2
252default:default2
12default:default2W
A/home/pentium/zjucpu/zjucpu.srcs/sources_1/imports/v/CPU/Cp0Reg.v2default:default2
102default:default8@Z8-6155h px? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
Cp02default:default2
 2default:default2
262default:default2
12default:default2T
>/home/pentium/zjucpu/zjucpu.srcs/sources_1/imports/v/CPU/Cp0.v2default:default2
92default:default8@Z8-6155h px? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
PCPU2default:default2
 2default:default2
272default:default2
12default:default2U
?/home/pentium/zjucpu/zjucpu.srcs/sources_1/imports/v/CPU/PCPU.v2default:default2
82default:default8@Z8-6155h px? 
?
synthesizing module '%s'%s4497*oasys2
ICache2default:default2
 2default:default2Y
C/home/pentium/zjucpu/zjucpu.srcs/sources_1/imports/v/Cache/ICache.v2default:default2
212default:default8@Z8-6157h px? 
c
%s
*synth2K
7	Parameter CLKCPU_PERIOD bound to: 10 - type: integer 
2default:defaulth p
x
? 
b
%s
*synth2J
6	Parameter CLKDDR_PERIOD bound to: 5 - type: integer 
2default:defaulth p
x
? 
?
synthesizing module '%s'%s4497*oasys2

ICacheData2default:default2
 2default:default2\
F/home/pentium/zjucpu/zjucpu.srcs/sources_1/imports/v/Cache/CacheData.v2default:default2
1482default:default8@Z8-6157h px? 
?
synthesizing module '%s'%s4497*oasys2"
BRAM_SDP_MACRO2default:default2
 2default:default2\
F/tools/Xilinx/Vivado/2020.2/data/verilog/src/unimacro/BRAM_SDP_MACRO.v2default:default2
342default:default8@Z8-6157h px? 
`
%s
*synth2H
4	Parameter BRAM_SIZE bound to: 36Kb - type: string 
2default:defaulth p
x
? 
`
%s
*synth2H
4	Parameter DEVICE bound to: 7SERIES - type: string 
2default:defaulth p
x
? 
[
%s
*synth2C
/	Parameter DO_REG bound to: 0 - type: integer 
2default:defaulth p
x
? 
?
%s
*synth2|
h	Parameter INIT bound to: 72'b000000000000000000000000000000000000000000000000000000000000000000000000 
2default:defaulth p
x
? 
?
%s
*synth2?
?	Parameter INIT_00 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:defaulth p
x
? 
?
%s
*synth2?
?	Parameter INIT_01 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:defaulth p
x
? 
?
%s
*synth2?
?	Parameter INIT_02 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:defaulth p
x
? 
?
%s
*synth2?
?	Parameter INIT_03 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:defaulth p
x
? 
?
%s
*synth2?
?	Parameter INIT_04 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:defaulth p
x
? 
?
%s
*synth2?
?	Parameter INIT_05 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:defaulth p
x
? 
?
%s
*synth2?
?	Parameter INIT_06 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:defaulth p
x
? 
?
%s
*synth2?
?	Parameter INIT_07 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:defaulth p
x
? 
?
%s
*synth2?
?	Parameter INIT_08 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:defaulth p
x
? 
?
%s
*synth2?
?	Parameter INIT_09 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:defaulth p
x
? 
?
%s
*synth2?
?	Parameter INIT_0A bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:defaulth p
x
? 
?
%s
*synth2?
?	Parameter INIT_0B bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:defaulth p
x
? 
?
%s
*synth2?
?	Parameter INIT_0C bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:defaulth p
x
? 
?
%s
*synth2?
?	Parameter INIT_0D bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:defaulth p
x
? 
?
%s
*synth2?
?	Parameter INIT_0E bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:defaulth p
x
? 
?
%s
*synth2?
?	Parameter INIT_0F bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:defaulth p
x
? 
?
%s
*synth2?
?	Parameter INIT_10 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:defaulth p
x
? 
?
%s
*synth2?
?	Parameter INIT_11 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:defaulth p
x
? 
?
%s
*synth2?
?	Parameter INIT_12 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:defaulth p
x
? 
?
%s
*synth2?
?	Parameter INIT_13 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:defaulth p
x
? 
?
%s
*synth2?
?	Parameter INIT_14 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:defaulth p
x
? 
?
%s
*synth2?
?	Parameter INIT_15 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:defaulth p
x
? 
?
%s
*synth2?
?	Parameter INIT_16 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:defaulth p
x
? 
?
%s
*synth2?
?	Parameter INIT_17 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:defaulth p
x
? 
?
%s
*synth2?
?	Parameter INIT_18 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:defaulth p
x
? 
?
%s
*synth2?
?	Parameter INIT_19 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:defaulth p
x
? 
?
%s
*synth2?
?	Parameter INIT_1A bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:defaulth p
x
? 
?
%s
*synth2?
?	Parameter INIT_1B bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:defaulth p
x
? 
?
%s
*synth2?
?	Parameter INIT_1C bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:defaulth p
x
? 
?
%s
*synth2?
?	Parameter INIT_1D bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:defaulth p
x
? 
?
%s
*synth2?
?	Parameter INIT_1E bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:defaulth p
x
? 
?
%s
*synth2?
?	Parameter INIT_1F bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:defaulth p
x
? 
?
%s
*synth2?
?	Parameter INIT_20 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:defaulth p
x
? 
?
%s
*synth2?
?	Parameter INIT_21 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:defaulth p
x
? 
?
%s
*synth2?
?	Parameter INIT_22 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:defaulth p
x
? 
?
%s
*synth2?
?	Parameter INIT_23 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:defaulth p
x
? 
?
%s
*synth2?
?	Parameter INIT_24 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:defaulth p
x
? 
?
%s
*synth2?
?	Parameter INIT_25 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:defaulth p
x
? 
?
%s
*synth2?
?	Parameter INIT_26 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:defaulth p
x
? 
?
%s
*synth2?
?	Parameter INIT_27 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:defaulth p
x
? 
?
%s
*synth2?
?	Parameter INIT_28 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:defaulth p
x
? 
?
%s
*synth2?
?	Parameter INIT_29 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:defaulth p
x
? 
?
%s
*synth2?
?	Parameter INIT_2A bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:defaulth p
x
? 
?
%s
*synth2?
?	Parameter INIT_2B bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:defaulth p
x
? 
?
%s
*synth2?
?	Parameter INIT_2C bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:defaulth p
x
? 
?
%s
*synth2?
?	Parameter INIT_2D bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:defaulth p
x
? 
?
%s
*synth2?
?	Parameter INIT_2E bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:defaulth p
x
? 
?
%s
*synth2?
?	Parameter INIT_2F bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:defaulth p
x
? 
?
%s
*synth2?
?	Parameter INIT_30 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:defaulth p
x
? 
?
%s
*synth2?
?	Parameter INIT_31 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:defaulth p
x
? 
?
%s
*synth2?
?	Parameter INIT_32 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:defaulth p
x
? 
?
%s
*synth2?
?	Parameter INIT_33 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:defaulth p
x
? 
?
%s
*synth2?
?	Parameter INIT_34 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:defaulth p
x
? 
?
%s
*synth2?
?	Parameter INIT_35 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:defaulth p
x
? 
?
%s
*synth2?
?	Parameter INIT_36 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:defaulth p
x
? 
?
%s
*synth2?
?	Parameter INIT_37 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:defaulth p
x
? 
?
%s
*synth2?
?	Parameter INIT_38 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:defaulth p
x
? 
?
%s
*synth2?
?	Parameter INIT_39 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:defaulth p
x
? 
?
%s
*synth2?
?	Parameter INIT_3A bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:defaulth p
x
? 
?
%s
*synth2?
?	Parameter INIT_3B bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:defaulth p
x
? 
?
%s
*synth2?
?	Parameter INIT_3C bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:defaulth p
x
? 
?
%s
*synth2?
?	Parameter INIT_3D bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:defaulth p
x
? 
?
%s
*synth2?
?	Parameter INIT_3E bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:defaulth p
x
? 
?
%s
*synth2?
?	Parameter INIT_3F bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:defaulth p
x
? 
?
%s
*synth2?
?	Parameter INIT_40 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:defaulth p
x
? 
?
%s
*synth2?
?	Parameter INIT_41 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:defaulth p
x
? 
?
%s
*synth2?
?	Parameter INIT_42 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:defaulth p
x
? 
?
%s
*synth2?
?	Parameter INIT_43 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:defaulth p
x
? 
?
%s
*synth2?
?	Parameter INIT_44 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:defaulth p
x
? 
?
%s
*synth2?
?	Parameter INIT_45 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:defaulth p
x
? 
?
%s
*synth2?
?	Parameter INIT_46 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:defaulth p
x
? 
?
%s
*synth2?
?	Parameter INIT_47 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:defaulth p
x
? 
?
%s
*synth2?
?	Parameter INIT_48 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:defaulth p
x
? 
?
%s
*synth2?
?	Parameter INIT_49 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:defaulth p
x
? 
?
%s
*synth2?
?	Parameter INIT_4A bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:defaulth p
x
? 
?
%s
*synth2?
?	Parameter INIT_4B bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:defaulth p
x
? 
?
%s
*synth2?
?	Parameter INIT_4C bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:defaulth p
x
? 
?
%s
*synth2?
?	Parameter INIT_4D bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:defaulth p
x
? 
?
%s
*synth2?
?	Parameter INIT_4E bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:defaulth p
x
? 
?
%s
*synth2?
?	Parameter INIT_4F bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:defaulth p
x
? 
?
%s
*synth2?
?	Parameter INIT_50 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:defaulth p
x
? 
?
%s
*synth2?
?	Parameter INIT_51 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:defaulth p
x
? 
?
%s
*synth2?
?	Parameter INIT_52 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:defaulth p
x
? 
?
%s
*synth2?
?	Parameter INIT_53 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:defaulth p
x
? 
?
%s
*synth2?
?	Parameter INIT_54 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:defaulth p
x
? 
?
%s
*synth2?
?	Parameter INIT_55 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:defaulth p
x
? 
?
%s
*synth2?
?	Parameter INIT_56 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:defaulth p
x
? 
?
%s
*synth2?
?	Parameter INIT_57 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:defaulth p
x
? 
?
%s
*synth2?
?	Parameter INIT_58 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:defaulth p
x
? 
?
%s
*synth2?
?	Parameter INIT_59 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:defaulth p
x
? 
?
%s
*synth2?
?	Parameter INIT_5A bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:defaulth p
x
? 
?
%s
*synth2?
?	Parameter INIT_5B bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:defaulth p
x
? 
?
%s
*synth2?
?	Parameter INIT_5C bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:defaulth p
x
? 
?
%s
*synth2?
?	Parameter INIT_5D bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:defaulth p
x
? 
?
%s
*synth2?
?	Parameter INIT_5E bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:defaulth p
x
? 
?
%s
*synth2?
?	Parameter INIT_5F bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:defaulth p
x
? 
?
%s
*synth2?
?	Parameter INIT_60 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:defaulth p
x
? 
?
%s
*synth2?
?	Parameter INIT_61 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:defaulth p
x
? 
?
%s
*synth2?
?	Parameter INIT_62 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:defaulth p
x
? 
?
%s
*synth2?
?	Parameter INIT_63 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:defaulth p
x
? 
?
%s
*synth2?
?	Parameter INIT_64 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:defaulth p
x
? 
?
%s
*synth2?
?	Parameter INIT_65 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:defaulth p
x
? 
?
%s
*synth2?
?	Parameter INIT_66 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:defaulth p
x
? 
?
%s
*synth2?
?	Parameter INIT_67 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:defaulth p
x
? 
?
%s
*synth2?
?	Parameter INIT_68 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:defaulth p
x
? 
?
%s
*synth2?
?	Parameter INIT_69 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:defaulth p
x
? 
?
%s
*synth2?
?	Parameter INIT_6A bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:defaulth p
x
? 
?
%s
*synth2?
?	Parameter INIT_6B bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:defaulth p
x
? 
?
%s
*synth2?
?	Parameter INIT_6C bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:defaulth p
x
? 
?
%s
*synth2?
?	Parameter INIT_6D bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:defaulth p
x
? 
?
%s
*synth2?
?	Parameter INIT_6E bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:defaulth p
x
? 
?
%s
*synth2?
?	Parameter INIT_6F bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:defaulth p
x
? 
?
%s
*synth2?
?	Parameter INIT_70 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:defaulth p
x
? 
?
%s
*synth2?
?	Parameter INIT_71 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:defaulth p
x
? 
?
%s
*synth2?
?	Parameter INIT_72 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:defaulth p
x
? 
?
%s
*synth2?
?	Parameter INIT_73 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:defaulth p
x
? 
?
%s
*synth2?
?	Parameter INIT_74 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:defaulth p
x
? 
?
%s
*synth2?
?	Parameter INIT_75 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:defaulth p
x
? 
?
%s
*synth2?
?	Parameter INIT_76 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:defaulth p
x
? 
?
%s
*synth2?
?	Parameter INIT_77 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:defaulth p
x
? 
?
%s
*synth2?
?	Parameter INIT_78 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:defaulth p
x
? 
?
%s
*synth2?
?	Parameter INIT_79 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:defaulth p
x
? 
?
%s
*synth2?
?	Parameter INIT_7A bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:defaulth p
x
? 
?
%s
*synth2?
?	Parameter INIT_7B bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:defaulth p
x
? 
?
%s
*synth2?
?	Parameter INIT_7C bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:defaulth p
x
? 
?
%s
*synth2?
?	Parameter INIT_7D bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:defaulth p
x
? 
?
%s
*synth2?
?	Parameter INIT_7E bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:defaulth p
x
? 
?
%s
*synth2?
?	Parameter INIT_7F bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:defaulth p
x
? 
?
%s
*synth2?
?	Parameter INITP_00 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:defaulth p
x
? 
?
%s
*synth2?
?	Parameter INITP_01 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:defaulth p
x
? 
?
%s
*synth2?
?	Parameter INITP_02 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:defaulth p
x
? 
?
%s
*synth2?
?	Parameter INITP_03 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:defaulth p
x
? 
?
%s
*synth2?
?	Parameter INITP_04 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:defaulth p
x
? 
?
%s
*synth2?
?	Parameter INITP_05 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:defaulth p
x
? 
?
%s
*synth2?
?	Parameter INITP_06 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:defaulth p
x
? 
?
%s
*synth2?
?	Parameter INITP_07 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:defaulth p
x
? 
?
%s
*synth2?
?	Parameter INITP_08 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:defaulth p
x
? 
?
%s
*synth2?
?	Parameter INITP_09 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:defaulth p
x
? 
?
%s
*synth2?
?	Parameter INITP_0A bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:defaulth p
x
? 
?
%s
*synth2?
?	Parameter INITP_0B bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:defaulth p
x
? 
?
%s
*synth2?
?	Parameter INITP_0C bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:defaulth p
x
? 
?
%s
*synth2?
?	Parameter INITP_0D bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:defaulth p
x
? 
?
%s
*synth2?
?	Parameter INITP_0E bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:defaulth p
x
? 
?
%s
*synth2?
?	Parameter INITP_0F bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:defaulth p
x
? 
`
%s
*synth2H
4	Parameter INIT_FILE bound to: NONE - type: string 
2default:defaulth p
x
? 
_
%s
*synth2G
3	Parameter READ_WIDTH bound to: 4 - type: integer 
2default:defaulth p
x
? 
i
%s
*synth2Q
=	Parameter SIM_COLLISION_CHECK bound to: ALL - type: string 
2default:defaulth p
x
? 
_
%s
*synth2G
3	Parameter SIM_MODE bound to: SAFE - type: string 
2default:defaulth p
x
? 
?
%s
*synth2}
i	Parameter SRVAL bound to: 72'b000000000000000000000000000000000000000000000000000000000000000000000000 
2default:defaulth p
x
? 
h
%s
*synth2P
<	Parameter WRITE_MODE bound to: WRITE_FIRST - type: string 
2default:defaulth p
x
? 
a
%s
*synth2I
5	Parameter WRITE_WIDTH bound to: 64 - type: integer 
2default:defaulth p
x
? 
^
%s
*synth2F
2	Parameter READ_P bound to: FALSE - type: string 
2default:defaulth p
x
? 
_
%s
*synth2G
3	Parameter WRITE_P bound to: FALSE - type: string 
2default:defaulth p
x
? 
b
%s
*synth2J
6	Parameter valid_width bound to: TRUE - type: string 
2default:defaulth p
x
? 
^
%s
*synth2F
2	Parameter DIP_WIDTH bound to: 0 - type: integer 
2default:defaulth p
x
? 
^
%s
*synth2F
2	Parameter DOP_WIDTH bound to: 0 - type: integer 
2default:defaulth p
x
? 
^
%s
*synth2F
2	Parameter DI_WIDTH bound to: 64 - type: integer 
2default:defaulth p
x
? 
]
%s
*synth2E
1	Parameter DO_WIDTH bound to: 4 - type: integer 
2default:defaulth p
x
? 
b
%s
*synth2J
6	Parameter RDADDR_WIDTH bound to: 13 - type: integer 
2default:defaulth p
x
? 
a
%s
*synth2I
5	Parameter WRADDR_WIDTH bound to: 9 - type: integer 
2default:defaulth p
x
? 
]
%s
*synth2E
1	Parameter WE_WIDTH bound to: 8 - type: integer 
2default:defaulth p
x
? 
]
%s
*synth2E
1	Parameter rd_width bound to: 4 - type: integer 
2default:defaulth p
x
? 
^
%s
*synth2F
2	Parameter wr_width bound to: 72 - type: integer 
2default:defaulth p
x
? 
b
%s
*synth2J
6	Parameter RD_BYTE_WIDTH bound to: 1 - type: integer 
2default:defaulth p
x
? 
^
%s
*synth2F
2	Parameter WR_WIDTHP bound to: 8 - type: integer 
2default:defaulth p
x
? 
^
%s
*synth2F
2	Parameter RD_WIDTHP bound to: 8 - type: integer 
2default:defaulth p
x
? 
d
%s
*synth2L
8	Parameter greatest_width bound to: 64 - type: integer 
2default:defaulth p
x
? 
c
%s
*synth2K
7	Parameter MAX_ADDR_SIZE bound to: 16 - type: integer 
2default:defaulth p
x
? 
`
%s
*synth2H
4	Parameter MAX_D_SIZE bound to: 64 - type: integer 
2default:defaulth p
x
? 
`
%s
*synth2H
4	Parameter MAX_DP_SIZE bound to: 8 - type: integer 
2default:defaulth p
x
? 
`
%s
*synth2H
4	Parameter MAX_WE_SIZE bound to: 8 - type: integer 
2default:defaulth p
x
? 
a
%s
*synth2I
5	Parameter fin_rd_width bound to: 4 - type: integer 
2default:defaulth p
x
? 
b
%s
*synth2J
6	Parameter fin_wr_width bound to: 64 - type: integer 
2default:defaulth p
x
? 
k
%s
*synth2S
?	Parameter INIT_SRVAL_WIDTH_SIZE bound to: 72 - type: integer 
2default:defaulth p
x
? 
?
%s
*synth2?
l	Parameter init_tmp bound to: 72'b000000000000000000000000000000000000000000000000000000000000000000000000 
2default:defaulth p
x
? 
?
%s
*synth2?
m	Parameter srval_tmp bound to: 72'b000000000000000000000000000000000000000000000000000000000000000000000000 
2default:defaulth p
x
? 
g
%s
*synth2O
;	Parameter sim_device_pm bound to: 7SERIES - type: string 
2default:defaulth p
x
? 
?
synthesizing module '%s'%s4497*oasys2
RAMB36E12default:default2
 2default:default2O
9/tools/Xilinx/Vivado/2020.2/scripts/rt/data/unisim_comp.v2default:default2
759382default:default8@Z8-6157h px? 
\
%s
*synth2D
0	Parameter DOA_REG bound to: 0 - type: integer 
2default:defaulth p
x
? 
\
%s
*synth2D
0	Parameter DOB_REG bound to: 0 - type: integer 
2default:defaulth p
x
? 
c
%s
*synth2K
7	Parameter EN_ECC_READ bound to: FALSE - type: string 
2default:defaulth p
x
? 
d
%s
*synth2L
8	Parameter EN_ECC_WRITE bound to: FALSE - type: string 
2default:defaulth p
x
? 
?
%s
*synth2?
?	Parameter INITP_00 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:defaulth p
x
? 
?
%s
*synth2?
?	Parameter INITP_01 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:defaulth p
x
? 
?
%s
*synth2?
?	Parameter INITP_02 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:defaulth p
x
? 
?
%s
*synth2?
?	Parameter INITP_03 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:defaulth p
x
? 
?
%s
*synth2?
?	Parameter INITP_04 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:defaulth p
x
? 
?
%s
*synth2?
?	Parameter INITP_05 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:defaulth p
x
? 
?
%s
*synth2?
?	Parameter INITP_06 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:defaulth p
x
? 
?
%s
*synth2?
?	Parameter INITP_07 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:defaulth p
x
? 
?
%s
*synth2?
?	Parameter INITP_08 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:defaulth p
x
? 
?
%s
*synth2?
?	Parameter INITP_09 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:defaulth p
x
? 
?
%s
*synth2?
?	Parameter INITP_0A bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:defaulth p
x
? 
?
%s
*synth2?
?	Parameter INITP_0B bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:defaulth p
x
? 
?
%s
*synth2?
?	Parameter INITP_0C bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:defaulth p
x
? 
?
%s
*synth2?
?	Parameter INITP_0D bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:defaulth p
x
? 
?
%s
*synth2?
?	Parameter INITP_0E bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:defaulth p
x
? 
?
%s
*synth2?
?	Parameter INITP_0F bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:defaulth p
x
? 
?
%s
*synth2?
?	Parameter INIT_00 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:defaulth p
x
? 
?
%s
*synth2?
?	Parameter INIT_01 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:defaulth p
x
? 
?
%s
*synth2?
?	Parameter INIT_02 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:defaulth p
x
? 
?
%s
*synth2?
?	Parameter INIT_03 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:defaulth p
x
? 
?
%s
*synth2?
?	Parameter INIT_04 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:defaulth p
x
? 
?
%s
*synth2?
?	Parameter INIT_05 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:defaulth p
x
? 
?
%s
*synth2?
?	Parameter INIT_06 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:defaulth p
x
? 
?
%s
*synth2?
?	Parameter INIT_07 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:defaulth p
x
? 
?
%s
*synth2?
?	Parameter INIT_08 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:defaulth p
x
? 
?
%s
*synth2?
?	Parameter INIT_09 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:defaulth p
x
? 
?
%s
*synth2?
?	Parameter INIT_0A bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:defaulth p
x
? 
?
%s
*synth2?
?	Parameter INIT_0B bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:defaulth p
x
? 
?
%s
*synth2?
?	Parameter INIT_0C bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:defaulth p
x
? 
?
%s
*synth2?
?	Parameter INIT_0D bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:defaulth p
x
? 
?
%s
*synth2?
?	Parameter INIT_0E bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:defaulth p
x
? 
?
%s
*synth2?
?	Parameter INIT_0F bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:defaulth p
x
? 
?
%s
*synth2?
?	Parameter INIT_10 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:defaulth p
x
? 
?
%s
*synth2?
?	Parameter INIT_11 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:defaulth p
x
? 
?
%s
*synth2?
?	Parameter INIT_12 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:defaulth p
x
? 
?
%s
*synth2?
?	Parameter INIT_13 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:defaulth p
x
? 
?
%s
*synth2?
?	Parameter INIT_14 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:defaulth p
x
? 
?
%s
*synth2?
?	Parameter INIT_15 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:defaulth p
x
? 
?
%s
*synth2?
?	Parameter INIT_16 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:defaulth p
x
? 
?
%s
*synth2?
?	Parameter INIT_17 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:defaulth p
x
? 
?
%s
*synth2?
?	Parameter INIT_18 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:defaulth p
x
? 
?
%s
*synth2?
?	Parameter INIT_19 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:defaulth p
x
? 
?
%s
*synth2?
?	Parameter INIT_1A bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:defaulth p
x
? 
?
%s
*synth2?
?	Parameter INIT_1B bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:defaulth p
x
? 
?
%s
*synth2?
?	Parameter INIT_1C bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:defaulth p
x
? 
?
%s
*synth2?
?	Parameter INIT_1D bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:defaulth p
x
? 
?
%s
*synth2?
?	Parameter INIT_1E bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:defaulth p
x
? 
?
%s
*synth2?
?	Parameter INIT_1F bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:defaulth p
x
? 
?
%s
*synth2?
?	Parameter INIT_20 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:defaulth p
x
? 
?
%s
*synth2?
?	Parameter INIT_21 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:defaulth p
x
? 
?
%s
*synth2?
?	Parameter INIT_22 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:defaulth p
x
? 
?
%s
*synth2?
?	Parameter INIT_23 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:defaulth p
x
? 
?
%s
*synth2?
?	Parameter INIT_24 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:defaulth p
x
? 
?
%s
*synth2?
?	Parameter INIT_25 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:defaulth p
x
? 
?
%s
*synth2?
?	Parameter INIT_26 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:defaulth p
x
? 
?
%s
*synth2?
?	Parameter INIT_27 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:defaulth p
x
? 
?
%s
*synth2?
?	Parameter INIT_28 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:defaulth p
x
? 
?
%s
*synth2?
?	Parameter INIT_29 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:defaulth p
x
? 
?
%s
*synth2?
?	Parameter INIT_2A bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:defaulth p
x
? 
?
%s
*synth2?
?	Parameter INIT_2B bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:defaulth p
x
? 
?
%s
*synth2?
?	Parameter INIT_2C bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:defaulth p
x
? 
?
%s
*synth2?
?	Parameter INIT_2D bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:defaulth p
x
? 
?
%s
*synth2?
?	Parameter INIT_2E bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:defaulth p
x
? 
?
%s
*synth2?
?	Parameter INIT_2F bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:defaulth p
x
? 
?
%s
*synth2?
?	Parameter INIT_30 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:defaulth p
x
? 
?
%s
*synth2?
?	Parameter INIT_31 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:defaulth p
x
? 
?
%s
*synth2?
?	Parameter INIT_32 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:defaulth p
x
? 
?
%s
*synth2?
?	Parameter INIT_33 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:defaulth p
x
? 
?
%s
*synth2?
?	Parameter INIT_34 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:defaulth p
x
? 
?
%s
*synth2?
?	Parameter INIT_35 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:defaulth p
x
? 
?
%s
*synth2?
?	Parameter INIT_36 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:defaulth p
x
? 
?
%s
*synth2?
?	Parameter INIT_37 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:defaulth p
x
? 
?
%s
*synth2?
?	Parameter INIT_38 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:defaulth p
x
? 
?
%s
*synth2?
?	Parameter INIT_39 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:defaulth p
x
? 
?
%s
*synth2?
?	Parameter INIT_3A bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:defaulth p
x
? 
?
%s
*synth2?
?	Parameter INIT_3B bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:defaulth p
x
? 
?
%s
*synth2?
?	Parameter INIT_3C bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:defaulth p
x
? 
?
%s
*synth2?
?	Parameter INIT_3D bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:defaulth p
x
? 
?
%s
*synth2?
?	Parameter INIT_3E bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:defaulth p
x
? 
?
%s
*synth2?
?	Parameter INIT_3F bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:defaulth p
x
? 
?
%s
*synth2?
?	Parameter INIT_40 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:defaulth p
x
? 
?
%s
*synth2?
?	Parameter INIT_41 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:defaulth p
x
? 
?
%s
*synth2?
?	Parameter INIT_42 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:defaulth p
x
? 
?
%s
*synth2?
?	Parameter INIT_43 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:defaulth p
x
? 
?
%s
*synth2?
?	Parameter INIT_44 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:defaulth p
x
? 
?
%s
*synth2?
?	Parameter INIT_45 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:defaulth p
x
? 
?
%s
*synth2?
?	Parameter INIT_46 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:defaulth p
x
? 
?
%s
*synth2?
?	Parameter INIT_47 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:defaulth p
x
? 
?
%s
*synth2?
?	Parameter INIT_48 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:defaulth p
x
? 
?
%s
*synth2?
?	Parameter INIT_49 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:defaulth p
x
? 
?
%s
*synth2?
?	Parameter INIT_4A bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:defaulth p
x
? 
?
%s
*synth2?
?	Parameter INIT_4B bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:defaulth p
x
? 
?
%s
*synth2?
?	Parameter INIT_4C bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:defaulth p
x
? 
?
%s
*synth2?
?	Parameter INIT_4D bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:defaulth p
x
? 
?
%s
*synth2?
?	Parameter INIT_4E bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:defaulth p
x
? 
?
%s
*synth2?
?	Parameter INIT_4F bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:defaulth p
x
? 
?
%s
*synth2?
?	Parameter INIT_50 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:defaulth p
x
? 
?
%s
*synth2?
?	Parameter INIT_51 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:defaulth p
x
? 
?
%s
*synth2?
?	Parameter INIT_52 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:defaulth p
x
? 
?
%s
*synth2?
?	Parameter INIT_53 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:defaulth p
x
? 
?
%s
*synth2?
?	Parameter INIT_54 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:defaulth p
x
? 
?
%s
*synth2?
?	Parameter INIT_55 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:defaulth p
x
? 
?
%s
*synth2?
?	Parameter INIT_56 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:defaulth p
x
? 
?
%s
*synth2?
?	Parameter INIT_57 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:defaulth p
x
? 
?
%s
*synth2?
?	Parameter INIT_58 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:defaulth p
x
? 
?
%s
*synth2?
?	Parameter INIT_59 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:defaulth p
x
? 
?
%s
*synth2?
?	Parameter INIT_5A bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:defaulth p
x
? 
?
%s
*synth2?
?	Parameter INIT_5B bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:defaulth p
x
? 
?
%s
*synth2?
?	Parameter INIT_5C bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:defaulth p
x
? 
?
%s
*synth2?
?	Parameter INIT_5D bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:defaulth p
x
? 
?
%s
*synth2?
?	Parameter INIT_5E bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:defaulth p
x
? 
?
%s
*synth2?
?	Parameter INIT_5F bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:defaulth p
x
? 
?
%s
*synth2?
?	Parameter INIT_60 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:defaulth p
x
? 
?
%s
*synth2?
?	Parameter INIT_61 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:defaulth p
x
? 
?
%s
*synth2?
?	Parameter INIT_62 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:defaulth p
x
? 
?
%s
*synth2?
?	Parameter INIT_63 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:defaulth p
x
? 
?
%s
*synth2?
?	Parameter INIT_64 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:defaulth p
x
? 
?
%s
*synth2?
?	Parameter INIT_65 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:defaulth p
x
? 
?
%s
*synth2?
?	Parameter INIT_66 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:defaulth p
x
? 
?
%s
*synth2?
?	Parameter INIT_67 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:defaulth p
x
? 
?
%s
*synth2?
?	Parameter INIT_68 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:defaulth p
x
? 
?
%s
*synth2?
?	Parameter INIT_69 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:defaulth p
x
? 
?
%s
*synth2?
?	Parameter INIT_6A bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:defaulth p
x
? 
?
%s
*synth2?
?	Parameter INIT_6B bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:defaulth p
x
? 
?
%s
*synth2?
?	Parameter INIT_6C bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:defaulth p
x
? 
?
%s
*synth2?
?	Parameter INIT_6D bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:defaulth p
x
? 
?
%s
*synth2?
?	Parameter INIT_6E bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:defaulth p
x
? 
?
%s
*synth2?
?	Parameter INIT_6F bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:defaulth p
x
? 
?
%s
*synth2?
?	Parameter INIT_70 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:defaulth p
x
? 
?
%s
*synth2?
?	Parameter INIT_71 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:defaulth p
x
? 
?
%s
*synth2?
?	Parameter INIT_72 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:defaulth p
x
? 
?
%s
*synth2?
?	Parameter INIT_73 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:defaulth p
x
? 
?
%s
*synth2?
?	Parameter INIT_74 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:defaulth p
x
? 
?
%s
*synth2?
?	Parameter INIT_75 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:defaulth p
x
? 
?
%s
*synth2?
?	Parameter INIT_76 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:defaulth p
x
? 
?
%s
*synth2?
?	Parameter INIT_77 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:defaulth p
x
? 
?
%s
*synth2?
?	Parameter INIT_78 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:defaulth p
x
? 
?
%s
*synth2?
?	Parameter INIT_79 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:defaulth p
x
? 
?
%s
*synth2?
?	Parameter INIT_7A bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:defaulth p
x
? 
?
%s
*synth2?
?	Parameter INIT_7B bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:defaulth p
x
? 
?
%s
*synth2?
?	Parameter INIT_7C bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:defaulth p
x
? 
?
%s
*synth2?
?	Parameter INIT_7D bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:defaulth p
x
? 
?
%s
*synth2?
?	Parameter INIT_7E bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:defaulth p
x
? 
?
%s
*synth2?
?	Parameter INIT_7F bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:defaulth p
x
? 
r
%s
*synth2Z
F	Parameter INIT_A bound to: 36'b000000000000000000000000000000000000 
2default:defaulth p
x
? 
r
%s
*synth2Z
F	Parameter INIT_B bound to: 36'b000000000000000000000000000000000000 
2default:defaulth p
x
? 
`
%s
*synth2H
4	Parameter INIT_FILE bound to: NONE - type: string 
2default:defaulth p
x
? 
]
%s
*synth2E
1	Parameter IS_CLKARDCLK_INVERTED bound to: 1'b0 
2default:defaulth p
x
? 
]
%s
*synth2E
1	Parameter IS_CLKBWRCLK_INVERTED bound to: 1'b0 
2default:defaulth p
x
? 
[
%s
*synth2C
/	Parameter IS_ENARDEN_INVERTED bound to: 1'b0 
2default:defaulth p
x
? 
[
%s
*synth2C
/	Parameter IS_ENBWREN_INVERTED bound to: 1'b0 
2default:defaulth p
x
? 
a
%s
*synth2I
5	Parameter IS_RSTRAMARSTRAM_INVERTED bound to: 1'b0 
2default:defaulth p
x
? 
[
%s
*synth2C
/	Parameter IS_RSTRAMB_INVERTED bound to: 1'b0 
2default:defaulth p
x
? 
a
%s
*synth2I
5	Parameter IS_RSTREGARSTREG_INVERTED bound to: 1'b0 
2default:defaulth p
x
? 
[
%s
*synth2C
/	Parameter IS_RSTREGB_INVERTED bound to: 1'b0 
2default:defaulth p
x
? 
f
%s
*synth2N
:	Parameter RAM_EXTENSION_A bound to: NONE - type: string 
2default:defaulth p
x
? 
f
%s
*synth2N
:	Parameter RAM_EXTENSION_B bound to: NONE - type: string 
2default:defaulth p
x
? 
^
%s
*synth2F
2	Parameter RAM_MODE bound to: SDP - type: string 
2default:defaulth p
x
? 
y
%s
*synth2a
M	Parameter RDADDR_COLLISION_HWCONFIG bound to: DELAYED_WRITE - type: string 
2default:defaulth p
x
? 
a
%s
*synth2I
5	Parameter READ_WIDTH_A bound to: 4 - type: integer 
2default:defaulth p
x
? 
a
%s
*synth2I
5	Parameter READ_WIDTH_B bound to: 0 - type: integer 
2default:defaulth p
x
? 
j
%s
*synth2R
>	Parameter RSTREG_PRIORITY_A bound to: RSTREG - type: string 
2default:defaulth p
x
? 
j
%s
*synth2R
>	Parameter RSTREG_PRIORITY_B bound to: RSTREG - type: string 
2default:defaulth p
x
? 
i
%s
*synth2Q
=	Parameter SIM_COLLISION_CHECK bound to: ALL - type: string 
2default:defaulth p
x
? 
d
%s
*synth2L
8	Parameter SIM_DEVICE bound to: 7SERIES - type: string 
2default:defaulth p
x
? 
s
%s
*synth2[
G	Parameter SRVAL_A bound to: 36'b000000000000000000000000000000000000 
2default:defaulth p
x
? 
s
%s
*synth2[
G	Parameter SRVAL_B bound to: 36'b000000000000000000000000000000000000 
2default:defaulth p
x
? 
j
%s
*synth2R
>	Parameter WRITE_MODE_A bound to: WRITE_FIRST - type: string 
2default:defaulth p
x
? 
j
%s
*synth2R
>	Parameter WRITE_MODE_B bound to: WRITE_FIRST - type: string 
2default:defaulth p
x
? 
b
%s
*synth2J
6	Parameter WRITE_WIDTH_A bound to: 0 - type: integer 
2default:defaulth p
x
? 
c
%s
*synth2K
7	Parameter WRITE_WIDTH_B bound to: 72 - type: integer 
2default:defaulth p
x
? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
RAMB36E12default:default2
 2default:default2
282default:default2
12default:default2O
9/tools/Xilinx/Vivado/2020.2/scripts/rt/data/unisim_comp.v2default:default2
759382default:default8@Z8-6155h px? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2"
BRAM_SDP_MACRO2default:default2
 2default:default2
292default:default2
12default:default2\
F/tools/Xilinx/Vivado/2020.2/data/verilog/src/unimacro/BRAM_SDP_MACRO.v2default:default2
342default:default8@Z8-6155h px? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2

ICacheData2default:default2
 2default:default2
302default:default2
12default:default2\
F/home/pentium/zjucpu/zjucpu.srcs/sources_1/imports/v/Cache/CacheData.v2default:default2
1482default:default8@Z8-6155h px? 
?
synthesizing module '%s'%s4497*oasys2!
ICacheFSM_CPU2default:default2
 2default:default2Y
C/home/pentium/zjucpu/zjucpu.srcs/sources_1/imports/v/Cache/ICache.v2default:default2
642default:default8@Z8-6157h px? 
S
%s
*synth2;
'	Parameter STATE_IDLE bound to: 2'b00 
2default:defaulth p
x
? 
S
%s
*synth2;
'	Parameter STATE_WAIT bound to: 2'b01 
2default:defaulth p
x
? 
Y
%s
*synth2A
-	Parameter STATE_INVALIDATE bound to: 2'b10 
2default:defaulth p
x
? 
?
synthesizing module '%s'%s4497*oasys2
	ICacheTag2default:default2
 2default:default2]
G/home/pentium/zjucpu/zjucpu.srcs/sources_1/imports/v/Cache/CacheFlags.v2default:default2
602default:default8@Z8-6157h px? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
	ICacheTag2default:default2
 2default:default2
312default:default2
12default:default2]
G/home/pentium/zjucpu/zjucpu.srcs/sources_1/imports/v/Cache/CacheFlags.v2default:default2
602default:default8@Z8-6155h px? 
?
synthesizing module '%s'%s4497*oasys2
CacheLRUBit2default:default2
 2default:default2]
G/home/pentium/zjucpu/zjucpu.srcs/sources_1/imports/v/Cache/CacheFlags.v2default:default2
212default:default8@Z8-6157h px? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
CacheLRUBit2default:default2
 2default:default2
322default:default2
12default:default2]
G/home/pentium/zjucpu/zjucpu.srcs/sources_1/imports/v/Cache/CacheFlags.v2default:default2
212default:default8@Z8-6155h px? 
?
-case statement is not full and has no default155*oasys2Y
C/home/pentium/zjucpu/zjucpu.srcs/sources_1/imports/v/Cache/ICache.v2default:default2
1132default:default8@Z8-155h px? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2!
ICacheFSM_CPU2default:default2
 2default:default2
332default:default2
12default:default2Y
C/home/pentium/zjucpu/zjucpu.srcs/sources_1/imports/v/Cache/ICache.v2default:default2
642default:default8@Z8-6155h px? 
?
synthesizing module '%s'%s4497*oasys2!
ICacheFSM_DDR2default:default2
 2default:default2Y
C/home/pentium/zjucpu/zjucpu.srcs/sources_1/imports/v/Cache/ICache.v2default:default2
1612default:default8@Z8-6157h px? 
S
%s
*synth2;
'	Parameter STATE_IDLE bound to: 2'b00 
2default:defaulth p
x
? 
S
%s
*synth2;
'	Parameter STATE_WAIT bound to: 2'b01 
2default:defaulth p
x
? 
T
%s
*synth2<
(	Parameter STATE_WRITE bound to: 2'b10 
2default:defaulth p
x
? 
?
-case statement is not full and has no default155*oasys2Y
C/home/pentium/zjucpu/zjucpu.srcs/sources_1/imports/v/Cache/ICache.v2default:default2
1932default:default8@Z8-155h px? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2!
ICacheFSM_DDR2default:default2
 2default:default2
342default:default2
12default:default2Y
C/home/pentium/zjucpu/zjucpu.srcs/sources_1/imports/v/Cache/ICache.v2default:default2
1612default:default8@Z8-6155h px? 
?
synthesizing module '%s'%s4497*oasys2"
AsyncHandshake2default:default2
 2default:default2l
V/home/pentium/zjucpu/zjucpu.srcs/sources_1/imports/v/Infrastructure/ClockDomainCross.v2default:default2
1042default:default8@Z8-6157h px? 
_
%s
*synth2G
3	Parameter STB_FREQ bound to: 200 - type: integer 
2default:defaulth p
x
? 
_
%s
*synth2G
3	Parameter ACK_FREQ bound to: 100 - type: integer 
2default:defaulth p
x
? 
?
synthesizing module '%s'%s4497*oasys2&
Handshake_freqDown2default:default2
 2default:default2l
V/home/pentium/zjucpu/zjucpu.srcs/sources_1/imports/v/Infrastructure/ClockDomainCross.v2default:default2
882default:default8@Z8-6157h px? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2&
Handshake_freqDown2default:default2
 2default:default2
352default:default2
12default:default2l
V/home/pentium/zjucpu/zjucpu.srcs/sources_1/imports/v/Infrastructure/ClockDomainCross.v2default:default2
882default:default8@Z8-6155h px? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2"
AsyncHandshake2default:default2
 2default:default2
362default:default2
12default:default2l
V/home/pentium/zjucpu/zjucpu.srcs/sources_1/imports/v/Infrastructure/ClockDomainCross.v2default:default2
1042default:default8@Z8-6155h px? 
?
synthesizing module '%s'%s4497*oasys2$
ClockDomainCross2default:default2
 2default:default2l
V/home/pentium/zjucpu/zjucpu.srcs/sources_1/imports/v/Infrastructure/ClockDomainCross.v2default:default2
72default:default8@Z8-6157h px? 
Z
%s
*synth2B
.	Parameter I_REG bound to: 0 - type: integer 
2default:defaulth p
x
? 
Z
%s
*synth2B
.	Parameter O_REG bound to: 1 - type: integer 
2default:defaulth p
x
? 
?
synthesizing module '%s'%s4497*oasys2
PipeReg2default:default2
 2default:default2l
V/home/pentium/zjucpu/zjucpu.srcs/sources_1/imports/v/Infrastructure/ClockDomainCross.v2default:default2
192default:default8@Z8-6157h px? 
Z
%s
*synth2B
.	Parameter DEPTH bound to: 0 - type: integer 
2default:defaulth p
x
? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
PipeReg2default:default2
 2default:default2
372default:default2
12default:default2l
V/home/pentium/zjucpu/zjucpu.srcs/sources_1/imports/v/Infrastructure/ClockDomainCross.v2default:default2
192default:default8@Z8-6155h px? 
?
synthesizing module '%s'%s4497*oasys2+
PipeReg__parameterized02default:default2
 2default:default2l
V/home/pentium/zjucpu/zjucpu.srcs/sources_1/imports/v/Infrastructure/ClockDomainCross.v2default:default2
192default:default8@Z8-6157h px? 
Z
%s
*synth2B
.	Parameter DEPTH bound to: 1 - type: integer 
2default:defaulth p
x
? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2+
PipeReg__parameterized02default:default2
 2default:default2
372default:default2
12default:default2l
V/home/pentium/zjucpu/zjucpu.srcs/sources_1/imports/v/Infrastructure/ClockDomainCross.v2default:default2
192default:default8@Z8-6155h px? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2$
ClockDomainCross2default:default2
 2default:default2
382default:default2
12default:default2l
V/home/pentium/zjucpu/zjucpu.srcs/sources_1/imports/v/Infrastructure/ClockDomainCross.v2default:default2
72default:default8@Z8-6155h px? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
ICache2default:default2
 2default:default2
392default:default2
12default:default2Y
C/home/pentium/zjucpu/zjucpu.srcs/sources_1/imports/v/Cache/ICache.v2default:default2
212default:default8@Z8-6155h px? 
?
synthesizing module '%s'%s4497*oasys2
DCache2default:default2
 2default:default2Y
C/home/pentium/zjucpu/zjucpu.srcs/sources_1/imports/v/Cache/DCache.v2default:default2
302default:default8@Z8-6157h px? 
c
%s
*synth2K
7	Parameter CLKCPU_PERIOD bound to: 10 - type: integer 
2default:defaulth p
x
? 
b
%s
*synth2J
6	Parameter CLKDDR_PERIOD bound to: 5 - type: integer 
2default:defaulth p
x
? 
?
synthesizing module '%s'%s4497*oasys2

DCacheData2default:default2
 2default:default2\
F/home/pentium/zjucpu/zjucpu.srcs/sources_1/imports/v/Cache/CacheData.v2default:default2
782default:default8@Z8-6157h px? 
?
synthesizing module '%s'%s4497*oasys2"
DCacheDataCore2default:default2
 2default:default2\
F/home/pentium/zjucpu/zjucpu.srcs/sources_1/imports/v/Cache/CacheData.v2default:default2
202default:default8@Z8-6157h px? 
?
synthesizing module '%s'%s4497*oasys2"
BRAM_TDP_MACRO2default:default2
 2default:default2\
F/tools/Xilinx/Vivado/2020.2/data/verilog/src/unimacro/BRAM_TDP_MACRO.v2default:default2
302default:default8@Z8-6157h px? 
`
%s
*synth2H
4	Parameter BRAM_SIZE bound to: 36Kb - type: string 
2default:defaulth p
x
? 
`
%s
*synth2H
4	Parameter DEVICE bound to: 7SERIES - type: string 
2default:defaulth p
x
? 
\
%s
*synth2D
0	Parameter DOA_REG bound to: 0 - type: integer 
2default:defaulth p
x
? 
\
%s
*synth2D
0	Parameter DOB_REG bound to: 0 - type: integer 
2default:defaulth p
x
? 
r
%s
*synth2Z
F	Parameter INIT_A bound to: 36'b000000000000000000000000000000000000 
2default:defaulth p
x
? 
r
%s
*synth2Z
F	Parameter INIT_B bound to: 36'b000000000000000000000000000000000000 
2default:defaulth p
x
? 
?
%s
*synth2?
?	Parameter INIT_00 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:defaulth p
x
? 
?
%s
*synth2?
?	Parameter INIT_01 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:defaulth p
x
? 
?
%s
*synth2?
?	Parameter INIT_02 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:defaulth p
x
? 
?
%s
*synth2?
?	Parameter INIT_03 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:defaulth p
x
? 
?
%s
*synth2?
?	Parameter INIT_04 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:defaulth p
x
? 
?
%s
*synth2?
?	Parameter INIT_05 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:defaulth p
x
? 
?
%s
*synth2?
?	Parameter INIT_06 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:defaulth p
x
? 
?
%s
*synth2?
?	Parameter INIT_07 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:defaulth p
x
? 
?
%s
*synth2?
?	Parameter INIT_08 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:defaulth p
x
? 
?
%s
*synth2?
?	Parameter INIT_09 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:defaulth p
x
? 
?
%s
*synth2?
?	Parameter INIT_0A bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:defaulth p
x
? 
?
%s
*synth2?
?	Parameter INIT_0B bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:defaulth p
x
? 
?
%s
*synth2?
?	Parameter INIT_0C bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:defaulth p
x
? 
?
%s
*synth2?
?	Parameter INIT_0D bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:defaulth p
x
? 
?
%s
*synth2?
?	Parameter INIT_0E bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:defaulth p
x
? 
?
%s
*synth2?
?	Parameter INIT_0F bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:defaulth p
x
? 
?
%s
*synth2?
?	Parameter INIT_10 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:defaulth p
x
? 
?
%s
*synth2?
?	Parameter INIT_11 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:defaulth p
x
? 
?
%s
*synth2?
?	Parameter INIT_12 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:defaulth p
x
? 
?
%s
*synth2?
?	Parameter INIT_13 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:defaulth p
x
? 
?
%s
*synth2?
?	Parameter INIT_14 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:defaulth p
x
? 
?
%s
*synth2?
?	Parameter INIT_15 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:defaulth p
x
? 
?
%s
*synth2?
?	Parameter INIT_16 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:defaulth p
x
? 
?
%s
*synth2?
?	Parameter INIT_17 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:defaulth p
x
? 
?
%s
*synth2?
?	Parameter INIT_18 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:defaulth p
x
? 
?
%s
*synth2?
?	Parameter INIT_19 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:defaulth p
x
? 
?
%s
*synth2?
?	Parameter INIT_1A bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:defaulth p
x
? 
?
%s
*synth2?
?	Parameter INIT_1B bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:defaulth p
x
? 
?
%s
*synth2?
?	Parameter INIT_1C bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:defaulth p
x
? 
?
%s
*synth2?
?	Parameter INIT_1D bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:defaulth p
x
? 
?
%s
*synth2?
?	Parameter INIT_1E bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:defaulth p
x
? 
?
%s
*synth2?
?	Parameter INIT_1F bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:defaulth p
x
? 
?
%s
*synth2?
?	Parameter INIT_20 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:defaulth p
x
? 
?
%s
*synth2?
?	Parameter INIT_21 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:defaulth p
x
? 
?
%s
*synth2?
?	Parameter INIT_22 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:defaulth p
x
? 
?
%s
*synth2?
?	Parameter INIT_23 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:defaulth p
x
? 
?
%s
*synth2?
?	Parameter INIT_24 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:defaulth p
x
? 
?
%s
*synth2?
?	Parameter INIT_25 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:defaulth p
x
? 
?
%s
*synth2?
?	Parameter INIT_26 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:defaulth p
x
? 
?
%s
*synth2?
?	Parameter INIT_27 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:defaulth p
x
? 
?
%s
*synth2?
?	Parameter INIT_28 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:defaulth p
x
? 
?
%s
*synth2?
?	Parameter INIT_29 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:defaulth p
x
? 
?
%s
*synth2?
?	Parameter INIT_2A bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:defaulth p
x
? 
?
%s
*synth2?
?	Parameter INIT_2B bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:defaulth p
x
? 
?
%s
*synth2?
?	Parameter INIT_2C bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:defaulth p
x
? 
?
%s
*synth2?
?	Parameter INIT_2D bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:defaulth p
x
? 
?
%s
*synth2?
?	Parameter INIT_2E bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:defaulth p
x
? 
?
%s
*synth2?
?	Parameter INIT_2F bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:defaulth p
x
? 
?
%s
*synth2?
?	Parameter INIT_30 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:defaulth p
x
? 
?
%s
*synth2?
?	Parameter INIT_31 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:defaulth p
x
? 
?
%s
*synth2?
?	Parameter INIT_32 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:defaulth p
x
? 
?
%s
*synth2?
?	Parameter INIT_33 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:defaulth p
x
? 
?
%s
*synth2?
?	Parameter INIT_34 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:defaulth p
x
? 
?
%s
*synth2?
?	Parameter INIT_35 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:defaulth p
x
? 
?
%s
*synth2?
?	Parameter INIT_36 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:defaulth p
x
? 
?
%s
*synth2?
?	Parameter INIT_37 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:defaulth p
x
? 
?
%s
*synth2?
?	Parameter INIT_38 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:defaulth p
x
? 
?
%s
*synth2?
?	Parameter INIT_39 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:defaulth p
x
? 
?
%s
*synth2?
?	Parameter INIT_3A bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:defaulth p
x
? 
?
%s
*synth2?
?	Parameter INIT_3B bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:defaulth p
x
? 
?
%s
*synth2?
?	Parameter INIT_3C bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:defaulth p
x
? 
?
%s
*synth2?
?	Parameter INIT_3D bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:defaulth p
x
? 
?
%s
*synth2?
?	Parameter INIT_3E bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:defaulth p
x
? 
?
%s
*synth2?
?	Parameter INIT_3F bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:defaulth p
x
? 
?
%s
*synth2?
?	Parameter INIT_40 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:defaulth p
x
? 
?
%s
*synth2?
?	Parameter INIT_41 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:defaulth p
x
? 
?
%s
*synth2?
?	Parameter INIT_42 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:defaulth p
x
? 
?
%s
*synth2?
?	Parameter INIT_43 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:defaulth p
x
? 
?
%s
*synth2?
?	Parameter INIT_44 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:defaulth p
x
? 
?
%s
*synth2?
?	Parameter INIT_45 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:defaulth p
x
? 
?
%s
*synth2?
?	Parameter INIT_46 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:defaulth p
x
? 
?
%s
*synth2?
?	Parameter INIT_47 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:defaulth p
x
? 
?
%s
*synth2?
?	Parameter INIT_48 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:defaulth p
x
? 
?
%s
*synth2?
?	Parameter INIT_49 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:defaulth p
x
? 
?
%s
*synth2?
?	Parameter INIT_4A bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:defaulth p
x
? 
?
%s
*synth2?
?	Parameter INIT_4B bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:defaulth p
x
? 
?
%s
*synth2?
?	Parameter INIT_4C bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:defaulth p
x
? 
?
%s
*synth2?
?	Parameter INIT_4D bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:defaulth p
x
? 
?
%s
*synth2?
?	Parameter INIT_4E bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:defaulth p
x
? 
?
%s
*synth2?
?	Parameter INIT_4F bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:defaulth p
x
? 
?
%s
*synth2?
?	Parameter INIT_50 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:defaulth p
x
? 
?
%s
*synth2?
?	Parameter INIT_51 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:defaulth p
x
? 
?
%s
*synth2?
?	Parameter INIT_52 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:defaulth p
x
? 
?
%s
*synth2?
?	Parameter INIT_53 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:defaulth p
x
? 
?
%s
*synth2?
?	Parameter INIT_54 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:defaulth p
x
? 
?
%s
*synth2?
?	Parameter INIT_55 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:defaulth p
x
? 
?
%s
*synth2?
?	Parameter INIT_56 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:defaulth p
x
? 
?
%s
*synth2?
?	Parameter INIT_57 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:defaulth p
x
? 
?
%s
*synth2?
?	Parameter INIT_58 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:defaulth p
x
? 
?
%s
*synth2?
?	Parameter INIT_59 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:defaulth p
x
? 
?
%s
*synth2?
?	Parameter INIT_5A bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:defaulth p
x
? 
?
%s
*synth2?
?	Parameter INIT_5B bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:defaulth p
x
? 
?
%s
*synth2?
?	Parameter INIT_5C bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:defaulth p
x
? 
?
%s
*synth2?
?	Parameter INIT_5D bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:defaulth p
x
? 
?
%s
*synth2?
?	Parameter INIT_5E bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:defaulth p
x
? 
?
%s
*synth2?
?	Parameter INIT_5F bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:defaulth p
x
? 
?
%s
*synth2?
?	Parameter INIT_60 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:defaulth p
x
? 
?
%s
*synth2?
?	Parameter INIT_61 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:defaulth p
x
? 
?
%s
*synth2?
?	Parameter INIT_62 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:defaulth p
x
? 
?
%s
*synth2?
?	Parameter INIT_63 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:defaulth p
x
? 
?
%s
*synth2?
?	Parameter INIT_64 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:defaulth p
x
? 
?
%s
*synth2?
?	Parameter INIT_65 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:defaulth p
x
? 
?
%s
*synth2?
?	Parameter INIT_66 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:defaulth p
x
? 
?
%s
*synth2?
?	Parameter INIT_67 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:defaulth p
x
? 
?
%s
*synth2?
?	Parameter INIT_68 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:defaulth p
x
? 
?
%s
*synth2?
?	Parameter INIT_69 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:defaulth p
x
? 
?
%s
*synth2?
?	Parameter INIT_6A bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:defaulth p
x
? 
?
%s
*synth2?
?	Parameter INIT_6B bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:defaulth p
x
? 
?
%s
*synth2?
?	Parameter INIT_6C bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:defaulth p
x
? 
?
%s
*synth2?
?	Parameter INIT_6D bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:defaulth p
x
? 
?
%s
*synth2?
?	Parameter INIT_6E bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:defaulth p
x
? 
?
%s
*synth2?
?	Parameter INIT_6F bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:defaulth p
x
? 
?
%s
*synth2?
?	Parameter INIT_70 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:defaulth p
x
? 
?
%s
*synth2?
?	Parameter INIT_71 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:defaulth p
x
? 
?
%s
*synth2?
?	Parameter INIT_72 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:defaulth p
x
? 
?
%s
*synth2?
?	Parameter INIT_73 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:defaulth p
x
? 
?
%s
*synth2?
?	Parameter INIT_74 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:defaulth p
x
? 
?
%s
*synth2?
?	Parameter INIT_75 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:defaulth p
x
? 
?
%s
*synth2?
?	Parameter INIT_76 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:defaulth p
x
? 
?
%s
*synth2?
?	Parameter INIT_77 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:defaulth p
x
? 
?
%s
*synth2?
?	Parameter INIT_78 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:defaulth p
x
? 
?
%s
*synth2?
?	Parameter INIT_79 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:defaulth p
x
? 
?
%s
*synth2?
?	Parameter INIT_7A bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:defaulth p
x
? 
?
%s
*synth2?
?	Parameter INIT_7B bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:defaulth p
x
? 
?
%s
*synth2?
?	Parameter INIT_7C bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:defaulth p
x
? 
?
%s
*synth2?
?	Parameter INIT_7D bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:defaulth p
x
? 
?
%s
*synth2?
?	Parameter INIT_7E bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:defaulth p
x
? 
?
%s
*synth2?
?	Parameter INIT_7F bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:defaulth p
x
? 
?
%s
*synth2?
?	Parameter INITP_00 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:defaulth p
x
? 
?
%s
*synth2?
?	Parameter INITP_01 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:defaulth p
x
? 
?
%s
*synth2?
?	Parameter INITP_02 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:defaulth p
x
? 
?
%s
*synth2?
?	Parameter INITP_03 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:defaulth p
x
? 
?
%s
*synth2?
?	Parameter INITP_04 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:defaulth p
x
? 
?
%s
*synth2?
?	Parameter INITP_05 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:defaulth p
x
? 
?
%s
*synth2?
?	Parameter INITP_06 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:defaulth p
x
? 
?
%s
*synth2?
?	Parameter INITP_07 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:defaulth p
x
? 
?
%s
*synth2?
?	Parameter INITP_08 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:defaulth p
x
? 
?
%s
*synth2?
?	Parameter INITP_09 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:defaulth p
x
? 
?
%s
*synth2?
?	Parameter INITP_0A bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:defaulth p
x
? 
?
%s
*synth2?
?	Parameter INITP_0B bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:defaulth p
x
? 
?
%s
*synth2?
?	Parameter INITP_0C bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:defaulth p
x
? 
?
%s
*synth2?
?	Parameter INITP_0D bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:defaulth p
x
? 
?
%s
*synth2?
?	Parameter INITP_0E bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:defaulth p
x
? 
?
%s
*synth2?
?	Parameter INITP_0F bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:defaulth p
x
? 
`
%s
*synth2H
4	Parameter INIT_FILE bound to: NONE - type: string 
2default:defaulth p
x
? 
a
%s
*synth2I
5	Parameter READ_WIDTH_A bound to: 9 - type: integer 
2default:defaulth p
x
? 
b
%s
*synth2J
6	Parameter READ_WIDTH_B bound to: 36 - type: integer 
2default:defaulth p
x
? 
i
%s
*synth2Q
=	Parameter SIM_COLLISION_CHECK bound to: ALL - type: string 
2default:defaulth p
x
? 
_
%s
*synth2G
3	Parameter SIM_MODE bound to: FAST - type: string 
2default:defaulth p
x
? 
s
%s
*synth2[
G	Parameter SRVAL_A bound to: 36'b000000000000000000000000000000000000 
2default:defaulth p
x
? 
s
%s
*synth2[
G	Parameter SRVAL_B bound to: 36'b000000000000000000000000000000000000 
2default:defaulth p
x
? 
j
%s
*synth2R
>	Parameter WRITE_MODE_A bound to: WRITE_FIRST - type: string 
2default:defaulth p
x
? 
j
%s
*synth2R
>	Parameter WRITE_MODE_B bound to: WRITE_FIRST - type: string 
2default:defaulth p
x
? 
b
%s
*synth2J
6	Parameter WRITE_WIDTH_A bound to: 9 - type: integer 
2default:defaulth p
x
? 
c
%s
*synth2K
7	Parameter WRITE_WIDTH_B bound to: 36 - type: integer 
2default:defaulth p
x
? 
_
%s
*synth2G
3	Parameter WRITEA_P bound to: TRUE - type: string 
2default:defaulth p
x
? 
_
%s
*synth2G
3	Parameter WRITEB_P bound to: TRUE - type: string 
2default:defaulth p
x
? 
^
%s
*synth2F
2	Parameter READA_P bound to: TRUE - type: string 
2default:defaulth p
x
? 
^
%s
*synth2F
2	Parameter READB_P bound to: TRUE - type: string 
2default:defaulth p
x
? 
d
%s
*synth2L
8	Parameter valid_width_a bound to: TRUE - type: string 
2default:defaulth p
x
? 
d
%s
*synth2L
8	Parameter valid_width_b bound to: TRUE - type: string 
2default:defaulth p
x
? 
_
%s
*synth2G
3	Parameter rd_width_a bound to: 9 - type: integer 
2default:defaulth p
x
? 
`
%s
*synth2H
4	Parameter rd_width_b bound to: 36 - type: integer 
2default:defaulth p
x
? 
_
%s
*synth2G
3	Parameter wr_width_a bound to: 9 - type: integer 
2default:defaulth p
x
? 
`
%s
*synth2H
4	Parameter wr_width_b bound to: 36 - type: integer 
2default:defaulth p
x
? 
^
%s
*synth2F
2	Parameter DIA_WIDTH bound to: 8 - type: integer 
2default:defaulth p
x
? 
_
%s
*synth2G
3	Parameter DIB_WIDTH bound to: 32 - type: integer 
2default:defaulth p
x
? 
^
%s
*synth2F
2	Parameter DOA_WIDTH bound to: 8 - type: integer 
2default:defaulth p
x
? 
_
%s
*synth2G
3	Parameter DOB_WIDTH bound to: 32 - type: integer 
2default:defaulth p
x
? 
_
%s
*synth2G
3	Parameter DIPA_WIDTH bound to: 1 - type: integer 
2default:defaulth p
x
? 
_
%s
*synth2G
3	Parameter DIPB_WIDTH bound to: 4 - type: integer 
2default:defaulth p
x
? 
_
%s
*synth2G
3	Parameter DOPA_WIDTH bound to: 1 - type: integer 
2default:defaulth p
x
? 
_
%s
*synth2G
3	Parameter DOPB_WIDTH bound to: 4 - type: integer 
2default:defaulth p
x
? 
^
%s
*synth2F
2	Parameter WEA_WIDTH bound to: 1 - type: integer 
2default:defaulth p
x
? 
^
%s
*synth2F
2	Parameter WEB_WIDTH bound to: 4 - type: integer 
2default:defaulth p
x
? 
b
%s
*synth2J
6	Parameter least_width_A bound to: 8 - type: integer 
2default:defaulth p
x
? 
c
%s
*synth2K
7	Parameter least_width_B bound to: 32 - type: integer 
2default:defaulth p
x
? 
c
%s
*synth2K
7	Parameter RDA_BYTE_WIDTH bound to: 1 - type: integer 
2default:defaulth p
x
? 
c
%s
*synth2K
7	Parameter RDB_BYTE_WIDTH bound to: 4 - type: integer 
2default:defaulth p
x
? 
_
%s
*synth2G
3	Parameter WRA_WIDTHP bound to: 1 - type: integer 
2default:defaulth p
x
? 
_
%s
*synth2G
3	Parameter WRB_WIDTHP bound to: 4 - type: integer 
2default:defaulth p
x
? 
_
%s
*synth2G
3	Parameter RDA_WIDTHP bound to: 1 - type: integer 
2default:defaulth p
x
? 
_
%s
*synth2G
3	Parameter RDB_WIDTHP bound to: 4 - type: integer 
2default:defaulth p
x
? 
a
%s
*synth2I
5	Parameter ADDRA_WIDTH bound to: 12 - type: integer 
2default:defaulth p
x
? 
a
%s
*synth2I
5	Parameter ADDRB_WIDTH bound to: 10 - type: integer 
2default:defaulth p
x
? 
d
%s
*synth2L
8	Parameter MAX_ADDRA_SIZE bound to: 16 - type: integer 
2default:defaulth p
x
? 
d
%s
*synth2L
8	Parameter MAX_ADDRB_SIZE bound to: 16 - type: integer 
2default:defaulth p
x
? 
b
%s
*synth2J
6	Parameter MAX_DIA_SIZE bound to: 32 - type: integer 
2default:defaulth p
x
? 
b
%s
*synth2J
6	Parameter MAX_DIB_SIZE bound to: 32 - type: integer 
2default:defaulth p
x
? 
b
%s
*synth2J
6	Parameter MAX_DIPA_SIZE bound to: 4 - type: integer 
2default:defaulth p
x
? 
b
%s
*synth2J
6	Parameter MAX_DIPB_SIZE bound to: 4 - type: integer 
2default:defaulth p
x
? 
b
%s
*synth2J
6	Parameter MAX_DOA_SIZE bound to: 32 - type: integer 
2default:defaulth p
x
? 
b
%s
*synth2J
6	Parameter MAX_DOB_SIZE bound to: 32 - type: integer 
2default:defaulth p
x
? 
b
%s
*synth2J
6	Parameter MAX_DOPA_SIZE bound to: 4 - type: integer 
2default:defaulth p
x
? 
b
%s
*synth2J
6	Parameter MAX_DOPB_SIZE bound to: 4 - type: integer 
2default:defaulth p
x
? 
a
%s
*synth2I
5	Parameter MAX_WEA_SIZE bound to: 4 - type: integer 
2default:defaulth p
x
? 
a
%s
*synth2I
5	Parameter MAX_WEB_SIZE bound to: 4 - type: integer 
2default:defaulth p
x
? 
b
%s
*synth2J
6	Parameter fin_rd_widtha bound to: 9 - type: integer 
2default:defaulth p
x
? 
c
%s
*synth2K
7	Parameter fin_rd_widthb bound to: 36 - type: integer 
2default:defaulth p
x
? 
b
%s
*synth2J
6	Parameter fin_wr_widtha bound to: 9 - type: integer 
2default:defaulth p
x
? 
c
%s
*synth2K
7	Parameter fin_wr_widthb bound to: 36 - type: integer 
2default:defaulth p
x
? 
k
%s
*synth2S
?	Parameter INIT_SRVAL_WIDTH_SIZE bound to: 36 - type: integer 
2default:defaulth p
x
? 
?
%s
*synth2?
m	Parameter inita_tmp bound to: 72'b000000000000000000000000000000000000000000000000000000000000000000000000 
2default:defaulth p
x
? 
?
%s
*synth2?
m	Parameter initb_tmp bound to: 72'b000000000000000000000000000000000000000000000000000000000000000000000000 
2default:defaulth p
x
? 
?
%s
*synth2?
n	Parameter srvala_tmp bound to: 72'b000000000000000000000000000000000000000000000000000000000000000000000000 
2default:defaulth p
x
? 
?
%s
*synth2?
n	Parameter srvalb_tmp bound to: 72'b000000000000000000000000000000000000000000000000000000000000000000000000 
2default:defaulth p
x
? 
g
%s
*synth2O
;	Parameter sim_device_pm bound to: 7SERIES - type: string 
2default:defaulth p
x
? 
?
synthesizing module '%s'%s4497*oasys2,
RAMB36E1__parameterized02default:default2
 2default:default2O
9/tools/Xilinx/Vivado/2020.2/scripts/rt/data/unisim_comp.v2default:default2
759382default:default8@Z8-6157h px? 
\
%s
*synth2D
0	Parameter DOA_REG bound to: 0 - type: integer 
2default:defaulth p
x
? 
\
%s
*synth2D
0	Parameter DOB_REG bound to: 0 - type: integer 
2default:defaulth p
x
? 
c
%s
*synth2K
7	Parameter EN_ECC_READ bound to: FALSE - type: string 
2default:defaulth p
x
? 
d
%s
*synth2L
8	Parameter EN_ECC_WRITE bound to: FALSE - type: string 
2default:defaulth p
x
? 
?
%s
*synth2?
?	Parameter INITP_00 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:defaulth p
x
? 
?
%s
*synth2?
?	Parameter INITP_01 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:defaulth p
x
? 
?
%s
*synth2?
?	Parameter INITP_02 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:defaulth p
x
? 
?
%s
*synth2?
?	Parameter INITP_03 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:defaulth p
x
? 
?
%s
*synth2?
?	Parameter INITP_04 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:defaulth p
x
? 
?
%s
*synth2?
?	Parameter INITP_05 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:defaulth p
x
? 
?
%s
*synth2?
?	Parameter INITP_06 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:defaulth p
x
? 
?
%s
*synth2?
?	Parameter INITP_07 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:defaulth p
x
? 
?
%s
*synth2?
?	Parameter INITP_08 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:defaulth p
x
? 
?
%s
*synth2?
?	Parameter INITP_09 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:defaulth p
x
? 
?
%s
*synth2?
?	Parameter INITP_0A bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:defaulth p
x
? 
?
%s
*synth2?
?	Parameter INITP_0B bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:defaulth p
x
? 
?
%s
*synth2?
?	Parameter INITP_0C bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:defaulth p
x
? 
?
%s
*synth2?
?	Parameter INITP_0D bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:defaulth p
x
? 
?
%s
*synth2?
?	Parameter INITP_0E bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:defaulth p
x
? 
?
%s
*synth2?
?	Parameter INITP_0F bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:defaulth p
x
? 
?
%s
*synth2?
?	Parameter INIT_00 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:defaulth p
x
? 
?
%s
*synth2?
?	Parameter INIT_01 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:defaulth p
x
? 
?
%s
*synth2?
?	Parameter INIT_02 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:defaulth p
x
? 
?
%s
*synth2?
?	Parameter INIT_03 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:defaulth p
x
? 
?
%s
*synth2?
?	Parameter INIT_04 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:defaulth p
x
? 
?
%s
*synth2?
?	Parameter INIT_05 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:defaulth p
x
? 
?
%s
*synth2?
?	Parameter INIT_06 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:defaulth p
x
? 
?
%s
*synth2?
?	Parameter INIT_07 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:defaulth p
x
? 
?
%s
*synth2?
?	Parameter INIT_08 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:defaulth p
x
? 
?
%s
*synth2?
?	Parameter INIT_09 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:defaulth p
x
? 
?
%s
*synth2?
?	Parameter INIT_0A bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:defaulth p
x
? 
?
%s
*synth2?
?	Parameter INIT_0B bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:defaulth p
x
? 
?
%s
*synth2?
?	Parameter INIT_0C bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:defaulth p
x
? 
?
%s
*synth2?
?	Parameter INIT_0D bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:defaulth p
x
? 
?
%s
*synth2?
?	Parameter INIT_0E bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:defaulth p
x
? 
?
%s
*synth2?
?	Parameter INIT_0F bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:defaulth p
x
? 
?
%s
*synth2?
?	Parameter INIT_10 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:defaulth p
x
? 
?
%s
*synth2?
?	Parameter INIT_11 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:defaulth p
x
? 
?
%s
*synth2?
?	Parameter INIT_12 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:defaulth p
x
? 
?
%s
*synth2?
?	Parameter INIT_13 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:defaulth p
x
? 
?
%s
*synth2?
?	Parameter INIT_14 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:defaulth p
x
? 
?
%s
*synth2?
?	Parameter INIT_15 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:defaulth p
x
? 
?
%s
*synth2?
?	Parameter INIT_16 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:defaulth p
x
? 
?
%s
*synth2?
?	Parameter INIT_17 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:defaulth p
x
? 
?
%s
*synth2?
?	Parameter INIT_18 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:defaulth p
x
? 
?
%s
*synth2?
?	Parameter INIT_19 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:defaulth p
x
? 
?
%s
*synth2?
?	Parameter INIT_1A bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:defaulth p
x
? 
?
%s
*synth2?
?	Parameter INIT_1B bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:defaulth p
x
? 
?
%s
*synth2?
?	Parameter INIT_1C bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:defaulth p
x
? 
?
%s
*synth2?
?	Parameter INIT_1D bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:defaulth p
x
? 
?
%s
*synth2?
?	Parameter INIT_1E bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:defaulth p
x
? 
?
%s
*synth2?
?	Parameter INIT_1F bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:defaulth p
x
? 
?
%s
*synth2?
?	Parameter INIT_20 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:defaulth p
x
? 
?
%s
*synth2?
?	Parameter INIT_21 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:defaulth p
x
? 
?
%s
*synth2?
?	Parameter INIT_22 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:defaulth p
x
? 
?
%s
*synth2?
?	Parameter INIT_23 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:defaulth p
x
? 
?
%s
*synth2?
?	Parameter INIT_24 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:defaulth p
x
? 
?
%s
*synth2?
?	Parameter INIT_25 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:defaulth p
x
? 
?
%s
*synth2?
?	Parameter INIT_26 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:defaulth p
x
? 
?
%s
*synth2?
?	Parameter INIT_27 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:defaulth p
x
? 
?
%s
*synth2?
?	Parameter INIT_28 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:defaulth p
x
? 
?
%s
*synth2?
?	Parameter INIT_29 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:defaulth p
x
? 
?
%s
*synth2?
?	Parameter INIT_2A bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:defaulth p
x
? 
?
%s
*synth2?
?	Parameter INIT_2B bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:defaulth p
x
? 
?
%s
*synth2?
?	Parameter INIT_2C bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:defaulth p
x
? 
?
%s
*synth2?
?	Parameter INIT_2D bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:defaulth p
x
? 
?
%s
*synth2?
?	Parameter INIT_2E bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:defaulth p
x
? 
?
%s
*synth2?
?	Parameter INIT_2F bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:defaulth p
x
? 
?
%s
*synth2?
?	Parameter INIT_30 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:defaulth p
x
? 
?
%s
*synth2?
?	Parameter INIT_31 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:defaulth p
x
? 
?
%s
*synth2?
?	Parameter INIT_32 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:defaulth p
x
? 
?
%s
*synth2?
?	Parameter INIT_33 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:defaulth p
x
? 
?
%s
*synth2?
?	Parameter INIT_34 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:defaulth p
x
? 
?
%s
*synth2?
?	Parameter INIT_35 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:defaulth p
x
? 
?
%s
*synth2?
?	Parameter INIT_36 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:defaulth p
x
? 
?
%s
*synth2?
?	Parameter INIT_37 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:defaulth p
x
? 
?
%s
*synth2?
?	Parameter INIT_38 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:defaulth p
x
? 
?
%s
*synth2?
?	Parameter INIT_39 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:defaulth p
x
? 
?
%s
*synth2?
?	Parameter INIT_3A bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:defaulth p
x
? 
?
%s
*synth2?
?	Parameter INIT_3B bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:defaulth p
x
? 
?
%s
*synth2?
?	Parameter INIT_3C bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:defaulth p
x
? 
?
%s
*synth2?
?	Parameter INIT_3D bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:defaulth p
x
? 
?
%s
*synth2?
?	Parameter INIT_3E bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:defaulth p
x
? 
?
%s
*synth2?
?	Parameter INIT_3F bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:defaulth p
x
? 
?
%s
*synth2?
?	Parameter INIT_40 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:defaulth p
x
? 
?
%s
*synth2?
?	Parameter INIT_41 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:defaulth p
x
? 
?
%s
*synth2?
?	Parameter INIT_42 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:defaulth p
x
? 
?
%s
*synth2?
?	Parameter INIT_43 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:defaulth p
x
? 
?
%s
*synth2?
?	Parameter INIT_44 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:defaulth p
x
? 
?
%s
*synth2?
?	Parameter INIT_45 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:defaulth p
x
? 
?
%s
*synth2?
?	Parameter INIT_46 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:defaulth p
x
? 
?
%s
*synth2?
?	Parameter INIT_47 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:defaulth p
x
? 
?
%s
*synth2?
?	Parameter INIT_48 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:defaulth p
x
? 
?
%s
*synth2?
?	Parameter INIT_49 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:defaulth p
x
? 
?
%s
*synth2?
?	Parameter INIT_4A bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:defaulth p
x
? 
?
%s
*synth2?
?	Parameter INIT_4B bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:defaulth p
x
? 
?
%s
*synth2?
?	Parameter INIT_4C bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:defaulth p
x
? 
?
%s
*synth2?
?	Parameter INIT_4D bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:defaulth p
x
? 
?
%s
*synth2?
?	Parameter INIT_4E bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:defaulth p
x
? 
?
%s
*synth2?
?	Parameter INIT_4F bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:defaulth p
x
? 
?
%s
*synth2?
?	Parameter INIT_50 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:defaulth p
x
? 
?
%s
*synth2?
?	Parameter INIT_51 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:defaulth p
x
? 
?
%s
*synth2?
?	Parameter INIT_52 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:defaulth p
x
? 
?
%s
*synth2?
?	Parameter INIT_53 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:defaulth p
x
? 
?
%s
*synth2?
?	Parameter INIT_54 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:defaulth p
x
? 
?
%s
*synth2?
?	Parameter INIT_55 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:defaulth p
x
? 
?
%s
*synth2?
?	Parameter INIT_56 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:defaulth p
x
? 
?
%s
*synth2?
?	Parameter INIT_57 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:defaulth p
x
? 
?
%s
*synth2?
?	Parameter INIT_58 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:defaulth p
x
? 
?
%s
*synth2?
?	Parameter INIT_59 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:defaulth p
x
? 
?
%s
*synth2?
?	Parameter INIT_5A bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:defaulth p
x
? 
?
%s
*synth2?
?	Parameter INIT_5B bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:defaulth p
x
? 
?
%s
*synth2?
?	Parameter INIT_5C bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:defaulth p
x
? 
?
%s
*synth2?
?	Parameter INIT_5D bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:defaulth p
x
? 
?
%s
*synth2?
?	Parameter INIT_5E bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:defaulth p
x
? 
?
%s
*synth2?
?	Parameter INIT_5F bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:defaulth p
x
? 
?
%s
*synth2?
?	Parameter INIT_60 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:defaulth p
x
? 
?
%s
*synth2?
?	Parameter INIT_61 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:defaulth p
x
? 
?
%s
*synth2?
?	Parameter INIT_62 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:defaulth p
x
? 
?
%s
*synth2?
?	Parameter INIT_63 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:defaulth p
x
? 
?
%s
*synth2?
?	Parameter INIT_64 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:defaulth p
x
? 
?
%s
*synth2?
?	Parameter INIT_65 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:defaulth p
x
? 
?
%s
*synth2?
?	Parameter INIT_66 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:defaulth p
x
? 
?
%s
*synth2?
?	Parameter INIT_67 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:defaulth p
x
? 
?
%s
*synth2?
?	Parameter INIT_68 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:defaulth p
x
? 
?
%s
*synth2?
?	Parameter INIT_69 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:defaulth p
x
? 
?
%s
*synth2?
?	Parameter INIT_6A bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:defaulth p
x
? 
?
%s
*synth2?
?	Parameter INIT_6B bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:defaulth p
x
? 
?
%s
*synth2?
?	Parameter INIT_6C bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:defaulth p
x
? 
?
%s
*synth2?
?	Parameter INIT_6D bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:defaulth p
x
? 
?
%s
*synth2?
?	Parameter INIT_6E bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:defaulth p
x
? 
?
%s
*synth2?
?	Parameter INIT_6F bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:defaulth p
x
? 
?
%s
*synth2?
?	Parameter INIT_70 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:defaulth p
x
? 
?
%s
*synth2?
?	Parameter INIT_71 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:defaulth p
x
? 
?
%s
*synth2?
?	Parameter INIT_72 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:defaulth p
x
? 
?
%s
*synth2?
?	Parameter INIT_73 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:defaulth p
x
? 
?
%s
*synth2?
?	Parameter INIT_74 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:defaulth p
x
? 
?
%s
*synth2?
?	Parameter INIT_75 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:defaulth p
x
? 
?
%s
*synth2?
?	Parameter INIT_76 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:defaulth p
x
? 
?
%s
*synth2?
?	Parameter INIT_77 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:defaulth p
x
? 
?
%s
*synth2?
?	Parameter INIT_78 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:defaulth p
x
? 
?
%s
*synth2?
?	Parameter INIT_79 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:defaulth p
x
? 
?
%s
*synth2?
?	Parameter INIT_7A bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:defaulth p
x
? 
?
%s
*synth2?
?	Parameter INIT_7B bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:defaulth p
x
? 
?
%s
*synth2?
?	Parameter INIT_7C bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:defaulth p
x
? 
?
%s
*synth2?
?	Parameter INIT_7D bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:defaulth p
x
? 
?
%s
*synth2?
?	Parameter INIT_7E bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:defaulth p
x
? 
?
%s
*synth2?
?	Parameter INIT_7F bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:defaulth p
x
? 
r
%s
*synth2Z
F	Parameter INIT_A bound to: 36'b000000000000000000000000000000000000 
2default:defaulth p
x
? 
r
%s
*synth2Z
F	Parameter INIT_B bound to: 36'b000000000000000000000000000000000000 
2default:defaulth p
x
? 
`
%s
*synth2H
4	Parameter INIT_FILE bound to: NONE - type: string 
2default:defaulth p
x
? 
]
%s
*synth2E
1	Parameter IS_CLKARDCLK_INVERTED bound to: 1'b0 
2default:defaulth p
x
? 
]
%s
*synth2E
1	Parameter IS_CLKBWRCLK_INVERTED bound to: 1'b0 
2default:defaulth p
x
? 
[
%s
*synth2C
/	Parameter IS_ENARDEN_INVERTED bound to: 1'b0 
2default:defaulth p
x
? 
[
%s
*synth2C
/	Parameter IS_ENBWREN_INVERTED bound to: 1'b0 
2default:defaulth p
x
? 
a
%s
*synth2I
5	Parameter IS_RSTRAMARSTRAM_INVERTED bound to: 1'b0 
2default:defaulth p
x
? 
[
%s
*synth2C
/	Parameter IS_RSTRAMB_INVERTED bound to: 1'b0 
2default:defaulth p
x
? 
a
%s
*synth2I
5	Parameter IS_RSTREGARSTREG_INVERTED bound to: 1'b0 
2default:defaulth p
x
? 
[
%s
*synth2C
/	Parameter IS_RSTREGB_INVERTED bound to: 1'b0 
2default:defaulth p
x
? 
f
%s
*synth2N
:	Parameter RAM_EXTENSION_A bound to: NONE - type: string 
2default:defaulth p
x
? 
f
%s
*synth2N
:	Parameter RAM_EXTENSION_B bound to: NONE - type: string 
2default:defaulth p
x
? 
^
%s
*synth2F
2	Parameter RAM_MODE bound to: TDP - type: string 
2default:defaulth p
x
? 
y
%s
*synth2a
M	Parameter RDADDR_COLLISION_HWCONFIG bound to: DELAYED_WRITE - type: string 
2default:defaulth p
x
? 
a
%s
*synth2I
5	Parameter READ_WIDTH_A bound to: 9 - type: integer 
2default:defaulth p
x
? 
b
%s
*synth2J
6	Parameter READ_WIDTH_B bound to: 36 - type: integer 
2default:defaulth p
x
? 
j
%s
*synth2R
>	Parameter RSTREG_PRIORITY_A bound to: RSTREG - type: string 
2default:defaulth p
x
? 
j
%s
*synth2R
>	Parameter RSTREG_PRIORITY_B bound to: RSTREG - type: string 
2default:defaulth p
x
? 
i
%s
*synth2Q
=	Parameter SIM_COLLISION_CHECK bound to: ALL - type: string 
2default:defaulth p
x
? 
d
%s
*synth2L
8	Parameter SIM_DEVICE bound to: 7SERIES - type: string 
2default:defaulth p
x
? 
s
%s
*synth2[
G	Parameter SRVAL_A bound to: 36'b000000000000000000000000000000000000 
2default:defaulth p
x
? 
s
%s
*synth2[
G	Parameter SRVAL_B bound to: 36'b000000000000000000000000000000000000 
2default:defaulth p
x
? 
j
%s
*synth2R
>	Parameter WRITE_MODE_A bound to: WRITE_FIRST - type: string 
2default:defaulth p
x
? 
j
%s
*synth2R
>	Parameter WRITE_MODE_B bound to: WRITE_FIRST - type: string 
2default:defaulth p
x
? 
b
%s
*synth2J
6	Parameter WRITE_WIDTH_A bound to: 9 - type: integer 
2default:defaulth p
x
? 
c
%s
*synth2K
7	Parameter WRITE_WIDTH_B bound to: 36 - type: integer 
2default:defaulth p
x
? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2,
RAMB36E1__parameterized02default:default2
 2default:default2
392default:default2
12default:default2O
9/tools/Xilinx/Vivado/2020.2/scripts/rt/data/unisim_comp.v2default:default2
759382default:default8@Z8-6155h px? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2"
BRAM_TDP_MACRO2default:default2
 2default:default2
402default:default2
12default:default2\
F/tools/Xilinx/Vivado/2020.2/data/verilog/src/unimacro/BRAM_TDP_MACRO.v2default:default2
302default:default8@Z8-6155h px? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2"
DCacheDataCore2default:default2
 2default:default2
412default:default2
12default:default2\
F/home/pentium/zjucpu/zjucpu.srcs/sources_1/imports/v/Cache/CacheData.v2default:default2
202default:default8@Z8-6155h px? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2

DCacheData2default:default2
 2default:default2
422default:default2
12default:default2\
F/home/pentium/zjucpu/zjucpu.srcs/sources_1/imports/v/Cache/CacheData.v2default:default2
782default:default8@Z8-6155h px? 
?
synthesizing module '%s'%s4497*oasys2!
DCacheFSM_CPU2default:default2
 2default:default2Y
C/home/pentium/zjucpu/zjucpu.srcs/sources_1/imports/v/Cache/DCache.v2default:default2
1042default:default8@Z8-6157h px? 
S
%s
*synth2;
'	Parameter STATE_IDLE bound to: 2'b00 
2default:defaulth p
x
? 
S
%s
*synth2;
'	Parameter STATE_WAIT bound to: 2'b01 
2default:defaulth p
x
? 
Y
%s
*synth2A
-	Parameter STATE_INVALIDATE bound to: 2'b10 
2default:defaulth p
x
? 
?
synthesizing module '%s'%s4497*oasys2
	DCacheTag2default:default2
 2default:default2]
G/home/pentium/zjucpu/zjucpu.srcs/sources_1/imports/v/Cache/CacheFlags.v2default:default2
382default:default8@Z8-6157h px? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
	DCacheTag2default:default2
 2default:default2
432default:default2
12default:default2]
G/home/pentium/zjucpu/zjucpu.srcs/sources_1/imports/v/Cache/CacheFlags.v2default:default2
382default:default8@Z8-6155h px? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2!
DCacheFSM_CPU2default:default2
 2default:default2
442default:default2
12default:default2Y
C/home/pentium/zjucpu/zjucpu.srcs/sources_1/imports/v/Cache/DCache.v2default:default2
1042default:default8@Z8-6155h px? 
?
synthesizing module '%s'%s4497*oasys2!
DCacheFSM_DDR2default:default2
 2default:default2Y
C/home/pentium/zjucpu/zjucpu.srcs/sources_1/imports/v/Cache/DCache.v2default:default2
2312default:default8@Z8-6157h px? 
T
%s
*synth2<
(	Parameter STATE_IDLE bound to: 3'b000 
2default:defaulth p
x
? 
X
%s
*synth2@
,	Parameter STATE_MEM_READ bound to: 3'b001 
2default:defaulth p
x
? 
\
%s
*synth2D
0	Parameter STATE_MEM_READ_END bound to: 3'b010 
2default:defaulth p
x
? 
W
%s
*synth2?
+	Parameter STATE_WS_PREP bound to: 3'b011 
2default:defaulth p
x
? 
W
%s
*synth2?
+	Parameter STATE_WS_READ bound to: 3'b100 
2default:defaulth p
x
? 
]
%s
*synth2E
1	Parameter STATE_MEM_WRITE_END bound to: 3'b110 
2default:defaulth p
x
? 
X
%s
*synth2@
,	Parameter STATE_WS_WRITE bound to: 3'b111 
2default:defaulth p
x
? 
?
-case statement is not full and has no default155*oasys2Y
C/home/pentium/zjucpu/zjucpu.srcs/sources_1/imports/v/Cache/DCache.v2default:default2
2782default:default8@Z8-155h px? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2!
DCacheFSM_DDR2default:default2
 2default:default2
452default:default2
12default:default2Y
C/home/pentium/zjucpu/zjucpu.srcs/sources_1/imports/v/Cache/DCache.v2default:default2
2312default:default8@Z8-6155h px? 
?
synthesizing module '%s'%s4497*oasys22
AsyncHandshake__parameterized02default:default2
 2default:default2l
V/home/pentium/zjucpu/zjucpu.srcs/sources_1/imports/v/Infrastructure/ClockDomainCross.v2default:default2
1042default:default8@Z8-6157h px? 
_
%s
*synth2G
3	Parameter STB_FREQ bound to: 100 - type: integer 
2default:defaulth p
x
? 
_
%s
*synth2G
3	Parameter ACK_FREQ bound to: 200 - type: integer 
2default:defaulth p
x
? 
?
synthesizing module '%s'%s4497*oasys2$
Handshake_freqUp2default:default2
 2default:default2l
V/home/pentium/zjucpu/zjucpu.srcs/sources_1/imports/v/Infrastructure/ClockDomainCross.v2default:default2
662default:default8@Z8-6157h px? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2$
Handshake_freqUp2default:default2
 2default:default2
462default:default2
12default:default2l
V/home/pentium/zjucpu/zjucpu.srcs/sources_1/imports/v/Infrastructure/ClockDomainCross.v2default:default2
662default:default8@Z8-6155h px? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys22
AsyncHandshake__parameterized02default:default2
 2default:default2
462default:default2
12default:default2l
V/home/pentium/zjucpu/zjucpu.srcs/sources_1/imports/v/Infrastructure/ClockDomainCross.v2default:default2
1042default:default8@Z8-6155h px? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
DCache2default:default2
 2default:default2
472default:default2
12default:default2Y
C/home/pentium/zjucpu/zjucpu.srcs/sources_1/imports/v/Cache/DCache.v2default:default2
302default:default8@Z8-6155h px? 
?
synthesizing module '%s'%s4497*oasys2+
PipeReg__parameterized12default:default2
 2default:default2l
V/home/pentium/zjucpu/zjucpu.srcs/sources_1/imports/v/Infrastructure/ClockDomainCross.v2default:default2
192default:default8@Z8-6157h px? 
Z
%s
*synth2B
.	Parameter DEPTH bound to: 2 - type: integer 
2default:defaulth p
x
? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2+
PipeReg__parameterized12default:default2
 2default:default2
472default:default2
12default:default2l
V/home/pentium/zjucpu/zjucpu.srcs/sources_1/imports/v/Infrastructure/ClockDomainCross.v2default:default2
192default:default8@Z8-6155h px? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
CPUCacheTop2default:default2
 2default:default2
482default:default2
12default:default2X
B/home/pentium/zjucpu/zjucpu.srcs/sources_1/imports/v/CPUCacheTop.v2default:default2
92default:default8@Z8-6155h px? 
?
synthesizing module '%s'%s4497*oasys2(
Infrastructure_Sword2default:default2
 2default:default2f
P/home/pentium/zjucpu/zjucpu.srcs/sources_1/imports/SWORD4/Infrastructure_Sword.v2default:default2
92default:default8@Z8-6157h px? 
M
%s
*synth25
!	Parameter DEBUG bound to: 1'b1 
2default:defaulth p
x
? 
K
%s
*synth23
	Parameter PS2 bound to: 1'b1 
2default:defaulth p
x
? 
L
%s
*synth24
 	Parameter UART bound to: 1'b1 
2default:defaulth p
x
? 
?
synthesizing module '%s'%s4497*oasys2

PS2Wrapper2default:default2
 2default:default2f
P/home/pentium/zjucpu/zjucpu.srcs/sources_1/imports/v/Infrastructure/PS2Wrapper.v2default:default2
82default:default8@Z8-6157h px? 
_
%s
*synth2G
3	Parameter FIFO_DEPTH bound to: 5 - type: integer 
2default:defaulth p
x
? 
]
%s
*synth2E
1	Parameter PARITY bound to: NONE - type: string 
2default:defaulth p
x
? 
?
synthesizing module '%s'%s4497*oasys2
	PS2Driver2default:default2
 2default:default2e
O/home/pentium/zjucpu/zjucpu.srcs/sources_1/imports/v/Infrastructure/PS2Driver.v2default:default2
82default:default8@Z8-6157h px? 
]
%s
*synth2E
1	Parameter PARITY bound to: NONE - type: string 
2default:defaulth p
x
? 
T
%s
*synth2<
(	Parameter STATE_IDLE bound to: 3'b000 
2default:defaulth p
x
? 
R
%s
*synth2:
&	Parameter STATE_RX bound to: 3'b001 
2default:defaulth p
x
? 
W
%s
*synth2?
+	Parameter STATE_TX_INIT bound to: 3'b010 
2default:defaulth p
x
? 
R
%s
*synth2:
&	Parameter STATE_TX bound to: 3'b011 
2default:defaulth p
x
? 
V
%s
*synth2>
*	Parameter STATE_TX_END bound to: 3'b100 
2default:defaulth p
x
? 
W
%s
*synth2?
+	Parameter STATE_TX_WAIT bound to: 3'b101 
2default:defaulth p
x
? 
R
%s
*synth2:
&	Parameter ERR_NONE bound to: 3'b000 
2default:defaulth p
x
? 
X
%s
*synth2@
,	Parameter ERR_RX_TIMEOUT bound to: 3'b100 
2default:defaulth p
x
? 
W
%s
*synth2?
+	Parameter ERR_RX_PARITY bound to: 3'b101 
2default:defaulth p
x
? 
X
%s
*synth2@
,	Parameter ERR_TX_TIMEOUT bound to: 3'b110 
2default:defaulth p
x
? 
V
%s
*synth2>
*	Parameter ERR_TX_NOACK bound to: 3'b111 
2default:defaulth p
x
? 
?
-case statement is not full and has no default155*oasys2e
O/home/pentium/zjucpu/zjucpu.srcs/sources_1/imports/v/Infrastructure/PS2Driver.v2default:default2
1202default:default8@Z8-155h px? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
	PS2Driver2default:default2
 2default:default2
492default:default2
12default:default2e
O/home/pentium/zjucpu/zjucpu.srcs/sources_1/imports/v/Infrastructure/PS2Driver.v2default:default2
82default:default8@Z8-6155h px? 
?
synthesizing module '%s'%s4497*oasys2
AxisFifo2default:default2
 2default:default2`
J/home/pentium/zjucpu/zjucpu.srcs/sources_1/imports/v/Infrastructure/FIFO.v2default:default2
82default:default8@Z8-6157h px? 
Z
%s
*synth2B
.	Parameter WIDTH bound to: 8 - type: integer 
2default:defaulth p
x
? 
_
%s
*synth2G
3	Parameter DEPTH_BITS bound to: 5 - type: integer 
2default:defaulth p
x
? 
a
%s
*synth2I
5	Parameter SYNC_STAGE_I bound to: 0 - type: integer 
2default:defaulth p
x
? 
a
%s
*synth2I
5	Parameter SYNC_STAGE_O bound to: 1 - type: integer 
2default:defaulth p
x
? 
[
%s
*synth2C
/	Parameter DEPTH bound to: 32 - type: integer 
2default:defaulth p
x
? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
AxisFifo2default:default2
 2default:default2
502default:default2
12default:default2`
J/home/pentium/zjucpu/zjucpu.srcs/sources_1/imports/v/Infrastructure/FIFO.v2default:default2
82default:default8@Z8-6155h px? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2

PS2Wrapper2default:default2
 2default:default2
512default:default2
12default:default2f
P/home/pentium/zjucpu/zjucpu.srcs/sources_1/imports/v/Infrastructure/PS2Wrapper.v2default:default2
82default:default8@Z8-6155h px? 
?
synthesizing module '%s'%s4497*oasys2
UARTWrapper2default:default2
 2default:default2g
Q/home/pentium/zjucpu/zjucpu.srcs/sources_1/imports/v/Infrastructure/UARTWrapper.v2default:default2
92default:default8@Z8-6157h px? 
Z
%s
*synth2B
.	Parameter DEPTH bound to: 7 - type: integer 
2default:defaulth p
x
? 
?
synthesizing module '%s'%s4497*oasys2
UART_TX2default:default2
 2default:default2`
J/home/pentium/zjucpu/zjucpu.srcs/sources_1/imports/v/Infrastructure/UART.v2default:default2
72default:default8@Z8-6157h px? 
a
%s
*synth2I
5	Parameter COUNTER_MSB bound to: 15 - type: integer 
2default:defaulth p
x
? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
UART_TX2default:default2
 2default:default2
522default:default2
12default:default2`
J/home/pentium/zjucpu/zjucpu.srcs/sources_1/imports/v/Infrastructure/UART.v2default:default2
72default:default8@Z8-6155h px? 
?
synthesizing module '%s'%s4497*oasys2
UART_RX2default:default2
 2default:default2`
J/home/pentium/zjucpu/zjucpu.srcs/sources_1/imports/v/Infrastructure/UART.v2default:default2
422default:default8@Z8-6157h px? 
a
%s
*synth2I
5	Parameter COUNTER_MSB bound to: 15 - type: integer 
2default:defaulth p
x
? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
UART_RX2default:default2
 2default:default2
532default:default2
12default:default2`
J/home/pentium/zjucpu/zjucpu.srcs/sources_1/imports/v/Infrastructure/UART.v2default:default2
422default:default8@Z8-6155h px? 
?
synthesizing module '%s'%s4497*oasys2,
AxisFifo__parameterized02default:default2
 2default:default2`
J/home/pentium/zjucpu/zjucpu.srcs/sources_1/imports/v/Infrastructure/FIFO.v2default:default2
82default:default8@Z8-6157h px? 
Z
%s
*synth2B
.	Parameter WIDTH bound to: 8 - type: integer 
2default:defaulth p
x
? 
_
%s
*synth2G
3	Parameter DEPTH_BITS bound to: 8 - type: integer 
2default:defaulth p
x
? 
a
%s
*synth2I
5	Parameter SYNC_STAGE_I bound to: 1 - type: integer 
2default:defaulth p
x
? 
a
%s
*synth2I
5	Parameter SYNC_STAGE_O bound to: 1 - type: integer 
2default:defaulth p
x
? 
\
%s
*synth2D
0	Parameter DEPTH bound to: 256 - type: integer 
2default:defaulth p
x
? 
?
synthesizing module '%s'%s4497*oasys24
 ClockDomainCross__parameterized02default:default2
 2default:default2l
V/home/pentium/zjucpu/zjucpu.srcs/sources_1/imports/v/Infrastructure/ClockDomainCross.v2default:default2
72default:default8@Z8-6157h px? 
Z
%s
*synth2B
.	Parameter I_REG bound to: 1 - type: integer 
2default:defaulth p
x
? 
Z
%s
*synth2B
.	Parameter O_REG bound to: 1 - type: integer 
2default:defaulth p
x
? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys24
 ClockDomainCross__parameterized02default:default2
 2default:default2
532default:default2
12default:default2l
V/home/pentium/zjucpu/zjucpu.srcs/sources_1/imports/v/Infrastructure/ClockDomainCross.v2default:default2
72default:default8@Z8-6155h px? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2,
AxisFifo__parameterized02default:default2
 2default:default2
532default:default2
12default:default2`
J/home/pentium/zjucpu/zjucpu.srcs/sources_1/imports/v/Infrastructure/FIFO.v2default:default2
82default:default8@Z8-6155h px? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
UARTWrapper2default:default2
 2default:default2
542default:default2
12default:default2g
Q/home/pentium/zjucpu/zjucpu.srcs/sources_1/imports/v/Infrastructure/UARTWrapper.v2default:default2
92default:default8@Z8-6155h px? 
?
synthesizing module '%s'%s4497*oasys2
ClockGen2default:default2
 2default:default2r
\/home/pentium/zjucpu/zjucpu.runs/synth_1/.Xil/Vivado-101333-P3nt1um/realtime/ClockGen_stub.v2default:default2
52default:default8@Z8-6157h px? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
ClockGen2default:default2
 2default:default2
552default:default2
12default:default2r
\/home/pentium/zjucpu/zjucpu.runs/synth_1/.Xil/Vivado-101333-P3nt1um/realtime/ClockGen_stub.v2default:default2
52default:default8@Z8-6155h px? 
?
synthesizing module '%s'%s4497*oasys2

AntiJitter2default:default2
 2default:default2f
P/home/pentium/zjucpu/zjucpu.srcs/sources_1/imports/v/Infrastructure/AntiJitter.v2default:default2
62default:default8@Z8-6157h px? 
Z
%s
*synth2B
.	Parameter WIDTH bound to: 4 - type: integer 
2default:defaulth p
x
? 
L
%s
*synth24
 	Parameter INIT bound to: 1'b0 
2default:defaulth p
x
? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2

AntiJitter2default:default2
 2default:default2
562default:default2
12default:default2f
P/home/pentium/zjucpu/zjucpu.srcs/sources_1/imports/v/Infrastructure/AntiJitter.v2default:default2
62default:default8@Z8-6155h px? 
?
synthesizing module '%s'%s4497*oasys2
Keypad2default:default2
 2default:default2X
B/home/pentium/zjucpu/zjucpu.srcs/sources_1/imports/SWORD4/Keypad.v2default:default2
72default:default8@Z8-6157h px? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
Keypad2default:default2
 2default:default2
572default:default2
12default:default2X
B/home/pentium/zjucpu/zjucpu.srcs/sources_1/imports/SWORD4/Keypad.v2default:default2
72default:default8@Z8-6155h px? 
?
9port '%s' of module '%s' is unconnected for instance '%s'4818*oasys2
dbg_keyLine2default:default2
Keypad2default:default2
U12default:default2f
P/home/pentium/zjucpu/zjucpu.srcs/sources_1/imports/SWORD4/Infrastructure_Sword.v2default:default2
812default:default8@Z8-7071h px? 
?
Kinstance '%s' of module '%s' has %s connections declared, but only %s given4757*oasys2
U12default:default2
Keypad2default:default2
62default:default2
52default:default2f
P/home/pentium/zjucpu/zjucpu.srcs/sources_1/imports/SWORD4/Infrastructure_Sword.v2default:default2
812default:default8@Z8-7023h px? 
?
synthesizing module '%s'%s4497*oasys2.
AntiJitter__parameterized02default:default2
 2default:default2f
P/home/pentium/zjucpu/zjucpu.srcs/sources_1/imports/v/Infrastructure/AntiJitter.v2default:default2
62default:default8@Z8-6157h px? 
Z
%s
*synth2B
.	Parameter WIDTH bound to: 4 - type: integer 
2default:defaulth p
x
? 
L
%s
*synth24
 	Parameter INIT bound to: 1'b1 
2default:defaulth p
x
? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2.
AntiJitter__parameterized02default:default2
 2default:default2
572default:default2
12default:default2f
P/home/pentium/zjucpu/zjucpu.srcs/sources_1/imports/v/Infrastructure/AntiJitter.v2default:default2
62default:default8@Z8-6155h px? 
?
synthesizing module '%s'%s4497*oasys2

Seg7Device2default:default2
 2default:default2\
F/home/pentium/zjucpu/zjucpu.srcs/sources_1/imports/SWORD4/Seg7Device.v2default:default2
102default:default8@Z8-6157h px? 
?
synthesizing module '%s'%s4497*oasys2

Seg7Decode2default:default2
 2default:default2\
F/home/pentium/zjucpu/zjucpu.srcs/sources_1/imports/SWORD4/Seg7Device.v2default:default2
502default:default8@Z8-6157h px? 
?
synthesizing module '%s'%s4497*oasys2"
SegmentDecoder2default:default2
 2default:default2\
F/home/pentium/zjucpu/zjucpu.srcs/sources_1/imports/SWORD4/Seg7Device.v2default:default2
792default:default8@Z8-6157h px? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2"
SegmentDecoder2default:default2
 2default:default2
582default:default2
12default:default2\
F/home/pentium/zjucpu/zjucpu.srcs/sources_1/imports/SWORD4/Seg7Device.v2default:default2
792default:default8@Z8-6155h px? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2

Seg7Decode2default:default2
 2default:default2
592default:default2
12default:default2\
F/home/pentium/zjucpu/zjucpu.srcs/sources_1/imports/SWORD4/Seg7Device.v2default:default2
502default:default8@Z8-6155h px? 
?
synthesizing module '%s'%s4497*oasys2
	Seg7Remap2default:default2
 2default:default2\
F/home/pentium/zjucpu/zjucpu.srcs/sources_1/imports/SWORD4/Seg7Device.v2default:default2
392default:default8@Z8-6157h px? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
	Seg7Remap2default:default2
 2default:default2
602default:default2
12default:default2\
F/home/pentium/zjucpu/zjucpu.srcs/sources_1/imports/SWORD4/Seg7Device.v2default:default2
392default:default8@Z8-6155h px? 
?
synthesizing module '%s'%s4497*oasys2
ShiftReg2default:default2
 2default:default2Z
D/home/pentium/zjucpu/zjucpu.srcs/sources_1/imports/SWORD4/ShiftReg.v2default:default2
92default:default8@Z8-6157h px? 
[
%s
*synth2C
/	Parameter WIDTH bound to: 64 - type: integer 
2default:defaulth p
x
? 
[
%s
*synth2C
/	Parameter DELAY bound to: 12 - type: integer 
2default:defaulth p
x
? 
^
%s
*synth2F
2	Parameter DIRECTION bound to: 1 - type: integer 
2default:defaulth p
x
? 
Z
%s
*synth2B
.	Parameter ONTIME bound to: 12'b110000000000 
2default:defaulth p
x
? 
X
%s
*synth2@
,	Parameter inv bound to: 1 - type: integer 
2default:defaulth p
x
? 
?
synthesizing module '%s'%s4497*oasys2
ODDR2default:default2
 2default:default2O
9/tools/Xilinx/Vivado/2020.2/scripts/rt/data/unisim_comp.v2default:default2
497912default:default8@Z8-6157h px? 
l
%s
*synth2T
@	Parameter DDR_CLK_EDGE bound to: OPPOSITE_EDGE - type: string 
2default:defaulth p
x
? 
L
%s
*synth24
 	Parameter INIT bound to: 1'b0 
2default:defaulth p
x
? 
U
%s
*synth2=
)	Parameter IS_C_INVERTED bound to: 1'b0 
2default:defaulth p
x
? 
V
%s
*synth2>
*	Parameter IS_D1_INVERTED bound to: 1'b0 
2default:defaulth p
x
? 
V
%s
*synth2>
*	Parameter IS_D2_INVERTED bound to: 1'b0 
2default:defaulth p
x
? 
]
%s
*synth2E
1	Parameter SRTYPE bound to: SYNC - type: string 
2default:defaulth p
x
? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
ODDR2default:default2
 2default:default2
612default:default2
12default:default2O
9/tools/Xilinx/Vivado/2020.2/scripts/rt/data/unisim_comp.v2default:default2
497912default:default8@Z8-6155h px? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
ShiftReg2default:default2
 2default:default2
622default:default2
12default:default2Z
D/home/pentium/zjucpu/zjucpu.srcs/sources_1/imports/SWORD4/ShiftReg.v2default:default2
92default:default8@Z8-6155h px? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2

Seg7Device2default:default2
 2default:default2
632default:default2
12default:default2\
F/home/pentium/zjucpu/zjucpu.srcs/sources_1/imports/SWORD4/Seg7Device.v2default:default2
102default:default8@Z8-6155h px? 
?
synthesizing module '%s'%s4497*oasys2,
ShiftReg__parameterized02default:default2
 2default:default2Z
D/home/pentium/zjucpu/zjucpu.srcs/sources_1/imports/SWORD4/ShiftReg.v2default:default2
92default:default8@Z8-6157h px? 
[
%s
*synth2C
/	Parameter WIDTH bound to: 16 - type: integer 
2default:defaulth p
x
? 
[
%s
*synth2C
/	Parameter DELAY bound to: 12 - type: integer 
2default:defaulth p
x
? 
^
%s
*synth2F
2	Parameter DIRECTION bound to: 1 - type: integer 
2default:defaulth p
x
? 
Z
%s
*synth2B
.	Parameter ONTIME bound to: 12'b111111111111 
2default:defaulth p
x
? 
X
%s
*synth2@
,	Parameter inv bound to: 1 - type: integer 
2default:defaulth p
x
? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2,
ShiftReg__parameterized02default:default2
 2default:default2
632default:default2
12default:default2Z
D/home/pentium/zjucpu/zjucpu.srcs/sources_1/imports/SWORD4/ShiftReg.v2default:default2
92default:default8@Z8-6155h px? 
?
synthesizing module '%s'%s4497*oasys2
GPIOReg2default:default2
 2default:default2f
P/home/pentium/zjucpu/zjucpu.srcs/sources_1/imports/SWORD4/Infrastructure_Sword.v2default:default2
2032default:default8@Z8-6157h px? 
_
%s
*synth2G
3	Parameter ADDR_WIDTH bound to: 6 - type: integer 
2default:defaulth p
x
? 
Q
%s
*synth29
%	Parameter ADDR bound to: 6'b000010 
2default:defaulth p
x
? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
GPIOReg2default:default2
 2default:default2
642default:default2
12default:default2f
P/home/pentium/zjucpu/zjucpu.srcs/sources_1/imports/SWORD4/Infrastructure_Sword.v2default:default2
2032default:default8@Z8-6155h px? 
?
synthesizing module '%s'%s4497*oasys2+
GPIOReg__parameterized02default:default2
 2default:default2f
P/home/pentium/zjucpu/zjucpu.srcs/sources_1/imports/SWORD4/Infrastructure_Sword.v2default:default2
2032default:default8@Z8-6157h px? 
_
%s
*synth2G
3	Parameter ADDR_WIDTH bound to: 6 - type: integer 
2default:defaulth p
x
? 
Q
%s
*synth29
%	Parameter ADDR bound to: 6'b000011 
2default:defaulth p
x
? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2+
GPIOReg__parameterized02default:default2
 2default:default2
642default:default2
12default:default2f
P/home/pentium/zjucpu/zjucpu.srcs/sources_1/imports/SWORD4/Infrastructure_Sword.v2default:default2
2032default:default8@Z8-6155h px? 
?
synthesizing module '%s'%s4497*oasys2+
GPIOReg__parameterized12default:default2
 2default:default2f
P/home/pentium/zjucpu/zjucpu.srcs/sources_1/imports/SWORD4/Infrastructure_Sword.v2default:default2
2032default:default8@Z8-6157h px? 
_
%s
*synth2G
3	Parameter ADDR_WIDTH bound to: 6 - type: integer 
2default:defaulth p
x
? 
Q
%s
*synth29
%	Parameter ADDR bound to: 6'b001000 
2default:defaulth p
x
? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2+
GPIOReg__parameterized12default:default2
 2default:default2
642default:default2
12default:default2f
P/home/pentium/zjucpu/zjucpu.srcs/sources_1/imports/SWORD4/Infrastructure_Sword.v2default:default2
2032default:default8@Z8-6155h px? 
?
synthesizing module '%s'%s4497*oasys2+
GPIOReg__parameterized22default:default2
 2default:default2f
P/home/pentium/zjucpu/zjucpu.srcs/sources_1/imports/SWORD4/Infrastructure_Sword.v2default:default2
2032default:default8@Z8-6157h px? 
_
%s
*synth2G
3	Parameter ADDR_WIDTH bound to: 6 - type: integer 
2default:defaulth p
x
? 
Q
%s
*synth29
%	Parameter ADDR bound to: 6'b001001 
2default:defaulth p
x
? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2+
GPIOReg__parameterized22default:default2
 2default:default2
642default:default2
12default:default2f
P/home/pentium/zjucpu/zjucpu.srcs/sources_1/imports/SWORD4/Infrastructure_Sword.v2default:default2
2032default:default8@Z8-6155h px? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2(
Infrastructure_Sword2default:default2
 2default:default2
652default:default2
12default:default2f
P/home/pentium/zjucpu/zjucpu.srcs/sources_1/imports/SWORD4/Infrastructure_Sword.v2default:default2
92default:default8@Z8-6155h px? 
?
synthesizing module '%s'%s4497*oasys2
	VGADevice2default:default2
 2default:default2e
O/home/pentium/zjucpu/zjucpu.srcs/sources_1/imports/v/Infrastructure/VGADevice.v2default:default2
152default:default8@Z8-6157h px? 
a
%s
*synth2I
5	Parameter GRAPHIC_VRAM bound to: 0 - type: integer 
2default:defaulth p
x
? 
?
synthesizing module '%s'%s4497*oasys2
CharVRAM2default:default2
 2default:default2`
J/home/pentium/zjucpu/zjucpu.srcs/sources_1/imports/v/Infrastructure/VRAM.v2default:default2
1052default:default8@Z8-6157h px? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
CharVRAM2default:default2
 2default:default2
662default:default2
12default:default2`
J/home/pentium/zjucpu/zjucpu.srcs/sources_1/imports/v/Infrastructure/VRAM.v2default:default2
1052default:default8@Z8-6155h px? 
?
synthesizing module '%s'%s4497*oasys2
CharROM2default:default2
 2default:default2`
J/home/pentium/zjucpu/zjucpu.srcs/sources_1/imports/v/Infrastructure/VRAM.v2default:default2
92default:default8@Z8-6157h px? 
?
synthesizing module '%s'%s4497*oasys2
	RAMB16_S12default:default2
 2default:default2O
9/tools/Xilinx/Vivado/2020.2/scripts/rt/data/unisim_comp.v2default:default2
719402default:default8@Z8-6157h px? 
L
%s
*synth24
 	Parameter INIT bound to: 1'b0 
2default:defaulth p
x
? 
?
%s
*synth2?
?	Parameter INIT_00 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000011111101000000110000001100110011011110110000001100000011010010110000001011111100000000000000000 
2default:defaulth p
x
? 
?
%s
*synth2?
?	Parameter INIT_01 bound to: 256'b0000000000000000000000000000000001111110111111111111111111100111110000111111111111111111110110111111111101111110000000000000000000000000000000000000000000000000000100000011100001111100111111101111111011111110111111100110110000000000000000000000000000000000 
2default:defaulth p
x
? 
?
%s
*synth2?
?	Parameter INIT_02 bound to: 256'b0000000000000000000000000000000000000000000100000011100001111100111111100111110000111000000100000000000000000000000000000000000000000000000000000000000000000000001111000001100000011000111001111110011111100111001111000011110000011000000000000000000000000000 
2default:defaulth p
x
? 
?
%s
*synth2?
?	Parameter INIT_03 bound to: 256'b0000000000000000000000000000000000111100000110000001100001111110111111111111111101111110001111000001100000000000000000000000000000000000000000000000000000000000000000000000000000011000001111000011110000011000000000000000000000000000000000000000000000000000 
2default:defaulth p
x
? 
?
%s
*synth2?
?	Parameter INIT_04 bound to: 256'b1111111111111111111111111111111111111111111111111110011111000011110000111110011111111111111111111111111111111111111111111111111100000000000000000000000000000000000000000011110001100110010000100100001001100110001111000000000000000000000000000000000000000000 
2default:defaulth p
x
? 
?
%s
*synth2?
?	Parameter INIT_05 bound to: 256'b1111111111111111111111111111111111111111110000111001100110111101101111011001100111000011111111111111111111111111111111111111111100000000000000000000000000000000011110001100110011001100110011001100110001111000001100100001101000001110000111100000000000000000 
2default:defaulth p
x
? 
?
%s
*synth2?
?	Parameter INIT_06 bound to: 256'b0000000000000000000000000000000000011000000110000111111000011000001111000110011001100110011001100110011000111100000000000000000000000000000000000000000000000000111000001111000001110000001100000011000000110000001100000011111100110011001111110000000000000000 
2default:defaulth p
x
? 
?
%s
*synth2?
?	Parameter INIT_07 bound to: 256'b0000000000000000000000001100000011100110111001110110011101100011011000110110001101100011011111110110001101111111000000000000000000000000000000000000000000000000000110000001100011011011001111001110011100111100110110110001100000011000000000000000000000000000 
2default:defaulth p
x
? 
?
%s
*synth2?
?	Parameter INIT_08 bound to: 256'b0000000000000000000000000000000010000000110000001110000011110000111110001111111011111000111100001110000011000000100000000000000000000000000000000000000000000000000000100000011000001110000111100011111011111110001111100001111000001110000001100000001000000000 
2default:defaulth p
x
? 
?
%s
*synth2?
?	Parameter INIT_09 bound to: 256'b0000000000000000000000000000000000000000000110000011110001111110000110000001100000011000011111100011110000011000000000000000000000000000000000000000000000000000011001100110011000000000011001100110011001100110011001100110011001100110011001100000000000000000 
2default:defaulth p
x
? 
?
%s
*synth2?
?	Parameter INIT_0A bound to: 256'b0000000000000000000000000000000000011011000110110001101100011011000110110111101111011011110110111101101101111111000000000000000000000000000000000000000001111100110001100000110000111000011011001100011011000110011011000011100001100000110001100111110000000000 
2default:defaulth p
x
? 
?
%s
*synth2?
?	Parameter INIT_0B bound to: 256'b0000000000000000000000000000000011111110111111101111111011111110000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000011111100001100000111100011111100001100000011000000110000111111000111100000110000000000000000000 
2default:defaulth p
x
? 
?
%s
*synth2?
?	Parameter INIT_0C bound to: 256'b0000000000000000000000000000000000011000000110000001100000011000000110000001100000011000011111100011110000011000000000000000000000000000000000000000000000000000000110000011110001111110000110000001100000011000000110000001100000011000000110000000000000000000 
2default:defaulth p
x
? 
?
%s
*synth2?
?	Parameter INIT_0D bound to: 256'b0000000000000000000000000000000000000000000000000001100000001100111111100000110000011000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000110000011000001111111001100000001100000000000000000000000000000000000000000000 
2default:defaulth p
x
? 
?
%s
*synth2?
?	Parameter INIT_0E bound to: 256'b0000000000000000000000000000000000000000000000001111111011000000110000001100000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000100100011001101111111101100110001001000000000000000000000000000000000000000000 
2default:defaulth p
x
? 
?
%s
*synth2?
?	Parameter INIT_0F bound to: 256'b0000000000000000000000000000000000000000111111101111111001111100011111000011100000111000000100000000000000000000000000000000000000000000000000000000000000000000000000000001000000111000001110000111110001111100111111101111111000000000000000000000000000000000 
2default:defaulth p
x
? 
?
%s
*synth2?
?	Parameter INIT_10 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000110000001100000000000000110000001100000011000001111000011110000111100000110000000000000000000 
2default:defaulth p
x
? 
?
%s
*synth2?
?	Parameter INIT_11 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000001001000110011001100110011001100000000000000000000000000000000000000000011011000110110011111110011011000110110001101100111111100110110001101100000000000000000000000000 
2default:defaulth p
x
? 
?
%s
*synth2?
?	Parameter INIT_12 bound to: 256'b0000000000000000000110000001100001111100110001101000011000000110000001100111110011000000110000101100011001111100000110000001100000000000000000000000000000000000100001101100011001100000001100000001100000001100110001101100001000000000000000000000000000000000 
2default:defaulth p
x
? 
?
%s
*synth2?
?	Parameter INIT_13 bound to: 256'b0000000000000000000000000000000001110110110011001100110011001100110111000111011000111000011011000110110000111000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000110000000110000001100000011000000000000 
2default:defaulth p
x
? 
?
%s
*synth2?
?	Parameter INIT_14 bound to: 256'b0000000000000000000000000000000000001100000110000011000000110000001100000011000000110000001100000001100000001100000000000000000000000000000000000000000000000000001100000001100000001100000011000000110000001100000011000000110000011000001100000000000000000000 
2default:defaulth p
x
? 
?
%s
*synth2?
?	Parameter INIT_15 bound to: 256'b0000000000000000000000000000000000000000000000000110011000111100111111110011110001100110000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000011000000110000111111000011000000110000000000000000000000000000000000000000000 
2default:defaulth p
x
? 
?
%s
*synth2?
?	Parameter INIT_16 bound to: 256'b0000000000000000000000000011000000011000000110000001100000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000111111000000000000000000000000000000000000000000000000000000000 
2default:defaulth p
x
? 
?
%s
*synth2?
?	Parameter INIT_17 bound to: 256'b0000000000000000000000000000000000011000000110000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000100000001100000001100000001100000001100000001100000001100000001000000000000000000000000000000000 
2default:defaulth p
x
? 
?
%s
*synth2?
?	Parameter INIT_18 bound to: 256'b0000000000000000000000000000000001111100110001101100011011100110111101101101111011001110110001101100011001111100000000000000000000000000000000000000000000000000011111100001100000011000000110000001100000011000000110000111100000111000000110000000000000000000 
2default:defaulth p
x
? 
?
%s
*synth2?
?	Parameter INIT_19 bound to: 256'b0000000000000000000000000000000011111110110001101100000001100000001100000001100000001100000001101100011001111100000000000000000000000000000000000000000000000000011111001100011000000110000001100000011000111100000001100000011011000110011111000000000000000000 
2default:defaulth p
x
? 
?
%s
*synth2?
?	Parameter INIT_1A bound to: 256'b0000000000000000000000000000000000011110000011000000110000001100111111101100110001101100001111000001110000001100000000000000000000000000000000000000000000000000011111001100011000000110000001100000011011111100110000001100000011000000111111100000000000000000 
2default:defaulth p
x
? 
?
%s
*synth2?
?	Parameter INIT_1B bound to: 256'b0000000000000000000000000000000001111100110001101100011011000110110001101111110011000000110000000110000000111000000000000000000000000000000000000000000000000000001100000011000000110000001100000001100000001100000001100000011011000110111111100000000000000000 
2default:defaulth p
x
? 
?
%s
*synth2?
?	Parameter INIT_1C bound to: 256'b0000000000000000000000000000000001111100110001101100011011000110110001100111110011000110110001101100011001111100000000000000000000000000000000000000000000000000011110000000110000000110000001100000011001111110110001101100011011000110011111000000000000000000 
2default:defaulth p
x
? 
?
%s
*synth2?
?	Parameter INIT_1D bound to: 256'b0000000000000000000000000000000000000000000110000001100000000000000000000000000000011000000110000000000000000000000000000000000000000000000000000000000000000000001100000001100000011000000000000000000000000000000110000001100000000000000000000000000000000000 
2default:defaulth p
x
? 
?
%s
*synth2?
?	Parameter INIT_1E bound to: 256'b0000000000000000000000000000000000000110000011000001100000110000011000000011000000011000000011000000011000000000000000000000000000000000000000000000000000000000000000000000000000000000011111100000000000000000011111100000000000000000000000000000000000000000 
2default:defaulth p
x
? 
?
%s
*synth2?
?	Parameter INIT_1F bound to: 256'b0000000000000000000000000000000001100000001100000001100000001100000001100000110000011000001100000110000000000000000000000000000000000000000000000000000000000000000110000001100000000000000110000001100000011000000011001100011011000110011111000000000000000000 
2default:defaulth p
x
? 
?
%s
*synth2?
?	Parameter INIT_20 bound to: 256'b0000000000000000000000000000000001111100110000001101110011011110110111101101111011000110110001101100011001111100000000000000000000000000000000000000000000000000110001101100011011000110110001101111111011000110110001100110110000111000000100000000000000000000 
2default:defaulth p
x
? 
?
%s
*synth2?
?	Parameter INIT_21 bound to: 256'b0000000000000000000000000000000011111100011001100110011001100110011001100111110001100110011001100110011011111100000000000000000000000000000000000000000000000000001111000110011011000010110000001100000011000000110000001100001001100110001111000000000000000000 
2default:defaulth p
x
? 
?
%s
*synth2?
?	Parameter INIT_22 bound to: 256'b0000000000000000000000000000000011111000011011000110011001100110011001100110011001100110011001100110110011111000000000000000000000000000000000000000000000000000111111100110011001100010011000000110100001111000011010000110001001100110111111100000000000000000 
2default:defaulth p
x
? 
?
%s
*synth2?
?	Parameter INIT_23 bound to: 256'b0000000000000000000000000000000011110000011000000110000001100000011010000111100001101000011000100110011011111110000000000000000000000000000000000000000000000000001110100110011011000110110001101101111011000000110000001100001001100110001111000000000000000000 
2default:defaulth p
x
? 
?
%s
*synth2?
?	Parameter INIT_24 bound to: 256'b0000000000000000000000000000000011000110110001101100011011000110110001101111111011000110110001101100011011000110000000000000000000000000000000000000000000000000001111000001100000011000000110000001100000011000000110000001100000011000001111000000000000000000 
2default:defaulth p
x
? 
?
%s
*synth2?
?	Parameter INIT_25 bound to: 256'b0000000000000000000000000000000001111000110011001100110011001100000011000000110000001100000011000000110000011110000000000000000000000000000000000000000000000000111001100110011001100110011011000111100001111000011011000110011001100110111001100000000000000000 
2default:defaulth p
x
? 
?
%s
*synth2?
?	Parameter INIT_26 bound to: 256'b0000000000000000000000000000000011111110011001100110001001100000011000000110000001100000011000000110000011110000000000000000000000000000000000000000000000000000110000111100001111000011110000111100001111011011111111111111111111100111110000110000000000000000 
2default:defaulth p
x
? 
?
%s
*synth2?
?	Parameter INIT_27 bound to: 256'b0000000000000000000000000000000011000110110001101100011011000110110011101101111011111110111101101110011011000110000000000000000000000000000000000000000000000000011111001100011011000110110001101100011011000110110001101100011011000110011111000000000000000000 
2default:defaulth p
x
? 
?
%s
*synth2?
?	Parameter INIT_28 bound to: 256'b0000000000000000000000000000000011110000011000000110000001100000011000000111110001100110011001100110011011111100000000000000000000000000000000000000111000001100011111001101111011010110110001101100011011000110110001101100011011000110011111000000000000000000 
2default:defaulth p
x
? 
?
%s
*synth2?
?	Parameter INIT_29 bound to: 256'b0000000000000000000000000000000011100110011001100110011001100110011011000111110001100110011001100110011011111100000000000000000000000000000000000000000000000000011111001100011011000110000001100000110000111000011000001100011011000110011111000000000000000000 
2default:defaulth p
x
? 
?
%s
*synth2?
?	Parameter INIT_2A bound to: 256'b0000000000000000000000000000000000111100000110000001100000011000000110000001100000011000100110011101101111111111000000000000000000000000000000000000000000000000011111001100011011000110110001101100011011000110110001101100011011000110110001100000000000000000 
2default:defaulth p
x
? 
?
%s
*synth2?
?	Parameter INIT_2B bound to: 256'b0000000000000000000000000000000000011000001111000110011011000011110000111100001111000011110000111100001111000011000000000000000000000000000000000000000000000000011001100110011011111111110110111101101111000011110000111100001111000011110000110000000000000000 
2default:defaulth p
x
? 
?
%s
*synth2?
?	Parameter INIT_2C bound to: 256'b0000000000000000000000000000000011000011110000110110011000111100000110000001100000111100011001101100001111000011000000000000000000000000000000000000000000000000001111000001100000011000000110000001100000111100011001101100001111000011110000110000000000000000 
2default:defaulth p
x
? 
?
%s
*synth2?
?	Parameter INIT_2D bound to: 256'b0000000000000000000000000000000011111111110000111100000101100000001100000001100000001100100001101100001111111111000000000000000000000000000000000000000000000000001111000011000000110000001100000011000000110000001100000011000000110000001111000000000000000000 
2default:defaulth p
x
? 
?
%s
*synth2?
?	Parameter INIT_2E bound to: 256'b0000000000000000000000000000000000000010000001100000111000011100001110000111000011100000110000001000000000000000000000000000000000000000000000000000000000000000001111000000110000001100000011000000110000001100000011000000110000001100001111000000000000000000 
2default:defaulth p
x
? 
?
%s
*synth2?
?	Parameter INIT_2F bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000001100011001101100001110000001000000000000000000001111111100000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:defaulth p
x
? 
?
%s
*synth2?
?	Parameter INIT_30 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000011000001100000011000000000000000000000000000000000000011101101100110011001100110011000111110000001100011110000000000000000000000000000000000000000000 
2default:defaulth p
x
? 
?
%s
*synth2?
?	Parameter INIT_31 bound to: 256'b0000000000000000000000000000000001111100011001100110011001100110011001100110110001111000011000000110000011100000000000000000000000000000000000000000000000000000011111001100011011000000110000001100000011000110011111000000000000000000000000000000000000000000 
2default:defaulth p
x
? 
?
%s
*synth2?
?	Parameter INIT_32 bound to: 256'b0000000000000000000000000000000001110110110011001100110011001100110011000110110000111100000011000000110000011100000000000000000000000000000000000000000000000000011111001100011011000000110000001111111011000110011111000000000000000000000000000000000000000000 
2default:defaulth p
x
? 
?
%s
*synth2?
?	Parameter INIT_33 bound to: 256'b0000000000000000000000000000000011110000011000000110000001100000011000001111000001100000011001000110110000111000000000000000000000000000011110001100110000001100011111001100110011001100110011001100110011001100011101100000000000000000000000000000000000000000 
2default:defaulth p
x
? 
?
%s
*synth2?
?	Parameter INIT_34 bound to: 256'b0000000000000000000000000000000011100110011001100110011001100110011001100111011001101100011000000110000011100000000000000000000000000000000000000000000000000000001111000001100000011000000110000001100000011000001110000000000000011000000110000000000000000000 
2default:defaulth p
x
? 
?
%s
*synth2?
?	Parameter INIT_35 bound to: 256'b0000000000111100011001100110011000000110000001100000011000000110000001100000011000001110000000000000011000000110000000000000000000000000000000000000000000000000111001100110011001101100011110000111100001101100011001100110000001100000111000000000000000000000 
2default:defaulth p
x
? 
?
%s
*synth2?
?	Parameter INIT_36 bound to: 256'b0000000000000000000000000000000000111100000110000001100000011000000110000001100000011000000110000001100000111000000000000000000000000000000000000000000000000000110110111101101111011011110110111101101111111111111001100000000000000000000000000000000000000000 
2default:defaulth p
x
? 
?
%s
*synth2?
?	Parameter INIT_37 bound to: 256'b0000000000000000000000000000000001100110011001100110011001100110011001100110011011011100000000000000000000000000000000000000000000000000000000000000000000000000011111001100011011000110110001101100011011000110011111000000000000000000000000000000000000000000 
2default:defaulth p
x
? 
?
%s
*synth2?
?	Parameter INIT_38 bound to: 256'b0000000011110000011000000110000001111100011001100110011001100110011001100110011011011100000000000000000000000000000000000000000000000000000111100000110000001100011111001100110011001100110011001100110011001100011101100000000000000000000000000000000000000000 
2default:defaulth p
x
? 
?
%s
*synth2?
?	Parameter INIT_39 bound to: 256'b0000000000000000000000000000000011110000011000000110000001100000011001100111011011011100000000000000000000000000000000000000000000000000000000000000000000000000011111001100011000001100001110000110000011000110011111000000000000000000000000000000000000000000 
2default:defaulth p
x
? 
?
%s
*synth2?
?	Parameter INIT_3A bound to: 256'b0000000000000000000000000000000000011100001101100011000000110000001100000011000011111100001100000011000000010000000000000000000000000000000000000000000000000000011101101100110011001100110011001100110011001100110011000000000000000000000000000000000000000000 
2default:defaulth p
x
? 
?
%s
*synth2?
?	Parameter INIT_3B bound to: 256'b0000000000000000000000000000000000011000001111000110011011000011110000111100001111000011000000000000000000000000000000000000000000000000000000000000000000000000011001101111111111011011110110111100001111000011110000110000000000000000000000000000000000000000 
2default:defaulth p
x
? 
?
%s
*synth2?
?	Parameter INIT_3C bound to: 256'b0000000000000000000000000000000011000011011001100011110000011000001111000110011011000011000000000000000000000000000000000000000000000000111110000000110000000110011111101100011011000110110001101100011011000110110001100000000000000000000000000000000000000000 
2default:defaulth p
x
? 
?
%s
*synth2?
?	Parameter INIT_3D bound to: 256'b0000000000000000000000000000000011111110110001100110000000110000000110001100110011111110000000000000000000000000000000000000000000000000000000000000000000000000000011100001100000011000000110000001100001110000000110000001100000011000000011100000000000000000 
2default:defaulth p
x
? 
?
%s
*synth2?
?	Parameter INIT_3E bound to: 256'b0000000000000000000000000000000000011000000110000001100000011000000110000000000000011000000110000001100000011000000000000000000000000000000000000000000000000000011100000001100000011000000110000001100000001110000110000001100000011000011100000000000000000000 
2default:defaulth p
x
? 
?
%s
*synth2?
?	Parameter INIT_3F bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000001101110001110110000000000000000000000000000000000000000000000000000000001111111011000110110001101100011001101100001110000001000000000000000000000000000000000000 
2default:defaulth p
x
? 
M
%s
*synth25
!	Parameter SRVAL bound to: 1'b0 
2default:defaulth p
x
? 
h
%s
*synth2P
<	Parameter WRITE_MODE bound to: WRITE_FIRST - type: string 
2default:defaulth p
x
? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
	RAMB16_S12default:default2
 2default:default2
672default:default2
12default:default2O
9/tools/Xilinx/Vivado/2020.2/scripts/rt/data/unisim_comp.v2default:default2
719402default:default8@Z8-6155h px? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
CharROM2default:default2
 2default:default2
682default:default2
12default:default2`
J/home/pentium/zjucpu/zjucpu.srcs/sources_1/imports/v/Infrastructure/VRAM.v2default:default2
92default:default8@Z8-6155h px? 
?
synthesizing module '%s'%s4497*oasys2
VGAScan2default:default2
 2default:default2c
M/home/pentium/zjucpu/zjucpu.srcs/sources_1/imports/v/Infrastructure/VGAScan.v2default:default2
132default:default8@Z8-6157h px? 
\
%s
*synth2D
0	Parameter PIPE_STAGE bound to: 10'b0000010100 
2default:defaulth p
x
? 
_
%s
*synth2G
3	Parameter HCALIBRATE bound to: 0 - type: integer 
2default:defaulth p
x
? 
_
%s
*synth2G
3	Parameter VCALIBRATE bound to: 0 - type: integer 
2default:defaulth p
x
? 
]
%s
*synth2E
1	Parameter HSTART bound to: 123 - type: integer 
2default:defaulth p
x
? 
[
%s
*synth2C
/	Parameter HEND bound to: 763 - type: integer 
2default:defaulth p
x
? 
\
%s
*synth2D
0	Parameter VSTART bound to: 35 - type: integer 
2default:defaulth p
x
? 
[
%s
*synth2C
/	Parameter VEND bound to: 515 - type: integer 
2default:defaulth p
x
? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
VGAScan2default:default2
 2default:default2
692default:default2
12default:default2c
M/home/pentium/zjucpu/zjucpu.srcs/sources_1/imports/v/Infrastructure/VGAScan.v2default:default2
132default:default8@Z8-6155h px? 
?
synthesizing module '%s'%s4497*oasys2 
vgaCursorGen2default:default2
 2default:default2e
O/home/pentium/zjucpu/zjucpu.srcs/sources_1/imports/v/Infrastructure/VGADevice.v2default:default2
2392default:default8@Z8-6157h px? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2 
vgaCursorGen2default:default2
 2default:default2
702default:default2
12default:default2e
O/home/pentium/zjucpu/zjucpu.srcs/sources_1/imports/v/Infrastructure/VGADevice.v2default:default2
2392default:default8@Z8-6155h px? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
	VGADevice2default:default2
 2default:default2
712default:default2
12default:default2e
O/home/pentium/zjucpu/zjucpu.srcs/sources_1/imports/v/Infrastructure/VGADevice.v2default:default2
152default:default8@Z8-6155h px? 
?
9port '%s' of module '%s' is unconnected for instance '%s'4818*oasys2
HCoord2default:default2
	VGADevice2default:default2
vga2default:default2U
?/home/pentium/zjucpu/zjucpu.srcs/sources_1/imports/SWORD4/Top.v2default:default2
2142default:default8@Z8-7071h px? 
?
9port '%s' of module '%s' is unconnected for instance '%s'4818*oasys2
VCoord2default:default2
	VGADevice2default:default2
vga2default:default2U
?/home/pentium/zjucpu/zjucpu.srcs/sources_1/imports/SWORD4/Top.v2default:default2
2142default:default8@Z8-7071h px? 
?
9port '%s' of module '%s' is unconnected for instance '%s'4818*oasys2

frameStart2default:default2
	VGADevice2default:default2
vga2default:default2U
?/home/pentium/zjucpu/zjucpu.srcs/sources_1/imports/SWORD4/Top.v2default:default2
2142default:default8@Z8-7071h px? 
?
Kinstance '%s' of module '%s' has %s connections declared, but only %s given4757*oasys2
vga2default:default2
	VGADevice2default:default2
162default:default2
132default:default2U
?/home/pentium/zjucpu/zjucpu.srcs/sources_1/imports/SWORD4/Top.v2default:default2
2142default:default8@Z8-7023h px? 
?
synthesizing module '%s'%s4497*oasys2
	SDWrapper2default:default2
 2default:default2Y
C/home/pentium/zjucpu/zjucpu.srcs/sources_1/imports/v/SD/SDWrapper.v2default:default2
82default:default8@Z8-6157h px? 
?
synthesizing module '%s'%s4497*oasys2 
SDController2default:default2
 2default:default2\
F/home/pentium/zjucpu/zjucpu.srcs/sources_1/imports/v/SD/SDController.v2default:default2
72default:default8@Z8-6157h px? 
_
%s
*synth2G
3	Parameter BLKSIZE_W bound to: 12 - type: integer 
2default:defaulth p
x
? 
^
%s
*synth2F
2	Parameter BLKCNT_W bound to: 16 - type: integer 
2default:defaulth p
x
? 
c
%s
*synth2K
7	Parameter CMD_TIMEOUT_W bound to: 24 - type: integer 
2default:defaulth p
x
? 
d
%s
*synth2L
8	Parameter DATA_TIMEOUT_W bound to: 24 - type: integer 
2default:defaulth p
x
? 
]
%s
*synth2E
1	Parameter DIV_BITS bound to: 8 - type: integer 
2default:defaulth p
x
? 
b
%s
*synth2J
6	Parameter CDC_WB_SD_W bound to: 155 - type: integer 
2default:defaulth p
x
? 
b
%s
*synth2J
6	Parameter CDC_SD_WB_W bound to: 132 - type: integer 
2default:defaulth p
x
? 
?
synthesizing module '%s'%s4497*oasys2 
SDC_Clocking2default:default2
 2default:default2\
F/home/pentium/zjucpu/zjucpu.srcs/sources_1/imports/v/SD/SDC_Clocking.v2default:default2
122default:default8@Z8-6157h px? 
]
%s
*synth2E
1	Parameter DIV_BITS bound to: 8 - type: integer 
2default:defaulth p
x
? 
b
%s
*synth2J
6	Parameter CDC_WB_SD_W bound to: 155 - type: integer 
2default:defaulth p
x
? 
b
%s
*synth2J
6	Parameter CDC_SD_WB_W bound to: 132 - type: integer 
2default:defaulth p
x
? 
?
synthesizing module '%s'%s4497*oasys2
BUFHCE2default:default2
 2default:default2O
9/tools/Xilinx/Vivado/2020.2/scripts/rt/data/unisim_comp.v2default:default2
13292default:default8@Z8-6157h px? 
^
%s
*synth2F
2	Parameter CE_TYPE bound to: SYNC - type: string 
2default:defaulth p
x
? 
]
%s
*synth2E
1	Parameter INIT_OUT bound to: 0 - type: integer 
2default:defaulth p
x
? 
V
%s
*synth2>
*	Parameter IS_CE_INVERTED bound to: 1'b0 
2default:defaulth p
x
? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
BUFHCE2default:default2
 2default:default2
722default:default2
12default:default2O
9/tools/Xilinx/Vivado/2020.2/scripts/rt/data/unisim_comp.v2default:default2
13292default:default8@Z8-6155h px? 
?
synthesizing module '%s'%s4497*oasys2(
ODDR__parameterized02default:default2
 2default:default2O
9/tools/Xilinx/Vivado/2020.2/scripts/rt/data/unisim_comp.v2default:default2
497912default:default8@Z8-6157h px? 
h
%s
*synth2P
<	Parameter DDR_CLK_EDGE bound to: SAME_EDGE - type: string 
2default:defaulth p
x
? 
L
%s
*synth24
 	Parameter INIT bound to: 1'b1 
2default:defaulth p
x
? 
U
%s
*synth2=
)	Parameter IS_C_INVERTED bound to: 1'b0 
2default:defaulth p
x
? 
V
%s
*synth2>
*	Parameter IS_D1_INVERTED bound to: 1'b0 
2default:defaulth p
x
? 
V
%s
*synth2>
*	Parameter IS_D2_INVERTED bound to: 1'b0 
2default:defaulth p
x
? 
^
%s
*synth2F
2	Parameter SRTYPE bound to: ASYNC - type: string 
2default:defaulth p
x
? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2(
ODDR__parameterized02default:default2
 2default:default2
722default:default2
12default:default2O
9/tools/Xilinx/Vivado/2020.2/scripts/rt/data/unisim_comp.v2default:default2
497912default:default8@Z8-6155h px? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2 
SDC_Clocking2default:default2
 2default:default2
732default:default2
12default:default2\
F/home/pentium/zjucpu/zjucpu.srcs/sources_1/imports/v/SD/SDC_Clocking.v2default:default2
122default:default8@Z8-6155h px? 
?
synthesizing module '%s'%s4497*oasys2!
SDC_Registers2default:default2
 2default:default2]
G/home/pentium/zjucpu/zjucpu.srcs/sources_1/imports/v/SD/SDC_Registers.v2default:default2
102default:default8@Z8-6157h px? 
?
?Message '%s' appears more than %s times and has been disabled. User can change this message limit to see more message instances.
14*common2 
Synth 8-61572default:default2
1002default:defaultZ17-14h px? 
_
%s
*synth2G
3	Parameter BLKSIZE_W bound to: 12 - type: integer 
2default:defaulth p
x
? 
^
%s
*synth2F
2	Parameter BLKCNT_W bound to: 16 - type: integer 
2default:defaulth p
x
? 
c
%s
*synth2K
7	Parameter CMD_TIMEOUT_W bound to: 24 - type: integer 
2default:defaulth p
x
? 
d
%s
*synth2L
8	Parameter DATA_TIMEOUT_W bound to: 24 - type: integer 
2default:defaulth p
x
? 
]
%s
*synth2E
1	Parameter DIV_BITS bound to: 8 - type: integer 
2default:defaulth p
x
? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2"
SDC_IntTrigger2default:default2
 2default:default2
742default:default2
12default:default2]
G/home/pentium/zjucpu/zjucpu.srcs/sources_1/imports/v/SD/SDC_Registers.v2default:default2
1332default:default8@Z8-6155h px? 
X
%s
*synth2@
,	Parameter DW bound to: 32 - type: integer 
2default:defaulth p
x
? 
l
%s
*synth2T
@	Parameter INIT bound to: 32'b00000000000000000000000000000000 
2default:defaulth p
x
? 
W
%s
*synth2?
+	Parameter AW bound to: 6 - type: integer 
2default:defaulth p
x
? 
Q
%s
*synth29
%	Parameter ADDR bound to: 6'b000000 
2default:defaulth p
x
? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
SDC_Reg2default:default2
 2default:default2
752default:default2
12default:default2]
G/home/pentium/zjucpu/zjucpu.srcs/sources_1/imports/v/SD/SDC_Registers.v2default:default2
1072default:default8@Z8-6155h px? 
X
%s
*synth2@
,	Parameter DW bound to: 14 - type: integer 
2default:defaulth p
x
? 
Z
%s
*synth2B
.	Parameter INIT bound to: 14'b00000000000000 
2default:defaulth p
x
? 
W
%s
*synth2?
+	Parameter AW bound to: 6 - type: integer 
2default:defaulth p
x
? 
Q
%s
*synth29
%	Parameter ADDR bound to: 6'b000001 
2default:defaulth p
x
? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2+
SDC_Reg__parameterized02default:default2
 2default:default2
752default:default2
12default:default2]
G/home/pentium/zjucpu/zjucpu.srcs/sources_1/imports/v/SD/SDC_Registers.v2default:default2
1072default:default8@Z8-6155h px? 
W
%s
*synth2?
+	Parameter DW bound to: 1 - type: integer 
2default:defaulth p
x
? 
L
%s
*synth24
 	Parameter INIT bound to: 1'b0 
2default:defaulth p
x
? 
W
%s
*synth2?
+	Parameter AW bound to: 6 - type: integer 
2default:defaulth p
x
? 
Q
%s
*synth29
%	Parameter ADDR bound to: 6'b000111 
2default:defaulth p
x
? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2+
SDC_Reg__parameterized12default:default2
 2default:default2
752default:default2
12default:default2]
G/home/pentium/zjucpu/zjucpu.srcs/sources_1/imports/v/SD/SDC_Registers.v2default:default2
1072default:default8@Z8-6155h px? 
?
?Message '%s' appears more than %s times and has been disabled. User can change this message limit to see more message instances.
14*common2 
Synth 8-61552default:default2
1002default:defaultZ17-14h px? 
W
%s
*synth2?
+	Parameter DW bound to: 5 - type: integer 
2default:defaulth p
x
? 
P
%s
*synth28
$	Parameter INIT bound to: 5'b00000 
2default:defaulth p
x
? 
W
%s
*synth2?
+	Parameter AW bound to: 6 - type: integer 
2default:defaulth p
x
? 
Q
%s
*synth29
%	Parameter ADDR bound to: 6'b001110 
2default:defaulth p
x
? 
W
%s
*synth2?
+	Parameter DW bound to: 7 - type: integer 
2default:defaulth p
x
? 
R
%s
*synth2:
&	Parameter INIT bound to: 7'b0000000 
2default:defaulth p
x
? 
W
%s
*synth2?
+	Parameter AW bound to: 6 - type: integer 
2default:defaulth p
x
? 
Q
%s
*synth29
%	Parameter ADDR bound to: 6'b010000 
2default:defaulth p
x
? 
X
%s
*synth2@
,	Parameter DW bound to: 32 - type: integer 
2default:defaulth p
x
? 
l
%s
*synth2T
@	Parameter INIT bound to: 32'b00000000000000000000000000000000 
2default:defaulth p
x
? 
W
%s
*synth2?
+	Parameter AW bound to: 6 - type: integer 
2default:defaulth p
x
? 
Q
%s
*synth29
%	Parameter ADDR bound to: 6'b011000 
2default:defaulth p
x
? 
X
%s
*synth2@
,	Parameter DW bound to: 24 - type: integer 
2default:defaulth p
x
? 
m
%s
*synth2U
A	Parameter INIT bound to: 32'sb00000000000000000000000000000000 
2default:defaulth p
x
? 
W
%s
*synth2?
+	Parameter AW bound to: 6 - type: integer 
2default:defaulth p
x
? 
Q
%s
*synth29
%	Parameter ADDR bound to: 6'b000110 
2default:defaulth p
x
? 
X
%s
*synth2@
,	Parameter DW bound to: 24 - type: integer 
2default:defaulth p
x
? 
m
%s
*synth2U
A	Parameter INIT bound to: 32'sb00000000000000000000000000000000 
2default:defaulth p
x
? 
W
%s
*synth2?
+	Parameter AW bound to: 6 - type: integer 
2default:defaulth p
x
? 
Q
%s
*synth29
%	Parameter ADDR bound to: 6'b001000 
2default:defaulth p
x
? 
W
%s
*synth2?
+	Parameter DW bound to: 8 - type: integer 
2default:defaulth p
x
? 
m
%s
*synth2U
A	Parameter INIT bound to: 32'sb00000000000000000000000011111111 
2default:defaulth p
x
? 
W
%s
*synth2?
+	Parameter AW bound to: 6 - type: integer 
2default:defaulth p
x
? 
Q
%s
*synth29
%	Parameter ADDR bound to: 6'b001001 
2default:defaulth p
x
? 
X
%s
*synth2@
,	Parameter DW bound to: 12 - type: integer 
2default:defaulth p
x
? 
m
%s
*synth2U
A	Parameter INIT bound to: 32'sb00000000000000000000000111111111 
2default:defaulth p
x
? 
W
%s
*synth2?
+	Parameter AW bound to: 6 - type: integer 
2default:defaulth p
x
? 
Q
%s
*synth29
%	Parameter ADDR bound to: 6'b010001 
2default:defaulth p
x
? 
X
%s
*synth2@
,	Parameter DW bound to: 16 - type: integer 
2default:defaulth p
x
? 
m
%s
*synth2U
A	Parameter INIT bound to: 32'sb00000000000000000000000000000000 
2default:defaulth p
x
? 
W
%s
*synth2?
+	Parameter AW bound to: 6 - type: integer 
2default:defaulth p
x
? 
Q
%s
*synth29
%	Parameter ADDR bound to: 6'b010010 
2default:defaulth p
x
? 
c
%s
*synth2K
7	Parameter CMD_TIMEOUT_W bound to: 24 - type: integer 
2default:defaulth p
x
? 
O
%s
*synth27
#	Parameter IDLE bound to: 4'b0000 
2default:defaulth p
x
? 
R
%s
*synth2:
&	Parameter TX_DATA bound to: 4'b0001 
2default:defaulth p
x
? 
Q
%s
*synth29
%	Parameter TX_CRC bound to: 4'b0010 
2default:defaulth p
x
? 
R
%s
*synth2:
&	Parameter TX_STOP bound to: 4'b0011 
2default:defaulth p
x
? 
S
%s
*synth2;
'	Parameter TX_CLEAR bound to: 4'b0100 
2default:defaulth p
x
? 
T
%s
*synth2<
(	Parameter WAIT_RESP bound to: 4'b0101 
2default:defaulth p
x
? 
R
%s
*synth2:
&	Parameter RX_DATA bound to: 4'b0110 
2default:defaulth p
x
? 
Q
%s
*synth29
%	Parameter RX_CRC bound to: 4'b0111 
2default:defaulth p
x
? 
R
%s
*synth2:
&	Parameter RX_STOP bound to: 4'b1000 
2default:defaulth p
x
? 
T
%s
*synth2<
(	Parameter WAIT_BUSY bound to: 4'b1001 
2default:defaulth p
x
? 
R
%s
*synth2:
&	Parameter CMD_FIN bound to: 4'b1010 
2default:defaulth p
x
? 
?
-case statement is not full and has no default155*oasys2[
E/home/pentium/zjucpu/zjucpu.srcs/sources_1/imports/v/SD/SDC_Cmdpath.v2default:default2
642default:default8@Z8-155h px? 
_
%s
*synth2G
3	Parameter BLKSIZE_W bound to: 12 - type: integer 
2default:defaulth p
x
? 
^
%s
*synth2F
2	Parameter BLKCNT_W bound to: 16 - type: integer 
2default:defaulth p
x
? 
d
%s
*synth2L
8	Parameter DATA_TIMEOUT_W bound to: 24 - type: integer 
2default:defaulth p
x
? 
[
%s
*synth2C
/	Parameter WIDTH bound to: 32 - type: integer 
2default:defaulth p
x
? 
_
%s
*synth2G
3	Parameter DEPTH_BITS bound to: 5 - type: integer 
2default:defaulth p
x
? 
a
%s
*synth2I
5	Parameter SYNC_STAGE_I bound to: 1 - type: integer 
2default:defaulth p
x
? 
a
%s
*synth2I
5	Parameter SYNC_STAGE_O bound to: 1 - type: integer 
2default:defaulth p
x
? 
[
%s
*synth2C
/	Parameter DEPTH bound to: 32 - type: integer 
2default:defaulth p
x
? 
[
%s
*synth2C
/	Parameter WIDTH bound to: 36 - type: integer 
2default:defaulth p
x
? 
_
%s
*synth2G
3	Parameter DEPTH_BITS bound to: 5 - type: integer 
2default:defaulth p
x
? 
a
%s
*synth2I
5	Parameter SYNC_STAGE_I bound to: 1 - type: integer 
2default:defaulth p
x
? 
a
%s
*synth2I
5	Parameter SYNC_STAGE_O bound to: 1 - type: integer 
2default:defaulth p
x
? 
[
%s
*synth2C
/	Parameter DEPTH bound to: 32 - type: integer 
2default:defaulth p
x
? 
_
%s
*synth2G
3	Parameter BLKSIZE_W bound to: 12 - type: integer 
2default:defaulth p
x
? 
^
%s
*synth2F
2	Parameter BLKCNT_W bound to: 16 - type: integer 
2default:defaulth p
x
? 
N
%s
*synth26
"	Parameter IDLE bound to: 3'b000 
2default:defaulth p
x
? 
R
%s
*synth2:
&	Parameter TX_START bound to: 3'b001 
2default:defaulth p
x
? 
Q
%s
*synth29
%	Parameter TX_DATA bound to: 3'b010 
2default:defaulth p
x
? 
Q
%s
*synth29
%	Parameter TX_LAST bound to: 3'b011 
2default:defaulth p
x
? 
P
%s
*synth28
$	Parameter TX_CRC bound to: 3'b100 
2default:defaulth p
x
? 
Q
%s
*synth29
%	Parameter TX_STOP bound to: 3'b101 
2default:defaulth p
x
? 
X
%s
*synth2@
,	Parameter BUS_TURNAROUND bound to: 3'b110 
2default:defaulth p
x
? 
S
%s
*synth2;
'	Parameter CARD_BUSY bound to: 3'b111 
2default:defaulth p
x
? 
_
%s
*synth2G
3	Parameter BLKSIZE_W bound to: 12 - type: integer 
2default:defaulth p
x
? 
N
%s
*synth26
"	Parameter IDLE bound to: 3'b000 
2default:defaulth p
x
? 
Q
%s
*synth29
%	Parameter RX_DATA bound to: 3'b001 
2default:defaulth p
x
? 
P
%s
*synth28
$	Parameter RX_CRC bound to: 3'b010 
2default:defaulth p
x
? 
Q
%s
*synth29
%	Parameter RX_STOP bound to: 3'b011 
2default:defaulth p
x
? 
?
-case statement is not full and has no default155*oasys2`
J/home/pentium/zjucpu/zjucpu.srcs/sources_1/imports/v/SD/SDC_DataReceiver.v2default:default2
502default:default8@Z8-155h px? 
^
%s
*synth2F
2	Parameter BLKCNT_W bound to: 16 - type: integer 
2default:defaulth p
x
? 
L
%s
*synth24
 	Parameter INIT bound to: 1'b0 
2default:defaulth p
x
? 
?
9port '%s' of module '%s' is unconnected for instance '%s'4818*oasys2
nakDBus2default:default2
CPUBus2default:default2
bus02default:default2U
?/home/pentium/zjucpu/zjucpu.srcs/sources_1/imports/SWORD4/Top.v2default:default2
2612default:default8@Z8-7071h px? 
?
9port '%s' of module '%s' is unconnected for instance '%s'4818*oasys2

progMemNak2default:default2
CPUBus2default:default2
bus02default:default2U
?/home/pentium/zjucpu/zjucpu.srcs/sources_1/imports/SWORD4/Top.v2default:default2
2612default:default8@Z8-7071h px? 
?
9port '%s' of module '%s' is unconnected for instance '%s'4818*oasys2
cVramNak2default:default2
CPUBus2default:default2
bus02default:default2U
?/home/pentium/zjucpu/zjucpu.srcs/sources_1/imports/SWORD4/Top.v2default:default2
2612default:default8@Z8-7071h px? 
?
9port '%s' of module '%s' is unconnected for instance '%s'4818*oasys2
gVramNak2default:default2
CPUBus2default:default2
bus02default:default2U
?/home/pentium/zjucpu/zjucpu.srcs/sources_1/imports/SWORD4/Top.v2default:default2
2612default:default8@Z8-7071h px? 
?
9port '%s' of module '%s' is unconnected for instance '%s'4818*oasys2
ioNak2default:default2
CPUBus2default:default2
bus02default:default2U
?/home/pentium/zjucpu/zjucpu.srcs/sources_1/imports/SWORD4/Top.v2default:default2
2612default:default8@Z8-7071h px? 
?
9port '%s' of module '%s' is unconnected for instance '%s'4818*oasys2
	sdCtrlNak2default:default2
CPUBus2default:default2
bus02default:default2U
?/home/pentium/zjucpu/zjucpu.srcs/sources_1/imports/SWORD4/Top.v2default:default2
2612default:default8@Z8-7071h px? 
?
9port '%s' of module '%s' is unconnected for instance '%s'4818*oasys2
	sdDataNak2default:default2
CPUBus2default:default2
bus02default:default2U
?/home/pentium/zjucpu/zjucpu.srcs/sources_1/imports/SWORD4/Top.v2default:default2
2612default:default8@Z8-7071h px? 
?
Kinstance '%s' of module '%s' has %s connections declared, but only %s given4757*oasys2
bus02default:default2
CPUBus2default:default2
242default:default2
172default:default2U
?/home/pentium/zjucpu/zjucpu.srcs/sources_1/imports/SWORD4/Top.v2default:default2
2612default:default8@Z8-7023h px? 
?
,$readmem data file '%s' is read successfully3426*oasys2F
2/home/pentium/git/ZJUNIX-SoC/src/coe/bootstrap.hex2default:default2c
M/home/pentium/zjucpu/zjucpu.srcs/sources_1/imports/v/Infrastructure/BiosMem.v2default:default2
402default:default8@Z8-3876h px? 
`
%s
*synth2H
4	Parameter COUNTER_MSB bound to: 9 - type: integer 
2default:defaulth p
x
? 
`
%s
*synth2H
4	Parameter ADDR_WIDTH bound to: 12 - type: integer 
2default:defaulth p
x
? 
R
%s
*synth2:
&	Parameter MEM_READ bound to: 3'b001 
2default:defaulth p
x
? 
S
%s
*synth2;
'	Parameter MEM_WRITE bound to: 3'b000 
2default:defaulth p
x
? 
U
%s
*synth2=
)	Parameter STATE_READY bound to: 3'b000 
2default:defaulth p
x
? 
T
%s
*synth2<
(	Parameter STATE_READ bound to: 3'b001 
2default:defaulth p
x
? 
Y
%s
*synth2A
-	Parameter STATE_READ_WAIT bound to: 3'b010 
2default:defaulth p
x
? 
Z
%s
*synth2B
.	Parameter STATE_WRITE_DATA bound to: 3'b011 
2default:defaulth p
x
? 
Y
%s
*synth2A
-	Parameter STATE_WRITE_CMD bound to: 3'b100 
2default:defaulth p
x
? 
V
%s
*synth2>
*	Parameter STATE_WS_END bound to: 3'b111 
2default:defaulth p
x
? 
?
9port '%s' of module '%s' is unconnected for instance '%s'4818*oasys2
device_temp2default:default2
DDR32default:default2
u_DDR32default:default2`
J/home/pentium/zjucpu/zjucpu.srcs/sources_1/imports/SWORD4/DDR3_wsWrapper.v2default:default2
1422default:default8@Z8-7071h px? 
?
Kinstance '%s' of module '%s' has %s connections declared, but only %s given4757*oasys2
u_DDR32default:default2
DDR32default:default2
402default:default2
392default:default2`
J/home/pentium/zjucpu/zjucpu.srcs/sources_1/imports/SWORD4/DDR3_wsWrapper.v2default:default2
1422default:default8@Z8-7023h px? 
?
%s*synth2?
?Finished RTL Elaboration : Time (s): cpu = 00:00:15 ; elapsed = 00:00:28 . Memory (MB): peak = 2535.766 ; gain = 163.000 ; free physical = 853 ; free virtual = 2151
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
M
%s
*synth25
!Start Handling Custom Attributes
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
?Finished Handling Custom Attributes : Time (s): cpu = 00:00:17 ; elapsed = 00:00:29 . Memory (MB): peak = 2547.641 ; gain = 174.875 ; free physical = 866 ; free virtual = 2166
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
?Finished RTL Optimization Phase 1 : Time (s): cpu = 00:00:17 ; elapsed = 00:00:29 . Memory (MB): peak = 2547.641 ; gain = 174.875 ; free physical = 866 ; free virtual = 2166
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
r%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s ; free physical = %s ; free virtual = %s
480*common2.
Netlist sorting complete. 2default:default2
00:00:00.212default:default2
00:00:00.212default:default2
2550.6092default:default2
0.0002default:default2
8442default:default2
21462default:defaultZ17-722h px? 
g
-Analyzing %s Unisim elements for replacement
17*netlist2
2442default:defaultZ29-17h px? 
j
2Unisim Transformation completed in %s CPU seconds
28*netlist2
02default:defaultZ29-28h px? 
K
)Preparing netlist for logic optimization
349*projectZ1-570h px? 
>

Processing XDC Constraints
244*projectZ1-262h px? 
=
Initializing timing engine
348*projectZ1-569h px? 
?
$Parsing XDC File [%s] for cell '%s'
848*designutils2`
J/home/pentium/zjucpu/zjucpu.gen/sources_1/ip/DDR3/DDR3/DDR3_in_context.xdc2default:default2!
ddr3/u_DDR3	2default:default8Z20-848h px? 
?
-Finished Parsing XDC File [%s] for cell '%s'
847*designutils2`
J/home/pentium/zjucpu/zjucpu.gen/sources_1/ip/DDR3/DDR3/DDR3_in_context.xdc2default:default2!
ddr3/u_DDR3	2default:default8Z20-847h px? 
?
$Parsing XDC File [%s] for cell '%s'
848*designutils2?
m/home/pentium/zjucpu/zjucpu.runs/synth_1/.Xil/Vivado-101333-P3nt1um/ClockGen/ClockGen/ClockGen_in_context.xdc2default:default2'
infrastructure/C0	2default:default8Z20-848h px? 
?
-Finished Parsing XDC File [%s] for cell '%s'
847*designutils2?
m/home/pentium/zjucpu/zjucpu.runs/synth_1/.Xil/Vivado-101333-P3nt1um/ClockGen/ClockGen/ClockGen_in_context.xdc2default:default2'
infrastructure/C0	2default:default8Z20-847h px? 
?
Parsing XDC File [%s]
179*designutils2W
A/home/pentium/zjucpu/zjucpu.srcs/constrs_1/imports/SWORD4/DDR.xdc2default:default8Z20-179h px? 
?
Finished Parsing XDC File [%s]
178*designutils2W
A/home/pentium/zjucpu/zjucpu.srcs/constrs_1/imports/SWORD4/DDR.xdc2default:default8Z20-178h px? 
?
?Implementation specific constraints were found while reading constraint file [%s]. These constraints will be ignored for synthesis but will be used in implementation. Impacted constraints are listed in the file [%s].
233*project2U
A/home/pentium/zjucpu/zjucpu.srcs/constrs_1/imports/SWORD4/DDR.xdc2default:default2)
.Xil/Top_propImpl.xdc2default:defaultZ1-236h px? 
?
Parsing XDC File [%s]
179*designutils2]
G/home/pentium/zjucpu/zjucpu.srcs/constrs_1/imports/SWORD4/Sword_phy.xdc2default:default8Z20-179h px? 
?
Finished Parsing XDC File [%s]
178*designutils2]
G/home/pentium/zjucpu/zjucpu.srcs/constrs_1/imports/SWORD4/Sword_phy.xdc2default:default8Z20-178h px? 
?
?Implementation specific constraints were found while reading constraint file [%s]. These constraints will be ignored for synthesis but will be used in implementation. Impacted constraints are listed in the file [%s].
233*project2[
G/home/pentium/zjucpu/zjucpu.srcs/constrs_1/imports/SWORD4/Sword_phy.xdc2default:default2)
.Xil/Top_propImpl.xdc2default:defaultZ1-236h px? 
?
Parsing XDC File [%s]
179*designutils2]
G/home/pentium/zjucpu/zjucpu.srcs/constrs_1/imports/SWORD4/Sword_pin.xdc2default:default8Z20-179h px? 
?
Finished Parsing XDC File [%s]
178*designutils2]
G/home/pentium/zjucpu/zjucpu.srcs/constrs_1/imports/SWORD4/Sword_pin.xdc2default:default8Z20-178h px? 
?
?Implementation specific constraints were found while reading constraint file [%s]. These constraints will be ignored for synthesis but will be used in implementation. Impacted constraints are listed in the file [%s].
233*project2[
G/home/pentium/zjucpu/zjucpu.srcs/constrs_1/imports/SWORD4/Sword_pin.xdc2default:default2)
.Xil/Top_propImpl.xdc2default:defaultZ1-236h px? 
?
Parsing XDC File [%s]
179*designutils2M
7/home/pentium/zjucpu/zjucpu.runs/synth_1/dont_touch.xdc2default:default8Z20-179h px? 
?
Finished Parsing XDC File [%s]
178*designutils2M
7/home/pentium/zjucpu/zjucpu.runs/synth_1/dont_touch.xdc2default:default8Z20-178h px? 
H
&Completed Processing XDC Constraints

245*projectZ1-263h px? 
?
r%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s ; free physical = %s ; free virtual = %s
480*common2.
Netlist sorting complete. 2default:default2
00:00:00.012default:default2
00:00:002default:default2
2692.4532default:default2
0.0002default:default2
6862default:default2
20072default:defaultZ17-722h px? 
?
!Unisim Transformation Summary:
%s111*project2?
?  A total of 17 instances were transformed.
  RAM32M => RAM32M (RAMD32(x6), RAMS32(x2)): 16 instances
  RAMB16_S1 => RAMB18E1: 1 instance 
2default:defaultZ1-111h px? 
?
r%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s ; free physical = %s ; free virtual = %s
480*common24
 Constraint Validation Runtime : 2default:default2
00:00:00.082default:default2
00:00:00.082default:default2
2692.4532default:default2
0.0002default:default2
6862default:default2
20072default:defaultZ17-722h px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
?Finished Constraint Validation : Time (s): cpu = 00:00:26 ; elapsed = 00:00:38 . Memory (MB): peak = 2692.453 ; gain = 319.688 ; free physical = 815 ; free virtual = 2141
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
V
%s
*synth2>
*Start Loading Part and Timing Information
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
K
%s
*synth23
Loading part: xc7k325tffg676-1
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
?Finished Loading Part and Timing Information : Time (s): cpu = 00:00:26 ; elapsed = 00:00:38 . Memory (MB): peak = 2692.453 ; gain = 319.688 ; free physical = 815 ; free virtual = 2140
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
Z
%s
*synth2B
.Start Applying 'set_property' XDC Constraints
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
?Finished applying 'set_property' XDC Constraints : Time (s): cpu = 00:00:26 ; elapsed = 00:00:39 . Memory (MB): peak = 2692.453 ; gain = 319.688 ; free physical = 815 ; free virtual = 2141
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
3inferred FSM for state register '%s' in module '%s'802*oasys2
	state_reg2default:default2!
ICacheFSM_CPU2default:defaultZ8-802h px? 
?
3inferred FSM for state register '%s' in module '%s'802*oasys2
	state_reg2default:default2!
ICacheFSM_DDR2default:defaultZ8-802h px? 
?
3inferred FSM for state register '%s' in module '%s'802*oasys2
	state_reg2default:default2!
DCacheFSM_CPU2default:defaultZ8-802h px? 
?
3inferred FSM for state register '%s' in module '%s'802*oasys2
	state_reg2default:default2!
DCacheFSM_DDR2default:defaultZ8-802h px? 
?
3inferred FSM for state register '%s' in module '%s'802*oasys2
	state_reg2default:default2
	PS2Driver2default:defaultZ8-802h px? 
?
3inferred FSM for state register '%s' in module '%s'802*oasys2
	state_reg2default:default2
SDC_Cmdpath2default:defaultZ8-802h px? 
?
3inferred FSM for state register '%s' in module '%s'802*oasys2
	state_reg2default:default2'
SDC_DataTransmitter2default:defaultZ8-802h px? 
?
3inferred FSM for state register '%s' in module '%s'802*oasys2
	state_reg2default:default2$
SDC_DataReceiver2default:defaultZ8-802h px? 
?
3inferred FSM for state register '%s' in module '%s'802*oasys2
	state_reg2default:default2"
DDR3_wsWrapper2default:defaultZ8-802h px? 
?
%s
*synth2x
d---------------------------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s
*synth2t
`                   State |                     New Encoding |                Previous Encoding 
2default:defaulth p
x
? 
?
%s
*synth2x
d---------------------------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s
*synth2s
_              STATE_IDLE |                               00 |                               00
2default:defaulth p
x
? 
?
%s
*synth2s
_        STATE_INVALIDATE |                               01 |                               10
2default:defaulth p
x
? 
?
%s
*synth2s
_              STATE_WAIT |                               10 |                               01
2default:defaulth p
x
? 
?
%s
*synth2x
d---------------------------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
Gencoded FSM with state register '%s' using encoding '%s' in module '%s'3353*oasys2
	state_reg2default:default2

sequential2default:default2!
ICacheFSM_CPU2default:defaultZ8-3354h px? 
?
%s
*synth2x
d---------------------------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s
*synth2t
`                   State |                     New Encoding |                Previous Encoding 
2default:defaulth p
x
? 
?
%s
*synth2x
d---------------------------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s
*synth2s
_              STATE_IDLE |                              001 |                               00
2default:defaulth p
x
? 
?
%s
*synth2s
_              STATE_WAIT |                              010 |                               01
2default:defaulth p
x
? 
?
%s
*synth2s
_             STATE_WRITE |                              100 |                               10
2default:defaulth p
x
? 
?
%s
*synth2x
d---------------------------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
Gencoded FSM with state register '%s' using encoding '%s' in module '%s'3353*oasys2
	state_reg2default:default2
one-hot2default:default2!
ICacheFSM_DDR2default:defaultZ8-3354h px? 
?
%s
*synth2x
d---------------------------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s
*synth2t
`                   State |                     New Encoding |                Previous Encoding 
2default:defaulth p
x
? 
?
%s
*synth2x
d---------------------------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s
*synth2s
_              STATE_IDLE |                               00 |                               00
2default:defaulth p
x
? 
?
%s
*synth2s
_              STATE_WAIT |                               01 |                               01
2default:defaulth p
x
? 
?
%s
*synth2s
_        STATE_INVALIDATE |                               10 |                               10
2default:defaulth p
x
? 
?
%s
*synth2x
d---------------------------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
Gencoded FSM with state register '%s' using encoding '%s' in module '%s'3353*oasys2
	state_reg2default:default2

sequential2default:default2!
DCacheFSM_CPU2default:defaultZ8-3354h px? 
?
%s
*synth2x
d---------------------------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s
*synth2t
`                   State |                     New Encoding |                Previous Encoding 
2default:defaulth p
x
? 
?
%s
*synth2x
d---------------------------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s
*synth2s
_              STATE_IDLE |                              000 |                              000
2default:defaulth p
x
? 
?
%s
*synth2s
_          STATE_MEM_READ |                              001 |                              001
2default:defaulth p
x
? 
?
%s
*synth2s
_      STATE_MEM_READ_END |                              010 |                              010
2default:defaulth p
x
? 
?
%s
*synth2s
_           STATE_WS_PREP |                              011 |                              011
2default:defaulth p
x
? 
?
%s
*synth2s
_           STATE_WS_READ |                              100 |                              100
2default:defaulth p
x
? 
?
%s
*synth2s
_     STATE_MEM_WRITE_END |                              101 |                              110
2default:defaulth p
x
? 
?
%s
*synth2s
_          STATE_WS_WRITE |                              110 |                              111
2default:defaulth p
x
? 
?
%s
*synth2x
d---------------------------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
Gencoded FSM with state register '%s' using encoding '%s' in module '%s'3353*oasys2
	state_reg2default:default2

sequential2default:default2!
DCacheFSM_DDR2default:defaultZ8-3354h px? 
?
%s
*synth2x
d---------------------------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s
*synth2t
`                   State |                     New Encoding |                Previous Encoding 
2default:defaulth p
x
? 
?
%s
*synth2x
d---------------------------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s
*synth2s
_              STATE_IDLE |                              000 |                              000
2default:defaulth p
x
? 
?
%s
*synth2s
_           STATE_TX_INIT |                              101 |                              010
2default:defaulth p
x
? 
?
%s
*synth2s
_                STATE_TX |                              100 |                              011
2default:defaulth p
x
? 
?
%s
*synth2s
_            STATE_TX_END |                              011 |                              100
2default:defaulth p
x
? 
?
%s
*synth2s
_           STATE_TX_WAIT |                              001 |                              101
2default:defaulth p
x
? 
?
%s
*synth2s
_                STATE_RX |                              010 |                              001
2default:defaulth p
x
? 
?
%s
*synth2x
d---------------------------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
Gencoded FSM with state register '%s' using encoding '%s' in module '%s'3353*oasys2
	state_reg2default:default2

sequential2default:default2
	PS2Driver2default:defaultZ8-3354h px? 
?
%s
*synth2x
d---------------------------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s
*synth2t
`                   State |                     New Encoding |                Previous Encoding 
2default:defaulth p
x
? 
?
%s
*synth2x
d---------------------------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s
*synth2s
_                    IDLE |                      00001000000 |                             0000
2default:defaulth p
x
? 
?
%s
*synth2s
_                 TX_DATA |                      00010000000 |                             0001
2default:defaulth p
x
? 
?
%s
*synth2s
_                  TX_CRC |                      00000100000 |                             0010
2default:defaulth p
x
? 
?
%s
*synth2s
_                 TX_STOP |                      00000000001 |                             0011
2default:defaulth p
x
? 
?
%s
*synth2s
_                TX_CLEAR |                      00000000010 |                             0100
2default:defaulth p
x
? 
?
%s
*synth2s
_               WAIT_RESP |                      00000000100 |                             0101
2default:defaulth p
x
? 
?
%s
*synth2s
_                 RX_DATA |                      10000000000 |                             0110
2default:defaulth p
x
? 
?
%s
*synth2s
_                  RX_CRC |                      00100000000 |                             0111
2default:defaulth p
x
? 
?
%s
*synth2s
_                 RX_STOP |                      01000000000 |                             1000
2default:defaulth p
x
? 
?
%s
*synth2s
_               WAIT_BUSY |                      00000001000 |                             1001
2default:defaulth p
x
? 
?
%s
*synth2s
_                 CMD_FIN |                      00000010000 |                             1010
2default:defaulth p
x
? 
?
%s
*synth2x
d---------------------------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
Gencoded FSM with state register '%s' using encoding '%s' in module '%s'3353*oasys2
	state_reg2default:default2
one-hot2default:default2
SDC_Cmdpath2default:defaultZ8-3354h px? 
?
%s
*synth2x
d---------------------------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s
*synth2t
`                   State |                     New Encoding |                Previous Encoding 
2default:defaulth p
x
? 
?
%s
*synth2x
d---------------------------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s
*synth2s
_                    IDLE |                              001 |                              000
2default:defaulth p
x
? 
?
%s
*synth2s
_                TX_START |                              111 |                              001
2default:defaulth p
x
? 
?
%s
*synth2s
_                 TX_DATA |                              110 |                              010
2default:defaulth p
x
? 
?
%s
*synth2s
_                 TX_LAST |                              101 |                              011
2default:defaulth p
x
? 
?
%s
*synth2s
_                  TX_CRC |                              100 |                              100
2default:defaulth p
x
? 
?
%s
*synth2s
_                 TX_STOP |                              011 |                              101
2default:defaulth p
x
? 
?
%s
*synth2s
_          BUS_TURNAROUND |                              010 |                              110
2default:defaulth p
x
? 
?
%s
*synth2s
_               CARD_BUSY |                              000 |                              111
2default:defaulth p
x
? 
?
%s
*synth2x
d---------------------------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
Gencoded FSM with state register '%s' using encoding '%s' in module '%s'3353*oasys2
	state_reg2default:default2

sequential2default:default2'
SDC_DataTransmitter2default:defaultZ8-3354h px? 
?
%s
*synth2x
d---------------------------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s
*synth2t
`                   State |                     New Encoding |                Previous Encoding 
2default:defaulth p
x
? 
?
%s
*synth2x
d---------------------------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s
*synth2s
_                    IDLE |                               01 |                              000
2default:defaulth p
x
? 
?
%s
*synth2s
_                 RX_DATA |                               11 |                              001
2default:defaulth p
x
? 
?
%s
*synth2s
_                  RX_CRC |                               10 |                              010
2default:defaulth p
x
? 
?
%s
*synth2s
_                 RX_STOP |                               00 |                              011
2default:defaulth p
x
? 
?
%s
*synth2x
d---------------------------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
Gencoded FSM with state register '%s' using encoding '%s' in module '%s'3353*oasys2
	state_reg2default:default2

sequential2default:default2$
SDC_DataReceiver2default:defaultZ8-3354h px? 
?
?The signal %s was recognized as a true dual port RAM template.
3473*oasys2)
"Buffer_SD:/data_reg"2default:defaultZ8-3971h px? 
?
%s
*synth2x
d---------------------------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s
*synth2t
`                   State |                     New Encoding |                Previous Encoding 
2default:defaulth p
x
? 
?
%s
*synth2x
d---------------------------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s
*synth2s
_             STATE_READY |                           000001 |                              000
2default:defaulth p
x
? 
?
%s
*synth2s
_        STATE_WRITE_DATA |                           000010 |                              011
2default:defaulth p
x
? 
?
%s
*synth2s
_         STATE_WRITE_CMD |                           000100 |                              100
2default:defaulth p
x
? 
?
%s
*synth2s
_              STATE_READ |                           001000 |                              001
2default:defaulth p
x
? 
?
%s
*synth2s
_         STATE_READ_WAIT |                           010000 |                              010
2default:defaulth p
x
? 
?
%s
*synth2s
_            STATE_WS_END |                           100000 |                              111
2default:defaulth p
x
? 
?
%s
*synth2x
d---------------------------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
Gencoded FSM with state register '%s' using encoding '%s' in module '%s'3353*oasys2
	state_reg2default:default2
one-hot2default:default2"
DDR3_wsWrapper2default:defaultZ8-3354h px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
?Finished RTL Optimization Phase 2 : Time (s): cpu = 00:00:31 ; elapsed = 00:00:44 . Memory (MB): peak = 2692.453 ; gain = 319.688 ; free physical = 961 ; free virtual = 2297
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
L
%s
*synth24
 Start RTL Component Statistics 
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
K
%s
*synth23
Detailed RTL Component Info : 
2default:defaulth p
x
? 
:
%s
*synth2"
+---Adders : 
2default:defaulth p
x
? 
X
%s
*synth2@
,	   2 Input   64 Bit       Adders := 3     
2default:defaulth p
x
? 
X
%s
*synth2@
,	   3 Input   64 Bit       Adders := 1     
2default:defaulth p
x
? 
X
%s
*synth2@
,	   2 Input   33 Bit       Adders := 1     
2default:defaulth p
x
? 
X
%s
*synth2@
,	   3 Input   33 Bit       Adders := 1     
2default:defaulth p
x
? 
X
%s
*synth2@
,	   2 Input   32 Bit       Adders := 9     
2default:defaulth p
x
? 
X
%s
*synth2@
,	   3 Input   32 Bit       Adders := 1     
2default:defaulth p
x
? 
X
%s
*synth2@
,	   2 Input   30 Bit       Adders := 1     
2default:defaulth p
x
? 
X
%s
*synth2@
,	   2 Input   19 Bit       Adders := 1     
2default:defaulth p
x
? 
X
%s
*synth2@
,	   2 Input   12 Bit       Adders := 1     
2default:defaulth p
x
? 
X
%s
*synth2@
,	   2 Input   10 Bit       Adders := 4     
2default:defaulth p
x
? 
X
%s
*synth2@
,	   2 Input    9 Bit       Adders := 3     
2default:defaulth p
x
? 
X
%s
*synth2@
,	   2 Input    8 Bit       Adders := 12    
2default:defaulth p
x
? 
X
%s
*synth2@
,	   3 Input    8 Bit       Adders := 4     
2default:defaulth p
x
? 
X
%s
*synth2@
,	   2 Input    6 Bit       Adders := 1     
2default:defaulth p
x
? 
X
%s
*synth2@
,	   2 Input    5 Bit       Adders := 21    
2default:defaulth p
x
? 
X
%s
*synth2@
,	   3 Input    5 Bit       Adders := 10    
2default:defaulth p
x
? 
X
%s
*synth2@
,	   2 Input    4 Bit       Adders := 23    
2default:defaulth p
x
? 
X
%s
*synth2@
,	   2 Input    2 Bit       Adders := 3     
2default:defaulth p
x
? 
X
%s
*synth2@
,	   2 Input    1 Bit       Adders := 1     
2default:defaulth p
x
? 
8
%s
*synth2 
+---XORs : 
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   2 Input     32 Bit         XORs := 1     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   2 Input     19 Bit         XORs := 96    
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   2 Input     17 Bit         XORs := 2     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   2 Input      1 Bit         XORs := 23    
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   3 Input      1 Bit         XORs := 8     
2default:defaulth p
x
? 
=
%s
*synth2%
+---Registers : 
2default:defaulth p
x
? 
Z
%s
*synth2B
.	              512 Bit    Registers := 5     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	              155 Bit    Registers := 1     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	              132 Bit    Registers := 1     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	              120 Bit    Registers := 1     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	               64 Bit    Registers := 5     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	               44 Bit    Registers := 32    
2default:defaulth p
x
? 
Z
%s
*synth2B
.	               40 Bit    Registers := 1     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	               36 Bit    Registers := 2     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	               33 Bit    Registers := 3     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	               32 Bit    Registers := 42    
2default:defaulth p
x
? 
Z
%s
*synth2B
.	               30 Bit    Registers := 1     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	               27 Bit    Registers := 1     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	               26 Bit    Registers := 2     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	               25 Bit    Registers := 1     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	               24 Bit    Registers := 2     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	               23 Bit    Registers := 1     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	               20 Bit    Registers := 1     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	               19 Bit    Registers := 1     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	               18 Bit    Registers := 1     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	               17 Bit    Registers := 6     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	               16 Bit    Registers := 11    
2default:defaulth p
x
? 
Z
%s
*synth2B
.	               15 Bit    Registers := 1     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	               14 Bit    Registers := 1     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	               13 Bit    Registers := 6     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	               12 Bit    Registers := 5     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	               11 Bit    Registers := 1     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	               10 Bit    Registers := 6     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	                9 Bit    Registers := 4     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	                8 Bit    Registers := 21    
2default:defaulth p
x
? 
Z
%s
*synth2B
.	                7 Bit    Registers := 3     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	                6 Bit    Registers := 2     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	                5 Bit    Registers := 22    
2default:defaulth p
x
? 
Z
%s
*synth2B
.	                4 Bit    Registers := 28    
2default:defaulth p
x
? 
Z
%s
*synth2B
.	                3 Bit    Registers := 10    
2default:defaulth p
x
? 
Z
%s
*synth2B
.	                2 Bit    Registers := 13    
2default:defaulth p
x
? 
Z
%s
*synth2B
.	                1 Bit    Registers := 906   
2default:defaulth p
x
? 
8
%s
*synth2 
+---RAMs : 
2default:defaulth p
x
? 
k
%s
*synth2S
?	             128K Bit	(4096 X 32 bit)          RAMs := 2     
2default:defaulth p
x
? 
k
%s
*synth2S
?	              32K Bit	(1024 X 32 bit)          RAMs := 1     
2default:defaulth p
x
? 
j
%s
*synth2R
>	              18K Bit	(512 X 36 bit)          RAMs := 2     
2default:defaulth p
x
? 
j
%s
*synth2R
>	              16K Bit	(8192 X 2 bit)          RAMs := 1     
2default:defaulth p
x
? 
i
%s
*synth2Q
=	               2K Bit	(256 X 8 bit)          RAMs := 2     
2default:defaulth p
x
? 
i
%s
*synth2Q
=	             1024 Bit	(32 X 32 bit)          RAMs := 1     
2default:defaulth p
x
? 
i
%s
*synth2Q
=	               1K Bit	(32 X 36 bit)          RAMs := 1     
2default:defaulth p
x
? 
i
%s
*synth2Q
=	              512 Bit	(512 X 1 bit)          RAMs := 2     
2default:defaulth p
x
? 
h
%s
*synth2P
<	              256 Bit	(32 X 8 bit)          RAMs := 3     
2default:defaulth p
x
? 
9
%s
*synth2!
+---Muxes : 
2default:defaulth p
x
? 
X
%s
*synth2@
,	   2 Input  512 Bit        Muxes := 2     
2default:defaulth p
x
? 
X
%s
*synth2@
,	   2 Input  256 Bit        Muxes := 3     
2default:defaulth p
x
? 
X
%s
*synth2@
,	   2 Input   64 Bit        Muxes := 4     
2default:defaulth p
x
? 
X
%s
*synth2@
,	   2 Input   40 Bit        Muxes := 1     
2default:defaulth p
x
? 
X
%s
*synth2@
,	   2 Input   36 Bit        Muxes := 12    
2default:defaulth p
x
? 
X
%s
*synth2@
,	   3 Input   36 Bit        Muxes := 2     
2default:defaulth p
x
? 
X
%s
*synth2@
,	  11 Input   33 Bit        Muxes := 1     
2default:defaulth p
x
? 
X
%s
*synth2@
,	   8 Input   33 Bit        Muxes := 2     
2default:defaulth p
x
? 
X
%s
*synth2@
,	  35 Input   33 Bit        Muxes := 1     
2default:defaulth p
x
? 
X
%s
*synth2@
,	  18 Input   33 Bit        Muxes := 1     
2default:defaulth p
x
? 
X
%s
*synth2@
,	   2 Input   32 Bit        Muxes := 84    
2default:defaulth p
x
? 
X
%s
*synth2@
,	   4 Input   32 Bit        Muxes := 10    
2default:defaulth p
x
? 
X
%s
*synth2@
,	   3 Input   32 Bit        Muxes := 2     
2default:defaulth p
x
? 
X
%s
*synth2@
,	   7 Input   32 Bit        Muxes := 2     
2default:defaulth p
x
? 
X
%s
*synth2@
,	  21 Input   32 Bit        Muxes := 1     
2default:defaulth p
x
? 
X
%s
*synth2@
,	   2 Input   30 Bit        Muxes := 1     
2default:defaulth p
x
? 
X
%s
*synth2@
,	   7 Input   26 Bit        Muxes := 2     
2default:defaulth p
x
? 
X
%s
*synth2@
,	   2 Input   26 Bit        Muxes := 1     
2default:defaulth p
x
? 
X
%s
*synth2@
,	   2 Input   25 Bit        Muxes := 1     
2default:defaulth p
x
? 
X
%s
*synth2@
,	   2 Input   24 Bit        Muxes := 2     
2default:defaulth p
x
? 
X
%s
*synth2@
,	   2 Input   20 Bit        Muxes := 1     
2default:defaulth p
x
? 
X
%s
*synth2@
,	   2 Input   19 Bit        Muxes := 1     
2default:defaulth p
x
? 
X
%s
*synth2@
,	   2 Input   18 Bit        Muxes := 1     
2default:defaulth p
x
? 
X
%s
*synth2@
,	   2 Input   17 Bit        Muxes := 2     
2default:defaulth p
x
? 
X
%s
*synth2@
,	   2 Input   16 Bit        Muxes := 5     
2default:defaulth p
x
? 
X
%s
*synth2@
,	   2 Input   14 Bit        Muxes := 1     
2default:defaulth p
x
? 
X
%s
*synth2@
,	   2 Input   13 Bit        Muxes := 4     
2default:defaulth p
x
? 
X
%s
*synth2@
,	   2 Input   12 Bit        Muxes := 7     
2default:defaulth p
x
? 
X
%s
*synth2@
,	   4 Input   12 Bit        Muxes := 1     
2default:defaulth p
x
? 
X
%s
*synth2@
,	   2 Input   11 Bit        Muxes := 7     
2default:defaulth p
x
? 
X
%s
*synth2@
,	  11 Input   11 Bit        Muxes := 1     
2default:defaulth p
x
? 
X
%s
*synth2@
,	   2 Input   10 Bit        Muxes := 2     
2default:defaulth p
x
? 
X
%s
*synth2@
,	   2 Input    9 Bit        Muxes := 7     
2default:defaulth p
x
? 
X
%s
*synth2@
,	   4 Input    8 Bit        Muxes := 3     
2default:defaulth p
x
? 
X
%s
*synth2@
,	   2 Input    8 Bit        Muxes := 17    
2default:defaulth p
x
? 
X
%s
*synth2@
,	   8 Input    8 Bit        Muxes := 1     
2default:defaulth p
x
? 
X
%s
*synth2@
,	   2 Input    7 Bit        Muxes := 3     
2default:defaulth p
x
? 
X
%s
*synth2@
,	   2 Input    6 Bit        Muxes := 4     
2default:defaulth p
x
? 
X
%s
*synth2@
,	   6 Input    6 Bit        Muxes := 1     
2default:defaulth p
x
? 
X
%s
*synth2@
,	   4 Input    5 Bit        Muxes := 1     
2default:defaulth p
x
? 
X
%s
*synth2@
,	   2 Input    5 Bit        Muxes := 7     
2default:defaulth p
x
? 
X
%s
*synth2@
,	  21 Input    5 Bit        Muxes := 1     
2default:defaulth p
x
? 
X
%s
*synth2@
,	   2 Input    4 Bit        Muxes := 16    
2default:defaulth p
x
? 
X
%s
*synth2@
,	   4 Input    4 Bit        Muxes := 6     
2default:defaulth p
x
? 
X
%s
*synth2@
,	  18 Input    4 Bit        Muxes := 1     
2default:defaulth p
x
? 
X
%s
*synth2@
,	   8 Input    4 Bit        Muxes := 1     
2default:defaulth p
x
? 
X
%s
*synth2@
,	   8 Input    3 Bit        Muxes := 3     
2default:defaulth p
x
? 
X
%s
*synth2@
,	   2 Input    3 Bit        Muxes := 21    
2default:defaulth p
x
? 
X
%s
*synth2@
,	   4 Input    3 Bit        Muxes := 2     
2default:defaulth p
x
? 
X
%s
*synth2@
,	   7 Input    3 Bit        Muxes := 1     
2default:defaulth p
x
? 
X
%s
*synth2@
,	   3 Input    3 Bit        Muxes := 2     
2default:defaulth p
x
? 
X
%s
*synth2@
,	   6 Input    3 Bit        Muxes := 6     
2default:defaulth p
x
? 
X
%s
*synth2@
,	   4 Input    2 Bit        Muxes := 4     
2default:defaulth p
x
? 
X
%s
*synth2@
,	   3 Input    2 Bit        Muxes := 5     
2default:defaulth p
x
? 
X
%s
*synth2@
,	   7 Input    2 Bit        Muxes := 2     
2default:defaulth p
x
? 
X
%s
*synth2@
,	   2 Input    2 Bit        Muxes := 25    
2default:defaulth p
x
? 
X
%s
*synth2@
,	   2 Input    1 Bit        Muxes := 618   
2default:defaulth p
x
? 
X
%s
*synth2@
,	   7 Input    1 Bit        Muxes := 17    
2default:defaulth p
x
? 
X
%s
*synth2@
,	   4 Input    1 Bit        Muxes := 8     
2default:defaulth p
x
? 
X
%s
*synth2@
,	   3 Input    1 Bit        Muxes := 16    
2default:defaulth p
x
? 
X
%s
*synth2@
,	  11 Input    1 Bit        Muxes := 1     
2default:defaulth p
x
? 
X
%s
*synth2@
,	   8 Input    1 Bit        Muxes := 1     
2default:defaulth p
x
? 
X
%s
*synth2@
,	   6 Input    1 Bit        Muxes := 7     
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
O
%s
*synth27
#Finished RTL Component Statistics 
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
H
%s
*synth20
Start Part Resource Summary
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s
*synth2m
YPart Resources:
DSPs: 840 (col length:140)
BRAMs: 890 (col length: RAMB18 140 RAMB36 70)
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
K
%s
*synth23
Finished Part Resource Summary
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
W
%s
*synth2?
+Start Cross Boundary and Area Optimization
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
g
%s
*synth2O
;DSP Report: Generating DSP mulRes, operation Mode is: A*B.
2default:defaulth p
x
? 
e
%s
*synth2M
9DSP Report: operator mulRes is absorbed into DSP mulRes.
2default:defaulth p
x
? 
e
%s
*synth2M
9DSP Report: operator mulRes is absorbed into DSP mulRes.
2default:defaulth p
x
? 
r
%s
*synth2Z
FDSP Report: Generating DSP mulRes, operation Mode is: (PCIN>>17)+A*B.
2default:defaulth p
x
? 
e
%s
*synth2M
9DSP Report: operator mulRes is absorbed into DSP mulRes.
2default:defaulth p
x
? 
e
%s
*synth2M
9DSP Report: operator mulRes is absorbed into DSP mulRes.
2default:defaulth p
x
? 
g
%s
*synth2O
;DSP Report: Generating DSP mulRes, operation Mode is: A*B.
2default:defaulth p
x
? 
e
%s
*synth2M
9DSP Report: operator mulRes is absorbed into DSP mulRes.
2default:defaulth p
x
? 
e
%s
*synth2M
9DSP Report: operator mulRes is absorbed into DSP mulRes.
2default:defaulth p
x
? 
r
%s
*synth2Z
FDSP Report: Generating DSP mulRes, operation Mode is: (PCIN>>17)+A*B.
2default:defaulth p
x
? 
e
%s
*synth2M
9DSP Report: operator mulRes is absorbed into DSP mulRes.
2default:defaulth p
x
? 
e
%s
*synth2M
9DSP Report: operator mulRes is absorbed into DSP mulRes.
2default:defaulth p
x
? 
q
%s
*synth2Y
EDSP Report: Generating DSP prng0, operation Mode is: A*(B:0xfff1)+1.
2default:defaulth p
x
? 
c
%s
*synth2K
7DSP Report: operator prng0 is absorbed into DSP prng0.
2default:defaulth p
x
? 
c
%s
*synth2K
7DSP Report: operator prng1 is absorbed into DSP prng0.
2default:defaulth p
x
? 
h
%s
*synth2P
<DSP Report: Generating DSP product, operation Mode is: A*B.
2default:defaulth p
x
? 
g
%s
*synth2O
;DSP Report: operator product is absorbed into DSP product.
2default:defaulth p
x
? 
?
?The signal %s was recognized as a true dual port RAM template.
3473*oasys2)
"sdc/buffer/data_reg"2default:defaultZ8-3971h px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
?Finished Cross Boundary and Area Optimization : Time (s): cpu = 00:01:19 ; elapsed = 00:01:34 . Memory (MB): peak = 2692.453 ; gain = 319.688 ; free physical = 750 ; free virtual = 2217
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
?---------------------------------------------------------------------------------
Start ROM, RAM, DSP, Shift Register and Retiming Reporting
2default:defaulth px? 
~
%s*synth2f
R---------------------------------------------------------------------------------
2default:defaulth px? 
d
%s*synth2L
8
Block RAM: Preliminary Mapping	Report (see note below)
2default:defaulth px? 
?
%s*synth2?
?+---------------+-------------------------------------+------------------------+---+---+------------------------+---+---+------------------+--------+--------+
2default:defaulth px? 
?
%s*synth2?
?|Module Name    | RTL Object                          | PORT A (Depth x Width) | W | R | PORT B (Depth x Width) | W | R | Ports driving FF | RAMB18 | RAMB36 | 
2default:defaulth px? 
?
%s*synth2?
?+---------------+-------------------------------------+------------------------+---+---+------------------------+---+---+------------------+--------+--------+
2default:defaulth px? 
?
%s*synth2?
?|core/cpu/BP    | recBuffer_reg                       | 8 K x 2(READ_FIRST)    | W |   | 8 K x 2(WRITE_FIRST)   |   | R | Port A and B     | 1      | 0      | 
2default:defaulth px? 
?
%s*synth2?
?|core           | dcache/FSM0/cacheTag/data_reg       | 512 x 36(WRITE_FIRST)  | W | R |                        |   |   | Port A           | 1      | 0      | 
2default:defaulth px? 
?
%s*synth2?
?|infrastructure | UART_DEFINED.uart/txBuffer/data_reg | 256 x 8(NO_CHANGE)     | W |   | 256 x 8(WRITE_FIRST)   |   | R | Port A and B     | 1      | 0      | 
2default:defaulth px? 
?
%s*synth2?
?|infrastructure | UART_DEFINED.uart/rxBuffer/data_reg | 256 x 8(NO_CHANGE)     | W |   | 256 x 8(WRITE_FIRST)   |   | R | Port A and B     | 1      | 0      | 
2default:defaulth px? 
?
%s*synth2?
?|vga            | RAM1/data_reg                       | 4 K x 32(WRITE_FIRST)  | W | R | 4 K x 32(WRITE_FIRST)  |   | R | Port A and B     | 0      | 4      | 
2default:defaulth px? 
?
%s*synth2?
?|sdc            | sd/dataPath/dma/txFifo/data_reg     | 32 x 32(NO_CHANGE)     | W |   | 32 x 32(WRITE_FIRST)   |   | R | Port A and B     | 1      | 0      | 
2default:defaulth px? 
?
%s*synth2?
?|sdc            | sd/dataPath/dma/rxFifo/data_reg     | 32 x 36(NO_CHANGE)     | W |   | 32 x 36(WRITE_FIRST)   |   | R | Port A and B     | 1      | 0      | 
2default:defaulth px? 
?
%s*synth2?
?|sdc            | buffer/data_reg                     | 1 K x 32(WRITE_FIRST)  | W | R | 1 K x 32(WRITE_FIRST)  | W | R | Port A and B     | 0      | 1      | 
2default:defaulth px? 
?
%s*synth2?
?|mem0           | data_reg                            | 4 K x 32(WRITE_FIRST)  | W | R | 4 K x 32(WRITE_FIRST)  |   | R | Port A and B     | 0      | 4      | 
2default:defaulth px? 
?
%s*synth2?
?+---------------+-------------------------------------+------------------------+---+---+------------------------+---+---+------------------+--------+--------+

2default:defaulth px? 
?
%s*synth2?
?Note: The table above is a preliminary report that shows the Block RAMs at the current stage of the synthesis flow. Some Block RAMs may be reimplemented as non Block RAM primitives later in the synthesis flow. Multiple instantiated Block RAMs are reported only once. 
2default:defaulth px? 
j
%s*synth2R
>
Distributed RAM: Preliminary Mapping	Report (see note below)
2default:defaulth px? 
?
%s*synth2?
}+-----------------------+-----------------------------------+-----------+----------------------+---------------------------+
2default:defaulth px? 
?
%s*synth2?
~|Module Name            | RTL Object                        | Inference | Size (Depth x Width) | Primitives                | 
2default:defaulth px? 
?
%s*synth2?
}+-----------------------+-----------------------------------+-----------+----------------------+---------------------------+
2default:defaulth px? 
?
%s*synth2?
~|core/cpu/tlb/entryPool | entryPool_reg                     | Implied   | 64 x 25              | RAM64X1D x 2	RAM64M x 16	 | 
2default:defaulth px? 
?
%s*synth2?
~|core/cpu/tlb/entryPool | pageMaskPool_reg                  | Implied   | 32 x 16              | RAM32M x 6	               | 
2default:defaulth px? 
?
%s*synth2?
~|core/cpu/tlb/entryPool | tlbPool_reg                       | Implied   | 32 x 94              | RAM32M x 16	              | 
2default:defaulth px? 
?
%s*synth2?
~|core                   | dcache/FSM0/cacheLRU/data_reg     | Implied   | 512 x 1              | RAM256X1S x 2	            | 
2default:defaulth px? 
?
%s*synth2?
~|core                   | icache/FSM0/cacheLRU/data_reg     | Implied   | 512 x 1              | RAM256X1S x 2	            | 
2default:defaulth px? 
?
%s*synth2?
~|core                   | icache/FSM0/cacheTag/data_reg     | Implied   | 512 x 36             | RAM128X1D x 144	          | 
2default:defaulth px? 
?
%s*synth2?
~|infrastructure         | PS2_DEFINED.ps2/txBuffer/data_reg | Implied   | 32 x 8               | RAM32M x 2	               | 
2default:defaulth px? 
?
%s*synth2?
~|infrastructure         | PS2_DEFINED.ps2/rxBuffer/data_reg | Implied   | 32 x 8               | RAM32M x 2	               | 
2default:defaulth px? 
?
%s*synth2?
~|mem0                   | cdcFifo/data_reg                  | Implied   | 32 x 8               | RAM32M x 2	               | 
2default:defaulth px? 
?
%s*synth2?
~+-----------------------+-----------------------------------+-----------+----------------------+---------------------------+

2default:defaulth px? 
?
%s*synth2?
?Note: The table above is a preliminary report that shows the Distributed RAMs at the current stage of the synthesis flow. Some Distributed RAMs may be reimplemented as non Distributed RAM primitives later in the synthesis flow. Multiple instantiated RAMs are reported only once.
2default:defaulth px? 
^
%s*synth2F
2
DSP: Preliminary Mapping	Report (see note below)
2default:defaulth px? 
?
%s*synth2?
+------------+----------------+--------+--------+--------+--------+--------+------+------+------+------+-------+------+------+
2default:defaulth px? 
?
%s*synth2?
?|Module Name | DSP Mapping    | A Size | B Size | C Size | D Size | P Size | AREG | BREG | CREG | DREG | ADREG | MREG | PREG | 
2default:defaulth px? 
?
%s*synth2?
+------------+----------------+--------+--------+--------+--------+--------+------+------+------+------+-------+------+------+
2default:defaulth px? 
?
%s*synth2?
?|MulDiv      | A*B            | 18     | 17     | -      | -      | 48     | 0    | 0    | -    | -    | -     | 0    | 0    | 
2default:defaulth px? 
?
%s*synth2?
?|MulDiv      | (PCIN>>17)+A*B | 17     | 17     | -      | -      | 30     | 0    | 0    | -    | -    | -     | 0    | 0    | 
2default:defaulth px? 
?
%s*synth2?
?|MulDiv      | A*B            | 18     | 18     | -      | -      | 48     | 0    | 0    | -    | -    | -     | 0    | 0    | 
2default:defaulth px? 
?
%s*synth2?
?|MulDiv      | (PCIN>>17)+A*B | 18     | 17     | -      | -      | 47     | 0    | 0    | -    | -    | -     | 0    | 0    | 
2default:defaulth px? 
?
%s*synth2?
?|TLBRNG      | A*(B:0xfff1)+1 | 18     | 16     | -      | -      | 18     | 0    | 0    | -    | -    | -     | 0    | 0    | 
2default:defaulth px? 
?
%s*synth2?
?|TLBRNG      | A*B            | 18     | 6      | -      | -      | 24     | 0    | 0    | -    | -    | -     | 0    | 0    | 
2default:defaulth px? 
?
%s*synth2?
?+------------+----------------+--------+--------+--------+--------+--------+------+------+------+------+-------+------+------+

2default:defaulth px? 
?
%s*synth2?
?Note: The table above is a preliminary report that shows the DSPs inferred at the current stage of the synthesis flow. Some DSP may be reimplemented as non DSP primitives later in the synthesis flow. Multiple instantiated DSPs are reported only once.
2default:defaulth px? 
?
%s*synth2?
?---------------------------------------------------------------------------------
Finished ROM, RAM, DSP, Shift Register and Retiming Reporting
2default:defaulth px? 
~
%s*synth2f
R---------------------------------------------------------------------------------
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
R
%s
*synth2:
&Start Applying XDC Timing Constraints
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
?Finished Applying XDC Timing Constraints : Time (s): cpu = 00:01:26 ; elapsed = 00:01:41 . Memory (MB): peak = 2692.453 ; gain = 319.688 ; free physical = 598 ; free virtual = 2073
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
F
%s
*synth2.
Start Timing Optimization
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
?The signal %s is implemented as distributed LUT RAM for the following reason(s): The timing constraints suggest that the chosen mapping will yield better timing results.
4036*oasys28
$"core/dcache/FSM0/cacheTag/data_reg"2default:defaultZ8-5584h px? 
?
?The signal %s is implemented as distributed LUT RAM for the following reason(s): The timing constraints suggest that the chosen mapping will yield better timing results.
4036*oasys28
$"core/dcache/FSM0/cacheTag/data_reg"2default:defaultZ8-5584h px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
?Finished Timing Optimization : Time (s): cpu = 00:01:35 ; elapsed = 00:01:51 . Memory (MB): peak = 2692.453 ; gain = 319.688 ; free physical = 572 ; free virtual = 2049
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s
*synth2?
?---------------------------------------------------------------------------------
Start ROM, RAM, DSP, Shift Register and Retiming Reporting
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
M
%s
*synth25
!
Block RAM: Final Mapping	Report
2default:defaulth p
x
? 
?
%s
*synth2?
?+---------------+-------------------------------------+------------------------+---+---+------------------------+---+---+------------------+--------+--------+
2default:defaulth p
x
? 
?
%s
*synth2?
?|Module Name    | RTL Object                          | PORT A (Depth x Width) | W | R | PORT B (Depth x Width) | W | R | Ports driving FF | RAMB18 | RAMB36 | 
2default:defaulth p
x
? 
?
%s
*synth2?
?+---------------+-------------------------------------+------------------------+---+---+------------------------+---+---+------------------+--------+--------+
2default:defaulth p
x
? 
?
%s
*synth2?
?|core/cpu/BP    | recBuffer_reg                       | 8 K x 2(READ_FIRST)    | W |   | 8 K x 2(WRITE_FIRST)   |   | R | Port A and B     | 1      | 0      | 
2default:defaulth p
x
? 
?
%s
*synth2?
?|infrastructure | UART_DEFINED.uart/txBuffer/data_reg | 256 x 8(NO_CHANGE)     | W |   | 256 x 8(WRITE_FIRST)   |   | R | Port A and B     | 1      | 0      | 
2default:defaulth p
x
? 
?
%s
*synth2?
?|infrastructure | UART_DEFINED.uart/rxBuffer/data_reg | 256 x 8(NO_CHANGE)     | W |   | 256 x 8(WRITE_FIRST)   |   | R | Port A and B     | 1      | 0      | 
2default:defaulth p
x
? 
?
%s
*synth2?
?|vga            | RAM1/data_reg                       | 4 K x 32(WRITE_FIRST)  | W | R | 4 K x 32(WRITE_FIRST)  |   | R | Port A and B     | 0      | 4      | 
2default:defaulth p
x
? 
?
%s
*synth2?
?|sdc            | sd/dataPath/dma/txFifo/data_reg     | 32 x 32(NO_CHANGE)     | W |   | 32 x 32(WRITE_FIRST)   |   | R | Port A and B     | 1      | 0      | 
2default:defaulth p
x
? 
?
%s
*synth2?
?|sdc            | sd/dataPath/dma/rxFifo/data_reg     | 32 x 36(NO_CHANGE)     | W |   | 32 x 36(WRITE_FIRST)   |   | R | Port A and B     | 1      | 0      | 
2default:defaulth p
x
? 
?
%s
*synth2?
?|sdc            | buffer/data_reg                     | 1 K x 32(WRITE_FIRST)  | W | R | 1 K x 32(WRITE_FIRST)  | W | R | Port A and B     | 0      | 1      | 
2default:defaulth p
x
? 
?
%s
*synth2?
?|mem0           | data_reg                            | 4 K x 32(WRITE_FIRST)  | W | R | 4 K x 32(WRITE_FIRST)  |   | R | Port A and B     | 0      | 4      | 
2default:defaulth p
x
? 
?
%s
*synth2?
?+---------------+-------------------------------------+------------------------+---+---+------------------------+---+---+------------------+--------+--------+

2default:defaulth p
x
? 
S
%s
*synth2;
'
Distributed RAM: Final Mapping	Report
2default:defaulth p
x
? 
?
%s
*synth2?
}+-----------------------+-----------------------------------+-----------+----------------------+---------------------------+
2default:defaulth p
x
? 
?
%s
*synth2?
~|Module Name            | RTL Object                        | Inference | Size (Depth x Width) | Primitives                | 
2default:defaulth p
x
? 
?
%s
*synth2?
}+-----------------------+-----------------------------------+-----------+----------------------+---------------------------+
2default:defaulth p
x
? 
?
%s
*synth2?
~|core/cpu/tlb/entryPool | entryPool_reg                     | Implied   | 64 x 25              | RAM64X1D x 2	RAM64M x 16	 | 
2default:defaulth p
x
? 
?
%s
*synth2?
~|core/cpu/tlb/entryPool | pageMaskPool_reg                  | Implied   | 32 x 16              | RAM32M x 6	               | 
2default:defaulth p
x
? 
?
%s
*synth2?
~|core/cpu/tlb/entryPool | tlbPool_reg                       | Implied   | 32 x 94              | RAM32M x 16	              | 
2default:defaulth p
x
? 
?
%s
*synth2?
~|core                   | dcache/FSM0/cacheLRU/data_reg     | Implied   | 512 x 1              | RAM256X1S x 2	            | 
2default:defaulth p
x
? 
?
%s
*synth2?
~|core                   | icache/FSM0/cacheLRU/data_reg     | Implied   | 512 x 1              | RAM256X1S x 2	            | 
2default:defaulth p
x
? 
?
%s
*synth2?
~|core                   | icache/FSM0/cacheTag/data_reg     | Implied   | 512 x 36             | RAM128X1D x 144	          | 
2default:defaulth p
x
? 
?
%s
*synth2?
~|infrastructure         | PS2_DEFINED.ps2/txBuffer/data_reg | Implied   | 32 x 8               | RAM32M x 2	               | 
2default:defaulth p
x
? 
?
%s
*synth2?
~|infrastructure         | PS2_DEFINED.ps2/rxBuffer/data_reg | Implied   | 32 x 8               | RAM32M x 2	               | 
2default:defaulth p
x
? 
?
%s
*synth2?
~|mem0                   | cdcFifo/data_reg                  | Implied   | 32 x 8               | RAM32M x 2	               | 
2default:defaulth p
x
? 
?
%s
*synth2?
~+-----------------------+-----------------------------------+-----------+----------------------+---------------------------+

2default:defaulth p
x
? 
?
%s
*synth2?
?---------------------------------------------------------------------------------
Finished ROM, RAM, DSP, Shift Register and Retiming Reporting
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
E
%s
*synth2-
Start Technology Mapping
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
?The timing for the instance %s (implemented as a %s RAM) might be sub-optimal as no optional output register could be merged into the ram block. Providing additional output register may help in improving timing.
4799*oasys2-
core/cpu/BP/recBuffer_reg2default:default2
Block2default:defaultZ8-7052h px? 
?
?The timing for the instance %s (implemented as a %s RAM) might be sub-optimal as no optional output register could be merged into the ram block. Providing additional output register may help in improving timing.
4799*oasys2F
2infrastructure/UART_DEFINED.uart/txBuffer/data_reg2default:default2
Block2default:defaultZ8-7052h px? 
?
?The timing for the instance %s (implemented as a %s RAM) might be sub-optimal as no optional output register could be merged into the ram block. Providing additional output register may help in improving timing.
4799*oasys2F
2infrastructure/UART_DEFINED.uart/rxBuffer/data_reg2default:default2
Block2default:defaultZ8-7052h px? 
?
?The timing for the instance %s (implemented as a %s RAM) might be sub-optimal as no optional output register could be merged into the ram block. Providing additional output register may help in improving timing.
4799*oasys2'
vga/RAM1/data_reg_02default:default2
Block2default:defaultZ8-7052h px? 
?
?The timing for the instance %s (implemented as a %s RAM) might be sub-optimal as no optional output register could be merged into the ram block. Providing additional output register may help in improving timing.
4799*oasys2'
vga/RAM1/data_reg_02default:default2
Block2default:defaultZ8-7052h px? 
?
?The timing for the instance %s (implemented as a %s RAM) might be sub-optimal as no optional output register could be merged into the ram block. Providing additional output register may help in improving timing.
4799*oasys2'
vga/RAM1/data_reg_12default:default2
Block2default:defaultZ8-7052h px? 
?
?The timing for the instance %s (implemented as a %s RAM) might be sub-optimal as no optional output register could be merged into the ram block. Providing additional output register may help in improving timing.
4799*oasys2'
vga/RAM1/data_reg_12default:default2
Block2default:defaultZ8-7052h px? 
?
?The timing for the instance %s (implemented as a %s RAM) might be sub-optimal as no optional output register could be merged into the ram block. Providing additional output register may help in improving timing.
4799*oasys2'
vga/RAM1/data_reg_22default:default2
Block2default:defaultZ8-7052h px? 
?
?The timing for the instance %s (implemented as a %s RAM) might be sub-optimal as no optional output register could be merged into the ram block. Providing additional output register may help in improving timing.
4799*oasys2'
vga/RAM1/data_reg_22default:default2
Block2default:defaultZ8-7052h px? 
?
?The timing for the instance %s (implemented as a %s RAM) might be sub-optimal as no optional output register could be merged into the ram block. Providing additional output register may help in improving timing.
4799*oasys2'
vga/RAM1/data_reg_32default:default2
Block2default:defaultZ8-7052h px? 
?
?The timing for the instance %s (implemented as a %s RAM) might be sub-optimal as no optional output register could be merged into the ram block. Providing additional output register may help in improving timing.
4799*oasys2'
vga/RAM1/data_reg_32default:default2
Block2default:defaultZ8-7052h px? 
?
?The timing for the instance %s (implemented as a %s RAM) might be sub-optimal as no optional output register could be merged into the ram block. Providing additional output register may help in improving timing.
4799*oasys27
#sdc/sd/dataPath/dma/txFifo/data_reg2default:default2
Block2default:defaultZ8-7052h px? 
?
?The timing for the instance %s (implemented as a %s RAM) might be sub-optimal as no optional output register could be merged into the ram block. Providing additional output register may help in improving timing.
4799*oasys27
#sdc/sd/dataPath/dma/rxFifo/data_reg2default:default2
Block2default:defaultZ8-7052h px? 
?
?The timing for the instance %s (implemented as a %s RAM) might be sub-optimal as no optional output register could be merged into the ram block. Providing additional output register may help in improving timing.
4799*oasys2'
sdc/buffer/data_reg2default:default2
Block2default:defaultZ8-7052h px? 
?
?The timing for the instance %s (implemented as a %s RAM) might be sub-optimal as no optional output register could be merged into the ram block. Providing additional output register may help in improving timing.
4799*oasys2'
sdc/buffer/data_reg2default:default2
Block2default:defaultZ8-7052h px? 
?
?The timing for the instance %s (implemented as a %s RAM) might be sub-optimal as no optional output register could be merged into the ram block. Providing additional output register may help in improving timing.
4799*oasys2#
mem0/data_reg_02default:default2
Block2default:defaultZ8-7052h px? 
?
?The timing for the instance %s (implemented as a %s RAM) might be sub-optimal as no optional output register could be merged into the ram block. Providing additional output register may help in improving timing.
4799*oasys2#
mem0/data_reg_02default:default2
Block2default:defaultZ8-7052h px? 
?
?The timing for the instance %s (implemented as a %s RAM) might be sub-optimal as no optional output register could be merged into the ram block. Providing additional output register may help in improving timing.
4799*oasys2#
mem0/data_reg_12default:default2
Block2default:defaultZ8-7052h px? 
?
?The timing for the instance %s (implemented as a %s RAM) might be sub-optimal as no optional output register could be merged into the ram block. Providing additional output register may help in improving timing.
4799*oasys2#
mem0/data_reg_12default:default2
Block2default:defaultZ8-7052h px? 
?
?The timing for the instance %s (implemented as a %s RAM) might be sub-optimal as no optional output register could be merged into the ram block. Providing additional output register may help in improving timing.
4799*oasys2#
mem0/data_reg_22default:default2
Block2default:defaultZ8-7052h px? 
?
?The timing for the instance %s (implemented as a %s RAM) might be sub-optimal as no optional output register could be merged into the ram block. Providing additional output register may help in improving timing.
4799*oasys2#
mem0/data_reg_22default:default2
Block2default:defaultZ8-7052h px? 
?
?The timing for the instance %s (implemented as a %s RAM) might be sub-optimal as no optional output register could be merged into the ram block. Providing additional output register may help in improving timing.
4799*oasys2#
mem0/data_reg_32default:default2
Block2default:defaultZ8-7052h px? 
?
?The timing for the instance %s (implemented as a %s RAM) might be sub-optimal as no optional output register could be merged into the ram block. Providing additional output register may help in improving timing.
4799*oasys2#
mem0/data_reg_32default:default2
Block2default:defaultZ8-7052h px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
?Finished Technology Mapping : Time (s): cpu = 00:01:45 ; elapsed = 00:02:00 . Memory (MB): peak = 2742.461 ; gain = 369.695 ; free physical = 572 ; free virtual = 2050
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s
*synth2'
Start IO Insertion
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
Q
%s
*synth29
%Start Flattening Before IO Insertion
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
T
%s
*synth2<
(Finished Flattening Before IO Insertion
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
H
%s
*synth20
Start Final Netlist Cleanup
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
.Replicating %s %s to handle IOB=TRUE attribute3508*oasys2
register2default:default2:
&\sdc/sd/dataPath/rx0/sdDat_reg_reg[3] 2default:defaultZ8-4163h px? 
?
.Replicating %s %s to handle IOB=TRUE attribute3508*oasys2
register2default:default2:
&\sdc/sd/dataPath/rx0/sdDat_reg_reg[2] 2default:defaultZ8-4163h px? 
?
.Replicating %s %s to handle IOB=TRUE attribute3508*oasys2
register2default:default2:
&\sdc/sd/dataPath/rx0/sdDat_reg_reg[1] 2default:defaultZ8-4163h px? 
?
.Replicating %s %s to handle IOB=TRUE attribute3508*oasys2
register2default:default28
$\sdc/sd/commandPath/sdCmd_i_reg_reg 2default:defaultZ8-4163h px? 
?
.Replicating %s %s to handle IOB=TRUE attribute3508*oasys2
register2default:default2:
&\sdc/sd/dataPath/rx0/sdDat_reg_reg[0] 2default:defaultZ8-4163h px? 
?
.Replicating %s %s to handle IOB=TRUE attribute3508*oasys2
register2default:default24
 \sdc/sd/commandPath/sdCmd_t_reg 2default:defaultZ8-4163h px? 
?
.Replicating %s %s to handle IOB=TRUE attribute3508*oasys2
register2default:default24
 \sdc/sd/commandPath/sdCmd_o_reg 2default:defaultZ8-4163h px? 
?
.Replicating %s %s to handle IOB=TRUE attribute3508*oasys2
register2default:default23
\sdc/sd/dataPath/tx0/oe_reg[0] 2default:defaultZ8-4163h px? 
?
.Replicating %s %s to handle IOB=TRUE attribute3508*oasys2
register2default:default26
"\sdc/sd/dataPath/tx0/sdDat_reg[0] 2default:defaultZ8-4163h px? 
?
.Replicating %s %s to handle IOB=TRUE attribute3508*oasys2
register2default:default23
\sdc/sd/dataPath/tx0/oe_reg[1] 2default:defaultZ8-4163h px? 
?
.Replicating %s %s to handle IOB=TRUE attribute3508*oasys2
register2default:default26
"\sdc/sd/dataPath/tx0/sdDat_reg[1] 2default:defaultZ8-4163h px? 
?
.Replicating %s %s to handle IOB=TRUE attribute3508*oasys2
register2default:default23
\sdc/sd/dataPath/tx0/oe_reg[2] 2default:defaultZ8-4163h px? 
?
.Replicating %s %s to handle IOB=TRUE attribute3508*oasys2
register2default:default26
"\sdc/sd/dataPath/tx0/sdDat_reg[2] 2default:defaultZ8-4163h px? 
?
.Replicating %s %s to handle IOB=TRUE attribute3508*oasys2
register2default:default23
\sdc/sd/dataPath/tx0/oe_reg[3] 2default:defaultZ8-4163h px? 
?
.Replicating %s %s to handle IOB=TRUE attribute3508*oasys2
register2default:default26
"\sdc/sd/dataPath/tx0/sdDat_reg[3] 2default:defaultZ8-4163h px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
K
%s
*synth23
Finished Final Netlist Cleanup
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
?Finished IO Insertion : Time (s): cpu = 00:01:48 ; elapsed = 00:02:04 . Memory (MB): peak = 2742.461 ; gain = 369.695 ; free physical = 572 ; free virtual = 2050
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
O
%s
*synth27
#Start Renaming Generated Instances
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
?Finished Renaming Generated Instances : Time (s): cpu = 00:01:48 ; elapsed = 00:02:04 . Memory (MB): peak = 2742.461 ; gain = 369.695 ; free physical = 572 ; free virtual = 2050
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
L
%s
*synth24
 Start Rebuilding User Hierarchy
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
?Finished Rebuilding User Hierarchy : Time (s): cpu = 00:01:50 ; elapsed = 00:02:06 . Memory (MB): peak = 2742.461 ; gain = 369.695 ; free physical = 572 ; free virtual = 2049
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
K
%s
*synth23
Start Renaming Generated Ports
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
?Finished Renaming Generated Ports : Time (s): cpu = 00:01:50 ; elapsed = 00:02:06 . Memory (MB): peak = 2742.461 ; gain = 369.695 ; free physical = 572 ; free virtual = 2049
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
M
%s
*synth25
!Start Handling Custom Attributes
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
?Finished Handling Custom Attributes : Time (s): cpu = 00:01:51 ; elapsed = 00:02:06 . Memory (MB): peak = 2742.461 ; gain = 369.695 ; free physical = 572 ; free virtual = 2049
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
J
%s
*synth22
Start Renaming Generated Nets
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
?Finished Renaming Generated Nets : Time (s): cpu = 00:01:51 ; elapsed = 00:02:07 . Memory (MB): peak = 2742.461 ; gain = 369.695 ; free physical = 572 ; free virtual = 2049
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s
*synth2?
?---------------------------------------------------------------------------------
Start ROM, RAM, DSP, Shift Register and Retiming Reporting
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
K
%s
*synth23

Static Shift Register Report:
2default:defaulth p
x
? 
?
%s
*synth2?
?+------------+----------------------------------------+--------+-------+--------------+--------------------+-------------------+--------+---------+
2default:defaulth p
x
? 
?
%s
*synth2?
?|Module Name | RTL Name                               | Length | Width | Reset Signal | Pull out first Reg | Pull out last Reg | SRL16E | SRLC32E | 
2default:defaulth p
x
? 
?
%s
*synth2?
?+------------+----------------------------------------+--------+-------+--------------+--------------------+-------------------+--------+---------+
2default:defaulth p
x
? 
?
%s
*synth2?
?|Top         | vga/U0/HActive_FF_reg[0]               | 20     | 1     | NO           | NO                 | YES               | 0      | 1       | 
2default:defaulth p
x
? 
?
%s
*synth2?
?|Top         | sdc/sd/commandPath/crc/crc_reg[6]      | 3      | 1     | NO           | NO                 | YES               | 1      | 0       | 
2default:defaulth p
x
? 
?
%s
*synth2?
?|Top         | sdc/sd/commandPath/crc/crc_reg[3]      | 4      | 1     | NO           | NO                 | YES               | 1      | 0       | 
2default:defaulth p
x
? 
?
%s
*synth2?
?|Top         | sdc/sd/dataPath/tx0/crc[3]/crc_reg[15] | 5      | 4     | NO           | NO                 | YES               | 4      | 0       | 
2default:defaulth p
x
? 
?
%s
*synth2?
?|Top         | sdc/sd/dataPath/tx0/crc[3]/crc_reg[10] | 7      | 4     | NO           | NO                 | YES               | 4      | 0       | 
2default:defaulth p
x
? 
?
%s
*synth2?
?|Top         | sdc/sd/dataPath/tx0/crc[3]/crc_reg[3]  | 3      | 4     | NO           | NO                 | YES               | 4      | 0       | 
2default:defaulth p
x
? 
?
%s
*synth2?
?|Top         | sdc/sd/dataPath/rx0/crc[3]/crc_reg[15] | 5      | 4     | NO           | NO                 | YES               | 4      | 0       | 
2default:defaulth p
x
? 
?
%s
*synth2?
?|Top         | sdc/sd/dataPath/rx0/crc[3]/crc_reg[10] | 7      | 4     | NO           | NO                 | YES               | 4      | 0       | 
2default:defaulth p
x
? 
?
%s
*synth2?
?|Top         | sdc/sd/dataPath/rx0/crc[3]/crc_reg[3]  | 3      | 4     | NO           | NO                 | YES               | 4      | 0       | 
2default:defaulth p
x
? 
?
%s
*synth2?
?+------------+----------------------------------------+--------+-------+--------------+--------------------+-------------------+--------+---------+

2default:defaulth p
x
? 
?
%s
*synth2?
?---------------------------------------------------------------------------------
Finished ROM, RAM, DSP, Shift Register and Retiming Reporting
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
K
%s
*synth23
Start Writing Synthesis Report
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
A
%s
*synth2)

Report BlackBoxes: 
2default:defaulth p
x
? 
O
%s
*synth27
#+------+--------------+----------+
2default:defaulth p
x
? 
O
%s
*synth27
#|      |BlackBox name |Instances |
2default:defaulth p
x
? 
O
%s
*synth27
#+------+--------------+----------+
2default:defaulth p
x
? 
O
%s
*synth27
#|1     |DDR3          |         1|
2default:defaulth p
x
? 
O
%s
*synth27
#|2     |ClockGen      |         1|
2default:defaulth p
x
? 
O
%s
*synth27
#+------+--------------+----------+
2default:defaulth p
x
? 
A
%s*synth2)

Report Cell Usage: 
2default:defaulth px? 
G
%s*synth2/
+------+----------+------+
2default:defaulth px? 
G
%s*synth2/
|      |Cell      |Count |
2default:defaulth px? 
G
%s*synth2/
+------+----------+------+
2default:defaulth px? 
G
%s*synth2/
|1     |ClockGen  |     1|
2default:defaulth px? 
G
%s*synth2/
|2     |DDR3      |     1|
2default:defaulth px? 
G
%s*synth2/
|3     |BUFG      |     3|
2default:defaulth px? 
G
%s*synth2/
|4     |BUFHCE    |     1|
2default:defaulth px? 
G
%s*synth2/
|5     |CARRY4    |   310|
2default:defaulth px? 
G
%s*synth2/
|6     |DSP48E1   |     6|
2default:defaulth px? 
G
%s*synth2/
|9     |LUT1      |   277|
2default:defaulth px? 
G
%s*synth2/
|10    |LUT2      |   762|
2default:defaulth px? 
G
%s*synth2/
|11    |LUT3      |  2292|
2default:defaulth px? 
G
%s*synth2/
|12    |LUT4      |   983|
2default:defaulth px? 
G
%s*synth2/
|13    |LUT5      |  1751|
2default:defaulth px? 
G
%s*synth2/
|14    |LUT6      |  3189|
2default:defaulth px? 
G
%s*synth2/
|15    |MUXCY     |   192|
2default:defaulth px? 
G
%s*synth2/
|16    |MUXF7     |    56|
2default:defaulth px? 
G
%s*synth2/
|17    |ODDR      |     3|
2default:defaulth px? 
G
%s*synth2/
|19    |RAM128X1D |   144|
2default:defaulth px? 
G
%s*synth2/
|20    |RAM256X1S |    76|
2default:defaulth px? 
G
%s*synth2/
|21    |RAM32M    |    44|
2default:defaulth px? 
G
%s*synth2/
|22    |RAM64M    |    16|
2default:defaulth px? 
G
%s*synth2/
|23    |RAM64X1D  |     2|
2default:defaulth px? 
G
%s*synth2/
|24    |RAMB16_S1 |     1|
2default:defaulth px? 
G
%s*synth2/
|25    |RAMB18E1  |     5|
2default:defaulth px? 
G
%s*synth2/
|28    |RAMB36E1  |    41|
2default:defaulth px? 
G
%s*synth2/
|36    |SRL16E    |    26|
2default:defaulth px? 
G
%s*synth2/
|37    |SRLC32E   |     1|
2default:defaulth px? 
G
%s*synth2/
|38    |FDPE      |     3|
2default:defaulth px? 
G
%s*synth2/
|39    |FDRE      |  7830|
2default:defaulth px? 
G
%s*synth2/
|40    |FDSE      |   143|
2default:defaulth px? 
G
%s*synth2/
|41    |IBUF      |    21|
2default:defaulth px? 
G
%s*synth2/
|42    |IOBUF     |    16|
2default:defaulth px? 
G
%s*synth2/
|43    |OBUF      |    46|
2default:defaulth px? 
G
%s*synth2/
+------+----------+------+
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
?Finished Writing Synthesis Report : Time (s): cpu = 00:01:51 ; elapsed = 00:02:07 . Memory (MB): peak = 2742.461 ; gain = 369.695 ; free physical = 572 ; free virtual = 2049
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
r
%s
*synth2Z
FSynthesis finished with 0 errors, 0 critical warnings and 0 warnings.
2default:defaulth p
x
? 
?
%s
*synth2?
?Synthesis Optimization Runtime : Time (s): cpu = 00:01:46 ; elapsed = 00:02:02 . Memory (MB): peak = 2742.461 ; gain = 224.883 ; free physical = 630 ; free virtual = 2107
2default:defaulth p
x
? 
?
%s
*synth2?
?Synthesis Optimization Complete : Time (s): cpu = 00:01:51 ; elapsed = 00:02:07 . Memory (MB): peak = 2742.469 ; gain = 369.695 ; free physical = 630 ; free virtual = 2107
2default:defaulth p
x
? 
B
 Translating synthesized netlist
350*projectZ1-571h px? 
?
r%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s ; free physical = %s ; free virtual = %s
480*common2.
Netlist sorting complete. 2default:default2
00:00:00.222default:default2
00:00:00.222default:default2
2742.4692default:default2
0.0002default:default2
7022default:default2
21872default:defaultZ17-722h px? 
g
-Analyzing %s Unisim elements for replacement
17*netlist2
9122default:defaultZ29-17h px? 
j
2Unisim Transformation completed in %s CPU seconds
28*netlist2
02default:defaultZ29-28h px? 
K
)Preparing netlist for logic optimization
349*projectZ1-570h px? 
u
)Pushed %s inverter(s) to %s load pin(s).
98*opt2
02default:default2
02default:defaultZ31-138h px? 
?
r%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s ; free physical = %s ; free virtual = %s
480*common2.
Netlist sorting complete. 2default:default2
00:00:002default:default2
00:00:00.012default:default2
2774.4772default:default2
0.0002default:default2
6402default:default2
21252default:defaultZ17-722h px? 
?
!Unisim Transformation Summary:
%s111*project2?
?  A total of 347 instances were transformed.
  (MUXCY,XORCY) => CARRY4: 48 instances
  IOBUF => IOBUF (IBUF, OBUFT): 16 instances
  RAM128X1D => RAM128X1D (MUXF7(x2), RAMD64E(x4)): 144 instances
  RAM256X1S => RAM256X1S (MUXF7(x2), MUXF8, RAMS64E(x4)): 76 instances
  RAM32M => RAM32M (RAMD32(x6), RAMS32(x2)): 44 instances
  RAM64M => RAM64M (RAMD64E(x4)): 16 instances
  RAM64X1D => RAM64X1D (RAMD64E(x2)): 2 instances
  RAMB16_S1 => RAMB18E1: 1 instance 
2default:defaultZ1-111h px? 
U
Releasing license: %s
83*common2
	Synthesis2default:defaultZ17-83h px? 
?
G%s Infos, %s Warnings, %s Critical Warnings and %s Errors encountered.
28*	vivadotcl2
2892default:default2
222default:default2
02default:default2
02default:defaultZ4-41h px? 
^
%s completed successfully
29*	vivadotcl2 
synth_design2default:defaultZ4-42h px? 
?
r%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s ; free physical = %s ; free virtual = %s
480*common2"
synth_design: 2default:default2
00:02:052default:default2
00:02:162default:default2
2774.4772default:default2
409.7152default:default2
8172default:default2
23032default:defaultZ17-722h px? 
?
 The %s '%s' has been generated.
621*common2

checkpoint2default:default2D
0/home/pentium/zjucpu/zjucpu.runs/synth_1/Top.dcp2default:defaultZ17-1381h px? 
?
%s4*runtcl2p
\Executing : report_utilization -file Top_utilization_synth.rpt -pb Top_utilization_synth.pb
2default:defaulth px? 
?
Exiting %s at %s...
206*common2
Vivado2default:default2,
Sun Aug 29 21:25:35 20212default:defaultZ17-206h px? 


End Record