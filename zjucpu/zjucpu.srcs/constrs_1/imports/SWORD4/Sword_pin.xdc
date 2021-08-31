set_property -dict {PACKAGE_PIN V23		IOSTANDARD LVCMOS33} [get_ports {gpio_o[0]}]
set_property -dict {PACKAGE_PIN U25		IOSTANDARD LVCMOS33} [get_ports {gpio_o[1]}]
set_property -dict {PACKAGE_PIN U24		IOSTANDARD LVCMOS33} [get_ports {gpio_o[2]}]
set_property -dict {PACKAGE_PIN V22		IOSTANDARD LVCMOS33} [get_ports {gpio_o[3]}]
set_property -dict {PACKAGE_PIN U22		IOSTANDARD LVCMOS33} [get_ports {gpio_o[4]}]
set_property -dict {PACKAGE_PIN U21		IOSTANDARD LVCMOS33} [get_ports {gpio_o[5]}]


#set_property -dict {PACKAGE_PIN AC18 IOSTANDARD LVDS} [get_ports sysclk_p]
#set_property -dict {IOSTANDARD LVDS} [get_ports sysclk_n]
set_property -dict {PACKAGE_PIN W13 IOSTANDARD LVCMOS18} [get_ports rstn]

# 板载数码管
set_property -dict {PACKAGE_PIN M24 IOSTANDARD LVCMOS33} [get_ports {seg_sout[2]}]
set_property -dict {PACKAGE_PIN L24 IOSTANDARD LVCMOS33} [get_ports {seg_sout[1]}]
set_property -dict {PACKAGE_PIN R18 IOSTANDARD LVCMOS33} [get_ports {seg_sout[0]}]

# 板载16个LED灯
set_property -dict {PACKAGE_PIN N26 IOSTANDARD LVCMOS33} [get_ports {led_sout[1]}]
set_property -dict {PACKAGE_PIN M26 IOSTANDARD LVCMOS33} [get_ports {led_sout[0]}]

set_property -dict {PACKAGE_PIN AA22 IOSTANDARD LVCMOS33} [get_ports {segment[7]}]
set_property -dict {PACKAGE_PIN AC23 IOSTANDARD LVCMOS33} [get_ports {segment[6]}]
set_property -dict {PACKAGE_PIN AC24 IOSTANDARD LVCMOS33} [get_ports {segment[5]}]
set_property -dict {PACKAGE_PIN W20  IOSTANDARD LVCMOS33} [get_ports {segment[4]}]
set_property -dict {PACKAGE_PIN Y21  IOSTANDARD LVCMOS33} [get_ports {segment[3]}]
set_property -dict {PACKAGE_PIN AD23 IOSTANDARD LVCMOS33} [get_ports {segment[2]}]
set_property -dict {PACKAGE_PIN AD24 IOSTANDARD LVCMOS33} [get_ports {segment[1]}]
set_property -dict {PACKAGE_PIN AB22 IOSTANDARD LVCMOS33} [get_ports {segment[0]}]

#set_property -dict {PACKAGE_PIN AD21 IOSTANDARD LVCMOS33} [get_ports {anode[3]}]
#set_property -dict {PACKAGE_PIN AC21 IOSTANDARD LVCMOS33} [get_ports {anode[2]}]
set_property -dict {PACKAGE_PIN AB21 IOSTANDARD LVCMOS33} [get_ports {anode[1]}]
set_property -dict {PACKAGE_PIN AC22 IOSTANDARD LVCMOS33} [get_ports {anode[0]}]
set_property -dict {PACKAGE_PIN AD21 IOSTANDARD LVCMOS33} [get_ports {btnR}]
set_property -dict {PACKAGE_PIN AC21 IOSTANDARD LVCMOS33} [get_ports {btnL}]

