
g
Command: %s
1870*	planAhead22
open_checkpoint Top_routed.dcp2default:defaultZ12-2866h px? 
^

Starting %s Task
103*constraints2#
open_checkpoint2default:defaultZ18-103h px? 
?

%s
*constraints2?
?Time (s): cpu = 00:00:00.11 ; elapsed = 00:00:00.06 . Memory (MB): peak = 2373.648 ; gain = 2.969 ; free physical = 137 ; free virtual = 46622default:defaulth px? 
W
Loading part %s157*device2$
xc7k325tffg676-12default:defaultZ21-403h px? 
?
r%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s ; free physical = %s ; free virtual = %s
480*common2.
Netlist sorting complete. 2default:default2
00:00:00.312default:default2
00:00:00.302default:default2
2373.8522default:default2
0.0002default:default2
3402default:default2
49782default:defaultZ17-722h px? 
h
-Analyzing %s Unisim elements for replacement
17*netlist2
14052default:defaultZ29-17h px? 
j
2Unisim Transformation completed in %s CPU seconds
28*netlist2
02default:defaultZ29-28h px? 
x
Netlist was created with %s %s291*project2
Vivado2default:default2
2020.22default:defaultZ1-479h px? 
K
)Preparing netlist for logic optimization
349*projectZ1-570h px? 
L
*Restoring timing data from binary archive.264*timingZ38-478h px? 
F
$Binary timing data restore complete.265*timingZ38-479h px? 
L
*Restoring constraints from binary archive.481*projectZ1-856h px? 
E
#Binary constraint restore complete.478*projectZ1-853h px? 
?
Reading XDEF placement.
206*designutilsZ20-206h px? 
D
Reading placer database...
1602*designutilsZ20-1892h px? 
=
Reading XDEF routing.
207*designutilsZ20-207h px? 
?
r%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s ; free physical = %s ; free virtual = %s
480*common2$
Read XDEF File: 2default:default2
00:00:022default:default2
00:00:022default:default2
2890.3122default:default2
30.3052default:default2
1372default:default2
42992default:defaultZ17-722h px? 
?
7Restored from archive | CPU: %s secs | Memory: %s MB |
1612*designutils2
1.9000002default:default2
	38.9831702default:defaultZ20-1924h px? 
?
r%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s ; free physical = %s ; free virtual = %s
480*common20
Finished XDEF File Restore: 2default:default2
00:00:022default:default2
00:00:022default:default2
2890.3122default:default2
30.3052default:default2
1372default:default2
42992default:defaultZ17-722h px? 
?
r%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s ; free physical = %s ; free virtual = %s
480*common2.
Netlist sorting complete. 2default:default2
00:00:002default:default2
00:00:00.012default:default2
2890.3122default:default2
0.0002default:default2
1402default:default2
43022default:defaultZ17-722h px? 
?
!Unisim Transformation Summary:
%s111*project2?
?  A total of 561 instances were transformed.
  IOBUF => IOBUF (IBUF, OBUFT): 16 instances
  IOBUFDS_DIFF_OUT_DCIEN => IOBUFDS_DIFF_OUT_DCIEN (IBUFDS_IBUFDISABLE_INT(x2), INV, OBUFTDS_DCIEN(x2)): 4 instances
  IOBUF_DCIEN => IOBUF_DCIEN (IBUF_IBUFDISABLE, OBUFT_DCIEN): 32 instances
  OBUFDS => OBUFDS_DUAL_BUF (INV, OBUFDS(x2)): 1 instance 
  RAM128X1D => RAM128X1D (MUXF7(x2), RAMD64E(x4)): 144 instances
  RAM256X1S => RAM256X1S (MUXF7(x2), MUXF8, RAMS64E(x4)): 76 instances
  RAM32M => RAM32M (RAMD32(x6), RAMS32(x2)): 269 instances
  RAM64M => RAM64M (RAMD64E(x4)): 16 instances
  RAM64X1D => RAM64X1D (RAMD64E(x2)): 2 instances
  SRLC32E => SRL16E: 1 instance 
