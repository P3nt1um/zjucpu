-- Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2020.2 (lin64) Build 3064766 Wed Nov 18 09:12:47 MST 2020
-- Date        : Fri Aug 27 22:00:19 2021
-- Host        : P3nt1um running 64-bit Ubuntu 20.04.3 LTS
-- Command     : write_vhdl -force -mode synth_stub /home/pentium/zjucpu/zjucpu.runs/ClockGen_synth_1/ClockGen_stub.vhdl
-- Design      : ClockGen
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7k325tffg676-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity ClockGen is
  Port ( 
    clkUART : out STD_LOGIC;
    clk_100M : out STD_LOGIC;
    clkCPU : out STD_LOGIC;
    clkVGA : out STD_LOGIC;
    clk_in1 : in STD_LOGIC
  );

end ClockGen;

architecture stub of ClockGen is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "clkUART,clk_100M,clkCPU,clkVGA,clk_in1";
begin
end;