set_property -dict {PACKAGE_PIN AF24 IOSTANDARD LVCMOS33} [get_ports {LED[7]}]
set_property -dict {PACKAGE_PIN AE21 IOSTANDARD LVCMOS33} [get_ports {LED[6]}]
set_property -dict {PACKAGE_PIN Y22  IOSTANDARD LVCMOS33} [get_ports {LED[5]}]
set_property -dict {PACKAGE_PIN Y23  IOSTANDARD LVCMOS33} [get_ports {LED[4]}]
set_property -dict {PACKAGE_PIN AA23 IOSTANDARD LVCMOS33} [get_ports {LED[3]}]
set_property -dict {PACKAGE_PIN Y25  IOSTANDARD LVCMOS33} [get_ports {LED[2]}]
set_property -dict {PACKAGE_PIN AB26 IOSTANDARD LVCMOS33} [get_ports {LED[1]}]
set_property -dict {PACKAGE_PIN W23  IOSTANDARD LVCMOS33} [get_ports {LED[0]}]

#set_property -dict {PACKAGE_PIN AF24 IOSTANDARD LVCMOS33} [get_ports buzzer]

# 5x5按钮组
set_property -dict {PACKAGE_PIN V16 IOSTANDARD LVCMOS18 PULLUP true} [get_ports {btnY[4]}]
set_property -dict {PACKAGE_PIN W14 IOSTANDARD LVCMOS18 PULLUP true} [get_ports {btnY[3]}]
set_property -dict {PACKAGE_PIN V14 IOSTANDARD LVCMOS18 PULLUP true} [get_ports {btnY[2]}]
set_property -dict {PACKAGE_PIN V19 IOSTANDARD LVCMOS18 PULLUP true} [get_ports {btnY[1]}]
set_property -dict {PACKAGE_PIN V18 IOSTANDARD LVCMOS18 PULLUP true} [get_ports {btnY[0]}]
set_property -dict {PACKAGE_PIN W16 IOSTANDARD LVCMOS18 PULLUP true} [get_ports {btnX[4]}]
set_property -dict {PACKAGE_PIN W15 IOSTANDARD LVCMOS18 PULLUP true} [get_ports {btnX[3]}]
set_property -dict {PACKAGE_PIN W19 IOSTANDARD LVCMOS18 PULLUP true} [get_ports {btnX[2]}]
set_property -dict {PACKAGE_PIN W18 IOSTANDARD LVCMOS18 PULLUP true} [get_ports {btnX[1]}]
set_property -dict {PACKAGE_PIN V17 IOSTANDARD LVCMOS18 PULLUP true} [get_ports {btnX[0]}]

# 16个开关
set_property -dict {PACKAGE_PIN AA10 IOSTANDARD LVCMOS15} [get_ports {SW[0]}]
set_property -dict {PACKAGE_PIN AB10 IOSTANDARD LVCMOS15} [get_ports {SW[1]}]
set_property -dict {PACKAGE_PIN AA13 IOSTANDARD LVCMOS15} [get_ports {SW[2]}]
set_property -dict {PACKAGE_PIN AA12 IOSTANDARD LVCMOS15} [get_ports {SW[3]}]
set_property -dict {PACKAGE_PIN Y13  IOSTANDARD LVCMOS15} [get_ports {SW[4]}]
set_property -dict {PACKAGE_PIN Y12  IOSTANDARD LVCMOS15} [get_ports {SW[5]}]
set_property -dict {PACKAGE_PIN AD11 IOSTANDARD LVCMOS15} [get_ports {SW[6]}]
set_property -dict {PACKAGE_PIN AD10 IOSTANDARD LVCMOS15} [get_ports {SW[7]}]
set_property -dict {PACKAGE_PIN AE10 IOSTANDARD LVCMOS15} [get_ports {SW[8]}]
set_property -dict {PACKAGE_PIN AE12 IOSTANDARD LVCMOS15} [get_ports {SW[9]}]
set_property -dict {PACKAGE_PIN AF12 IOSTANDARD LVCMOS15} [get_ports {SW[10]}]
set_property -dict {PACKAGE_PIN AE8  IOSTANDARD LVCMOS15} [get_ports {SW[11]}]
set_property -dict {PACKAGE_PIN AF8  IOSTANDARD LVCMOS15} [get_ports {SW[12]}]
set_property -dict {PACKAGE_PIN AE13 IOSTANDARD LVCMOS15} [get_ports {SW[13]}]
set_property -dict {PACKAGE_PIN AF13 IOSTANDARD LVCMOS15} [get_ports {SW[14]}]
set_property -dict {PACKAGE_PIN AF10 IOSTANDARD LVCMOS15} [get_ports {SW[15]}]