2default:defaultZ1-111h px? 
?
'Checkpoint was created with %s build %s378*project2+
Vivado v2020.2 (64-bit)2default:default2
30647662default:defaultZ1-604h px? 
?
r%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s ; free physical = %s ; free virtual = %s
480*common2%
open_checkpoint: 2default:default2
00:00:242default:default2
00:00:262default:default2
2894.3122default:default2
529.5702default:default2
1402default:default2
43022default:defaultZ17-722h px? 
c
Command: %s
53*	vivadotcl22
write_bitstream -force Top.bit2default:defaultZ4-113h px? 
?
@Attempting to get a license for feature '%s' and/or device '%s'
308*common2"
Implementation2default:default2
xc7k325t2default:defaultZ17-347h px? 
?
0Got license for feature '%s' and/or device '%s'
310*common2"
Implementation2default:default2
xc7k325t2default:defaultZ17-349h px? 
?
%Your %s license expires in %s day(s)
86*common2"
Implementation2default:default2
222default:defaultZ17-86h px? 
x
,Running DRC as a precondition to command %s
1349*	planAhead2#
write_bitstream2default:defaultZ12-1349h px? 
>
Refreshing IP repositories
234*coregenZ19-234h px? 
G
"No user IP repositories specified
1154*coregenZ19-1704h px? 
?
"Loaded Vivado IP repository '%s'.
1332*coregen27
#/tools/Xilinx/Vivado/2020.2/data/ip2default:defaultZ19-2313h px? 
P
Running DRC with %s threads
24*drc2
82default:defaultZ23-27h px? 
?
?Missing CFGBVS and CONFIG_VOLTAGE Design Properties: Neither the CFGBVS nor CONFIG_VOLTAGE voltage property is set in the current_design.  Configuration bank voltage select (CFGBVS) must be set to VCCO or GND, and CONFIG_VOLTAGE must be set to the correct configuration voltage, in order to determine the I/O voltage support for the pins in bank 0.  It is suggested to specify these either using the 'Edit Device Properties' function in the GUI or directly in the XDC file using the following syntax:

 set_property CFGBVS value1 [current_design]
 #where value1 is either VCCO or GND

 set_property CONFIG_VOLTAGE value2 [current_design]
 #where value2 is the voltage provided to configuration bank 0

