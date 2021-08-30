// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.2 (lin64) Build 3064766 Wed Nov 18 09:12:47 MST 2020
// Date        : Fri Aug 27 22:00:18 2021
// Host        : P3nt1um running 64-bit Ubuntu 20.04.3 LTS
// Command     : write_verilog -force -mode synth_stub -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ ClockGen_stub.v
// Design      : ClockGen
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7k325tffg676-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix(clkUART, clk_100M, clkCPU, clkVGA, clk_in1)
/* synthesis syn_black_box black_box_pad_pin="clkUART,clk_100M,clkCPU,clkVGA,clk_in1" */;
  output clkUART;
  output clk_100M;
  output clkCPU;
  output clkVGA;
  input clk_in1;
endmodule