set_property -dict {PACKAGE_PIN AF23 IOSTANDARD LVCMOS33 SLEW FAST} [get_ports sdClk]
set_property -dict {PACKAGE_PIN AD25 IOSTANDARD LVCMOS33 SLEW FAST PULLUP true} [get_ports sdCmd]
set_property -dict {PACKAGE_PIN AE25 IOSTANDARD LVCMOS33 SLEW FAST PULLUP true} [get_ports {sdDat[0]}]
set_property -dict {PACKAGE_PIN AE22 IOSTANDARD LVCMOS33 SLEW FAST PULLUP true} [get_ports {sdDat[1]}]
set_property -dict {PACKAGE_PIN AF22 IOSTANDARD LVCMOS33 SLEW FAST PULLUP true} [get_ports {sdDat[2]}]
set_property -dict {PACKAGE_PIN Y20  IOSTANDARD LVCMOS33 SLEW FAST PULLUP true} [get_ports {sdDat[3]}]
set_property -dict {PACKAGE_PIN AE26 IOSTANDARD LVCMOS33} [get_ports sdCd]
set_property -dict {PACKAGE_PIN AE23 IOSTANDARD LVCMOS33} [get_ports sdRst]

set_property -dict {PACKAGE_PIN L25 IOSTANDARD LVCMOS33 PULLUP true} [get_ports uartRx]
set_property -dict {PACKAGE_PIN P24 IOSTANDARD LVCMOS33 DRIVE 16 SLEW FAST PULLUP true} [get_ports uartTx]

set_property -dict {PACKAGE_PIN N18 IOSTANDARD LVCMOS33 PULLUP true} [get_ports ps2Clk]
set_property -dict {PACKAGE_PIN M19 IOSTANDARD LVCMOS33 PULLUP true} [get_ports ps2Dat]

set_property -dict {PACKAGE_PIN N21 IOSTANDARD LVCMOS33 SLEW FAST} [get_ports {VGAColor[0]}]
set_property -dict {PACKAGE_PIN N22 IOSTANDARD LVCMOS33 SLEW FAST} [get_ports {VGAColor[1]}]
set_property -dict {PACKAGE_PIN R21 IOSTANDARD LVCMOS33 SLEW FAST} [get_ports {VGAColor[2]}]
set_property -dict {PACKAGE_PIN P21 IOSTANDARD LVCMOS33 SLEW FAST} [get_ports {VGAColor[3]}]
set_property -dict {PACKAGE_PIN R22 IOSTANDARD LVCMOS33 SLEW FAST} [get_ports {VGAColor[4]}]
set_property -dict {PACKAGE_PIN R23 IOSTANDARD LVCMOS33 SLEW FAST} [get_ports {VGAColor[5]}]
set_property -dict {PACKAGE_PIN T24 IOSTANDARD LVCMOS33 SLEW FAST} [get_ports {VGAColor[6]}]
set_property -dict {PACKAGE_PIN T25 IOSTANDARD LVCMOS33 SLEW FAST} [get_ports {VGAColor[7]}]
set_property -dict {PACKAGE_PIN M22 IOSTANDARD LVCMOS33 SLEW FAST} [get_ports HSync]
set_property -dict {PACKAGE_PIN T20 IOSTANDARD LVCMOS33 SLEW FAST} [get_ports {VGAColor[8]}]
set_property -dict {PACKAGE_PIN R20 IOSTANDARD LVCMOS33 SLEW FAST} [get_ports {VGAColor[9]}]
set_property -dict {PACKAGE_PIN T22 IOSTANDARD LVCMOS33 SLEW FAST} [get_ports {VGAColor[10]}]
set_property -dict {PACKAGE_PIN T23 IOSTANDARD LVCMOS33 SLEW FAST} [get_ports {VGAColor[11]}]
set_property -dict {PACKAGE_PIN M21 IOSTANDARD LVCMOS33 SLEW FAST} [get_ports VSync]