Refer to the device configuration user guide for more information.%s*DRC2(
 DRC|Pin Planning2default:default8ZCFGBVS-1h px? 
?
fInput pipelining: DSP %s input %s is not pipelined. Pipelining DSP48 input will improve performance.%s*DRC2b
 "L
core/cpu/stageEX/U1/mulRes	core/cpu/stageEX/U1/mulRes2default:default2default:default2l
 "V
"core/cpu/stageEX/U1/mulRes/A[29:0]core/cpu/stageEX/U1/mulRes/A2default:default2default:default2=
 %DRC|Netlist|Instance|Pipeline|DSP48E12default:default8ZDPIP-1h px? 
?
fInput pipelining: DSP %s input %s is not pipelined. Pipelining DSP48 input will improve performance.%s*DRC2b
 "L
core/cpu/stageEX/U1/mulRes	core/cpu/stageEX/U1/mulRes2default:default2default:default2l
 "V
"core/cpu/stageEX/U1/mulRes/B[17:0]core/cpu/stageEX/U1/mulRes/B2default:default2default:default2=
 %DRC|Netlist|Instance|Pipeline|DSP48E12default:default8ZDPIP-1h px? 
?
fInput pipelining: DSP %s input %s is not pipelined. Pipelining DSP48 input will improve performance.%s*DRC2h
 "R
core/cpu/stageEX/U1/mulRes__0	core/cpu/stageEX/U1/mulRes__02default:default2default:default2r
 "\
%core/cpu/stageEX/U1/mulRes__0/A[29:0]core/cpu/stageEX/U1/mulRes__0/A2default:default2default:default2=
 %DRC|Netlist|Instance|Pipeline|DSP48E12default:default8ZDPIP-1h px? 
?
fInput pipelining: DSP %s input %s is not pipelined. Pipelining DSP48 input will improve performance.%s*DRC2h
 "R
core/cpu/stageEX/U1/mulRes__0	core/cpu/stageEX/U1/mulRes__02default:default2default:default2r
 "\
%core/cpu/stageEX/U1/mulRes__0/B[17:0]core/cpu/stageEX/U1/mulRes__0/B2default:default2default:default2=
 %DRC|Netlist|Instance|Pipeline|DSP48E12default:default8ZDPIP-1h px? 
?
fInput pipelining: DSP %s input %s is not pipelined. Pipelining DSP48 input will improve performance.%s*DRC2h
 "R
core/cpu/stageEX/U1/mulRes__1	core/cpu/stageEX/U1/mulRes__12default:default2default:default2r
 "\
%core/cpu/stageEX/U1/mulRes__1/A[29:0]core/cpu/stageEX/U1/mulRes__1/A2default:default2default:default2=
 %DRC|Netlist|Instance|Pipeline|DSP48E12default:default8ZDPIP-1h px? 
?
fInput pipelining: DSP %s input %s is not pipelined. Pipelining DSP48 input will improve performance.%s*DRC2h
 "R
core/cpu/stageEX/U1/mulRes__1	core/cpu/stageEX/U1/mulRes__12default:default2default:default2r
 "\
%core/cpu/stageEX/U1/mulRes__1/B[17:0]core/cpu/stageEX/U1/mulRes__1/B2default:default2default:default2=
 %DRC|Netlist|Instance|Pipeline|DSP48E12default:default8ZDPIP-1h px? 
?
fInput pipelining: DSP %s input %s is not pipelined. Pipelining DSP48 input will improve performance.%s*DRC2h
 "R
core/cpu/stageEX/U1/mulRes__2	core/cpu/stageEX/U1/mulRes__22default:default2default:default2r
 "\
%core/cpu/stageEX/U1/mulRes__2/A[29:0]core/cpu/stageEX/U1/mulRes__2/A2default:default2default:default2=
 %DRC|Netlist|Instance|Pipeline|DSP48E12default:default8ZDPIP-1h px? 
?
fInput pipelining: DSP %s input %s is not pipelined. Pipelining DSP48 input will improve performance.%s*DRC2h
 "R
core/cpu/stageEX/U1/mulRes__2	core/cpu/stageEX/U1/mulRes__22default:default2default:default2r
 "\
%core/cpu/stageEX/U1/mulRes__2/B[17:0]core/cpu/stageEX/U1/mulRes__2/B2default:default2default:default2=
 %DRC|Netlist|Instance|Pipeline|DSP48E12default:default8ZDPIP-1h px? 
?
fInput pipelining: DSP %s input %s is not pipelined. Pipelining DSP48 input will improve performance.%s*DRC2f
 "P
core/cpu/tlb/randomGen/prng0	core/cpu/tlb/randomGen/prng02default:default2default:default2p
 "Z
$core/cpu/tlb/randomGen/prng0/A[29:0]core/cpu/tlb/randomGen/prng0/A2default:default2default:default2=
 %DRC|Netlist|Instance|Pipeline|DSP48E12default:default8ZDPIP-1h px? 
?
fInput pipelining: DSP %s input %s is not pipelined. Pipelining DSP48 input will improve performance.%s*DRC2j
 "T
core/cpu/tlb/randomGen/product	core/cpu/tlb/randomGen/product2default:default2default:default2t
 "^
&core/cpu/tlb/randomGen/product/A[29:0] core/cpu/tlb/randomGen/product/A2default:default2default:default2=
 %DRC|Netlist|Instance|Pipeline|DSP48E12default:default8ZDPIP-1h px? 
?
fInput pipelining: DSP %s input %s is not pipelined. Pipelining DSP48 input will improve performance.%s*DRC2j
 "T
core/cpu/tlb/randomGen/product	core/cpu/tlb/randomGen/product2default:default2default:default2t
 "^
&core/cpu/tlb/randomGen/product/B[17:0] core/cpu/tlb/randomGen/product/B2default:default2default:default2=
 %DRC|Netlist|Instance|Pipeline|DSP48E12default:default8ZDPIP-1h px? 
?
?PREG Output pipelining: DSP %s output %s is not pipelined (PREG=0). Pipelining the DSP48 output will improve performance and often saves power so it is suggested whenever possible to fully pipeline this function.  If this DSP48 function was inferred, it is suggested to describe an additional register stage after this function.  If the DSP48 was instantiated in the design, it is suggested to set the PREG attribute to 1.%s*DRC2b
 "L
core/cpu/stageEX/U1/mulRes	core/cpu/stageEX/U1/mulRes2default:default2default:default2l
 "V
"core/cpu/stageEX/U1/mulRes/P[47:0]core/cpu/stageEX/U1/mulRes/P2default:default2default:default2=
 %DRC|Netlist|Instance|Pipeline|DSP48E12default:default8ZDPOP-1h px? 
?
?PREG Output pipelining: DSP %s output %s is not pipelined (PREG=0). Pipelining the DSP48 output will improve performance and often saves power so it is suggested whenever possible to fully pipeline this function.  If this DSP48 function was inferred, it is suggested to describe an additional register stage after this function.  If the DSP48 was instantiated in the design, it is suggested to set the PREG attribute to 1.%s*DRC2h
 "R
core/cpu/stageEX/U1/mulRes__0	core/cpu/stageEX/U1/mulRes__02default:default2default:default2r
 "\
%core/cpu/stageEX/U1/mulRes__0/P[47:0]core/cpu/stageEX/U1/mulRes__0/P2default:default2default:default2=
 %DRC|Netlist|Instance|Pipeline|DSP48E12default:default8ZDPOP-1h px? 
?
?PREG Output pipelining: DSP %s output %s is not pipelined (PREG=0). Pipelining the DSP48 output will improve performance and often saves power so it is suggested whenever possible to fully pipeline this function.  If this DSP48 function was inferred, it is suggested to describe an additional register stage after this function.  If the DSP48 was instantiated in the design, it is suggested to set the PREG attribute to 1.%s*DRC2h
 "R
core/cpu/stageEX/U1/mulRes__1	core/cpu/stageEX/U1/mulRes__12default:default2default:default2r
 "\
%core/cpu/stageEX/U1/mulRes__1/P[47:0]core/cpu/stageEX/U1/mulRes__1/P2default:default2default:default2=
 %DRC|Netlist|Instance|Pipeline|DSP48E12default:default8ZDPOP-1h px? 
?
?PREG Output pipelining: DSP %s output %s is not pipelined (PREG=0). Pipelining the DSP48 output will improve performance and often saves power so it is suggested whenever possible to fully pipeline this function.  If this DSP48 function was inferred, it is suggested to describe an additional register stage after this function.  If the DSP48 was instantiated in the design, it is suggested to set the PREG attribute to 1.%s*DRC2h
 "R
core/cpu/stageEX/U1/mulRes__2	core/cpu/stageEX/U1/mulRes__22default:default2default:default2r
 "\
%core/cpu/stageEX/U1/mulRes__2/P[47:0]core/cpu/stageEX/U1/mulRes__2/P2default:default2default:default2=
 %DRC|Netlist|Instance|Pipeline|DSP48E12default:default8ZDPOP-1h px? 
?
?PREG Output pipelining: DSP %s output %s is not pipelined (PREG=0). Pipelining the DSP48 output will improve performance and often saves power so it is suggested whenever possible to fully pipeline this function.  If this DSP48 function was inferred, it is suggested to describe an additional register stage after this function.  If the DSP48 was instantiated in the design, it is suggested to set the PREG attribute to 1.%s*DRC2f
 "P
core/cpu/tlb/randomGen/prng0	core/cpu/tlb/randomGen/prng02default:default2default:default2p
 "Z
$core/cpu/tlb/randomGen/prng0/P[47:0]core/cpu/tlb/randomGen/prng0/P2default:default2default:default2=
 %DRC|Netlist|Instance|Pipeline|DSP48E12default:default8ZDPOP-1h px? 
?
?PREG Output pipelining: DSP %s output %s is not pipelined (PREG=0). Pipelining the DSP48 output will improve performance and often saves power so it is suggested whenever possible to fully pipeline this function.  If this DSP48 function was inferred, it is suggested to describe an additional register stage after this function.  If the DSP48 was instantiated in the design, it is suggested to set the PREG attribute to 1.%s*DRC2j
 "T
core/cpu/tlb/randomGen/product	core/cpu/tlb/randomGen/product2default:default2default:default2t
 "^
&core/cpu/tlb/randomGen/product/P[47:0] core/cpu/tlb/randomGen/product/P2default:default2default:default2=
 %DRC|Netlist|Instance|Pipeline|DSP48E12default:default8ZDPOP-1h px? 
?
?MREG Output pipelining: DSP %s multiplier stage %s is not pipelined (MREG=0). Pipelining the multiplier function will improve performance and will save significant power so it is suggested whenever possible to fully pipeline this function.  If this multiplier was inferred, it is suggested to describe an additional register stage after this function.  If there is no registered adder/accumulator following the multiply function, two pipeline stages are suggested to allow both the MREG and PREG registers to be used.  If the DSP48 was instantiated in the design, it is suggested to set both the MREG and PREG attributes to 1 when performing multiply functions.%s*DRC2b
 "L
core/cpu/stageEX/U1/mulRes	core/cpu/stageEX/U1/mulRes2default:default2default:default2l
 "V
"core/cpu/stageEX/U1/mulRes/P[47:0]core/cpu/stageEX/U1/mulRes/P2default:default2default:default2=
 %DRC|Netlist|Instance|Pipeline|DSP48E12default:default8ZDPOP-2h px? 
?
?MREG Output pipelining: DSP %s multiplier stage %s is not pipelined (MREG=0). Pipelining the multiplier function will improve performance and will save significant power so it is suggested whenever possible to fully pipeline this function.  If this multiplier was inferred, it is suggested to describe an additional register stage after this function.  If there is no registered adder/accumulator following the multiply function, two pipeline stages are suggested to allow both the MREG and PREG registers to be used.  If the DSP48 was instantiated in the design, it is suggested to set both the MREG and PREG attributes to 1 when performing multiply functions.%s*DRC2h
 "R
core/cpu/stageEX/U1/mulRes__0	core/cpu/stageEX/U1/mulRes__02default:default2default:default2r
 "\
%core/cpu/stageEX/U1/mulRes__0/P[47:0]core/cpu/stageEX/U1/mulRes__0/P2default:default2default:default2=
 %DRC|Netlist|Instance|Pipeline|DSP48E12default:default8ZDPOP-2h px? 
?
?MREG Output pipelining: DSP %s multiplier stage %s is not pipelined (MREG=0). Pipelining the multiplier function will improve performance and will save significant power so it is suggested whenever possible to fully pipeline this function.  If this multiplier was inferred, it is suggested to describe an additional register stage after this function.  If there is no registered adder/accumulator following the multiply function, two pipeline stages are suggested to allow both the MREG and PREG registers to be used.  If the DSP48 was instantiated in the design, it is suggested to set both the MREG and PREG attributes to 1 when performing multiply functions.%s*DRC2h
 "R
core/cpu/stageEX/U1/mulRes__1	core/cpu/stageEX/U1/mulRes__12default:default2default:default2r
 "\
%core/cpu/stageEX/U1/mulRes__1/P[47:0]core/cpu/stageEX/U1/mulRes__1/P2default:default2default:default2=
 %DRC|Netlist|Instance|Pipeline|DSP48E12default:default8ZDPOP-2h px? 
?
?MREG Output pipelining: DSP %s multiplier stage %s is not pipelined (MREG=0). Pipelining the multiplier function will improve performance and will save significant power so it is suggested whenever possible to fully pipeline this function.  If this multiplier was inferred, it is suggested to describe an additional register stage after this function.  If there is no registered adder/accumulator following the multiply function, two pipeline stages are suggested to allow both the MREG and PREG registers to be used.  If the DSP48 was instantiated in the design, it is suggested to set both the MREG and PREG attributes to 1 when performing multiply functions.%s*DRC2h
 "R
core/cpu/stageEX/U1/mulRes__2	core/cpu/stageEX/U1/mulRes__22default:default2default:default2r
 "\
%core/cpu/stageEX/U1/mulRes__2/P[47:0]core/cpu/stageEX/U1/mulRes__2/P2default:default2default:default2=
 %DRC|Netlist|Instance|Pipeline|DSP48E12default:default8ZDPOP-2h px? 
?
?MREG Output pipelining: DSP %s multiplier stage %s is not pipelined (MREG=0). Pipelining the multiplier function will improve performance and will save significant power so it is suggested whenever possible to fully pipeline this function.  If this multiplier was inferred, it is suggested to describe an additional register stage after this function.  If there is no registered adder/accumulator following the multiply function, two pipeline stages are suggested to allow both the MREG and PREG registers to be used.  If the DSP48 was instantiated in the design, it is suggested to set both the MREG and PREG attributes to 1 when performing multiply functions.%s*DRC2f
 "P
core/cpu/tlb/randomGen/prng0	core/cpu/tlb/randomGen/prng02default:default2default:default2p
 "Z
$core/cpu/tlb/randomGen/prng0/P[47:0]core/cpu/tlb/randomGen/prng0/P2default:default2default:default2=
 %DRC|Netlist|Instance|Pipeline|DSP48E12default:default8ZDPOP-2h px? 
?
?MREG Output pipelining: DSP %s multiplier stage %s is not pipelined (MREG=0). Pipelining the multiplier function will improve performance and will save significant power so it is suggested whenever possible to fully pipeline this function.  If this multiplier was inferred, it is suggested to describe an additional register stage after this function.  If there is no registered adder/accumulator following the multiply function, two pipeline stages are suggested to allow both the MREG and PREG registers to be used.  If the DSP48 was instantiated in the design, it is suggested to set both the MREG and PREG attributes to 1 when performing multiply functions.%s*DRC2j
 "T
core/cpu/tlb/randomGen/product	core/cpu/tlb/randomGen/product2default:default2default:default2t
 "^
&core/cpu/tlb/randomGen/product/P[47:0] core/cpu/tlb/randomGen/product/P2default:default2default:default2=
 %DRC|Netlist|Instance|Pipeline|DSP48E12default:default8ZDPOP-2h px? 
?
?Pblock ranges contradict LOC constraints on logic assigned to the Pblock: Pblock %s's ranges fail to contain LOC constraints on assigned instance %s.%s*DRC2D
 ".
pblock_corepblock_core2default:default2default:default2?
 "?
Eddr3/u_DDR3/u_DDR3_mig/u_ddr3_clk_ibuf/diff_input_clk.u_ibufg_sys_clk	Eddr3/u_DDR3/u_DDR3_mig/u_ddr3_clk_ibuf/diff_input_clk.u_ibufg_sys_clk2default:default2default:default2O
 7DRC|Floorplan|Pblock|Area constraints conflict with LOC2default:default8ZLOCE-1h px? 
?
?Clock output buffering: PLLE2_ADV connectivity violation. The signal %s on the %s pin of %s does not drive the same kind of BUFFER load as the other CLKOUT pins. Routing from the different buffer types will not be phase aligned.%s*DRC2?
 "?
9ddr3/u_DDR3/u_DDR3_mig/u_ddr3_infrastructure/pll_clk3_out9ddr3/u_DDR3/u_DDR3_mig/u_ddr3_infrastructure/pll_clk3_out2default:default2default:default2?
 "?
<ddr3/u_DDR3/u_DDR3_mig/u_ddr3_infrastructure/plle2_i/CLKOUT3<ddr3/u_DDR3/u_DDR3_mig/u_ddr3_infrastructure/plle2_i/CLKOUT32default:default2default:default2?
 "?
4ddr3/u_DDR3/u_DDR3_mig/u_ddr3_infrastructure/plle2_i	4ddr3/u_DDR3/u_DDR3_mig/u_ddr3_infrastructure/plle2_i2default:default2default:default2C
 +DRC|Netlist|Instance|Required Pin|PLLE2_ADV2default:default8Z	REQP-1709h px? 
g
DRC finished with %s
1905*	planAhead2)
0 Errors, 26 Warnings2default:defaultZ12-3199h px? 
i
BPlease refer to the DRC report (report_drc) for more information.
1906*	planAheadZ12-3200h px? 
i
)Running write_bitstream with %s threads.
1750*designutils2
82default:defaultZ20-2272h px? 
?
Loading data files...
1271*designutilsZ12-1165h px? 
>
Loading site data...
1273*designutilsZ12-1167h px? 
?
Loading route data...
1272*designutilsZ12-1166h px? 
?
Processing options...
1362*designutilsZ12-1514h px? 
<
Creating bitmap...
1249*designutilsZ12-1141h px? 
7
Creating bitstream...
7*	bitstreamZ40-7h px? 
Z
Writing bitstream %s...
11*	bitstream2
	./Top.bit2default:defaultZ40-11h px? 
F
Bitgen Completed Successfully.
1606*	planAheadZ12-1842h px? 
Z
Releasing license: %s
83*common2"
Implementation2default:defaultZ17-83h px? 
?
G%s Infos, %s Warnings, %s Critical Warnings and %s Errors encountered.
28*	vivadotcl2
222default:default2
262default:default2
02default:default2
02default:defaultZ4-41h px? 
a
%s completed successfully
29*	vivadotcl2#
write_bitstream2default:defaultZ4-42h px? 
?
r%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s ; free physical = %s ; free virtual = %s
480*common2%
write_bitstream: 2default:default2
00:01:152default:default2
00:00:342default:default2
3625.3012default:default2
730.9882default:default2
5762default:default2
41482default:defaultZ17-722h px? 


End Record