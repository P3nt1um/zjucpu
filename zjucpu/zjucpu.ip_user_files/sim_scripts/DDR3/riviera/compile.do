vlib work
vlib riviera

vlib riviera/xpm
vlib riviera/xil_defaultlib

vmap xpm riviera/xpm
vmap xil_defaultlib riviera/xil_defaultlib

vlog -work xpm  -sv2k12 \
"/tools/Xilinx/Vivado/2020.2/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \
"/tools/Xilinx/Vivado/2020.2/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv" \

vcom -work xpm -93 \
"/tools/Xilinx/Vivado/2020.2/data/ip/xpm/xpm_VCOMP.vhd" \

vlog -work xil_defaultlib  -v2k5 \
"../../../../zjucpu.gen/sources_1/ip/DDR3/DDR3/user_design/rtl/phy/mig_7series_v4_2_ddr_byte_group_io.v" \
"../../../../zjucpu.gen/sources_1/ip/DDR3/DDR3/user_design/rtl/phy/mig_7series_v4_2_ddr_phy_4lanes.v" \
"../../../../zjucpu.gen/sources_1/ip/DDR3/DDR3/user_design/rtl/phy/mig_7series_v4_2_ddr_phy_init.v" \
"../../../../zjucpu.gen/sources_1/ip/DDR3/DDR3/user_design/rtl/phy/mig_7series_v4_2_poc_pd.v" \
"../../../../zjucpu.gen/sources_1/ip/DDR3/DDR3/user_design/rtl/phy/mig_7series_v4_2_ddr_phy_prbs_rdlvl.v" \
"../../../../zjucpu.gen/sources_1/ip/DDR3/DDR3/user_design/rtl/phy/mig_7series_v4_2_ddr_phy_ocd_samp.v" \
"../../../../zjucpu.gen/sources_1/ip/DDR3/DDR3/user_design/rtl/phy/mig_7series_v4_2_ddr_calib_top.v" \
"../../../../zjucpu.gen/sources_1/ip/DDR3/DDR3/user_design/rtl/phy/mig_7series_v4_2_ddr_if_post_fifo.v" \
"../../../../zjucpu.gen/sources_1/ip/DDR3/DDR3/user_design/rtl/phy/mig_7series_v4_2_poc_tap_base.v" \
"../../../../zjucpu.gen/sources_1/ip/DDR3/DDR3/user_design/rtl/phy/mig_7series_v4_2_ddr_of_pre_fifo.v" \
"../../../../zjucpu.gen/sources_1/ip/DDR3/DDR3/user_design/rtl/phy/mig_7series_v4_2_ddr_phy_ocd_cntlr.v" \
"../../../../zjucpu.gen/sources_1/ip/DDR3/DDR3/user_design/rtl/phy/mig_7series_v4_2_ddr_phy_rdlvl.v" \
"../../../../zjucpu.gen/sources_1/ip/DDR3/DDR3/user_design/rtl/phy/mig_7series_v4_2_ddr_phy_ocd_po_cntlr.v" \
"../../../../zjucpu.gen/sources_1/ip/DDR3/DDR3/user_design/rtl/phy/mig_7series_v4_2_ddr_phy_ocd_lim.v" \
"../../../../zjucpu.gen/sources_1/ip/DDR3/DDR3/user_design/rtl/phy/mig_7series_v4_2_ddr_phy_wrcal.v" \
"../../../../zjucpu.gen/sources_1/ip/DDR3/DDR3/user_design/rtl/phy/mig_7series_v4_2_ddr_phy_ocd_edge.v" \
"../../../../zjucpu.gen/sources_1/ip/DDR3/DDR3/user_design/rtl/phy/mig_7series_v4_2_ddr_phy_ck_addr_cmd_delay.v" \
"../../../../zjucpu.gen/sources_1/ip/DDR3/DDR3/user_design/rtl/phy/mig_7series_v4_2_poc_edge_store.v" \
"../../../../zjucpu.gen/sources_1/ip/DDR3/DDR3/user_design/rtl/phy/mig_7series_v4_2_ddr_phy_dqs_found_cal_hr.v" \
"../../../../zjucpu.gen/sources_1/ip/DDR3/DDR3/user_design/rtl/phy/mig_7series_v4_2_poc_top.v" \
"../../../../zjucpu.gen/sources_1/ip/DDR3/DDR3/user_design/rtl/phy/mig_7series_v4_2_ddr_skip_calib_tap.v" \
"../../../../zjucpu.gen/sources_1/ip/DDR3/DDR3/user_design/rtl/phy/mig_7series_v4_2_ddr_phy_ocd_mux.v" \
"../../../../zjucpu.gen/sources_1/ip/DDR3/DDR3/user_design/rtl/phy/mig_7series_v4_2_ddr_phy_tempmon.v" \
"../../../../zjucpu.gen/sources_1/ip/DDR3/DDR3/user_design/rtl/phy/mig_7series_v4_2_ddr_phy_oclkdelay_cal.v" \
"../../../../zjucpu.gen/sources_1/ip/DDR3/DDR3/user_design/rtl/phy/mig_7series_v4_2_ddr_phy_dqs_found_cal.v" \
"../../../../zjucpu.gen/sources_1/ip/DDR3/DDR3/user_design/rtl/phy/mig_7series_v4_2_ddr_mc_phy_wrapper.v" \
"../../../../zjucpu.gen/sources_1/ip/DDR3/DDR3/user_design/rtl/phy/mig_7series_v4_2_ddr_phy_top.v" \
"../../../../zjucpu.gen/sources_1/ip/DDR3/DDR3/user_design/rtl/phy/mig_7series_v4_2_poc_cc.v" \
"../../../../zjucpu.gen/sources_1/ip/DDR3/DDR3/user_design/rtl/phy/mig_7series_v4_2_poc_meta.v" \
"../../../../zjucpu.gen/sources_1/ip/DDR3/DDR3/user_design/rtl/phy/mig_7series_v4_2_ddr_phy_ocd_data.v" \
"../../../../zjucpu.gen/sources_1/ip/DDR3/DDR3/user_design/rtl/phy/mig_7series_v4_2_ddr_phy_wrlvl_off_delay.v" \
"../../../../zjucpu.gen/sources_1/ip/DDR3/DDR3/user_design/rtl/phy/mig_7series_v4_2_ddr_byte_lane.v" \
"../../../../zjucpu.gen/sources_1/ip/DDR3/DDR3/user_design/rtl/phy/mig_7series_v4_2_ddr_prbs_gen.v" \
"../../../../zjucpu.gen/sources_1/ip/DDR3/DDR3/user_design/rtl/phy/mig_7series_v4_2_ddr_mc_phy.v" \
"../../../../zjucpu.gen/sources_1/ip/DDR3/DDR3/user_design/rtl/phy/mig_7series_v4_2_ddr_phy_wrlvl.v" \
"../../../../zjucpu.gen/sources_1/ip/DDR3/DDR3/user_design/rtl/ecc/mig_7series_v4_2_ecc_merge_enc.v" \
"../../../../zjucpu.gen/sources_1/ip/DDR3/DDR3/user_design/rtl/ecc/mig_7series_v4_2_ecc_dec_fix.v" \
"../../../../zjucpu.gen/sources_1/ip/DDR3/DDR3/user_design/rtl/ecc/mig_7series_v4_2_fi_xor.v" \
"../../../../zjucpu.gen/sources_1/ip/DDR3/DDR3/user_design/rtl/ecc/mig_7series_v4_2_ecc_gen.v" \
"../../../../zjucpu.gen/sources_1/ip/DDR3/DDR3/user_design/rtl/ecc/mig_7series_v4_2_ecc_buf.v" \
"../../../../zjucpu.gen/sources_1/ip/DDR3/DDR3/user_design/rtl/controller/mig_7series_v4_2_round_robin_arb.v" \
"../../../../zjucpu.gen/sources_1/ip/DDR3/DDR3/user_design/rtl/controller/mig_7series_v4_2_bank_cntrl.v" \
"../../../../zjucpu.gen/sources_1/ip/DDR3/DDR3/user_design/rtl/controller/mig_7series_v4_2_col_mach.v" \
"../../../../zjucpu.gen/sources_1/ip/DDR3/DDR3/user_design/rtl/controller/mig_7series_v4_2_mc.v" \
"../../../../zjucpu.gen/sources_1/ip/DDR3/DDR3/user_design/rtl/controller/mig_7series_v4_2_bank_common.v" \
"../../../../zjucpu.gen/sources_1/ip/DDR3/DDR3/user_design/rtl/controller/mig_7series_v4_2_bank_state.v" \
"../../../../zjucpu.gen/sources_1/ip/DDR3/DDR3/user_design/rtl/controller/mig_7series_v4_2_bank_mach.v" \
"../../../../zjucpu.gen/sources_1/ip/DDR3/DDR3/user_design/rtl/controller/mig_7series_v4_2_rank_common.v" \
"../../../../zjucpu.gen/sources_1/ip/DDR3/DDR3/user_design/rtl/controller/mig_7series_v4_2_arb_row_col.v" \
"../../../../zjucpu.gen/sources_1/ip/DDR3/DDR3/user_design/rtl/controller/mig_7series_v4_2_bank_queue.v" \
"../../../../zjucpu.gen/sources_1/ip/DDR3/DDR3/user_design/rtl/controller/mig_7series_v4_2_bank_compare.v" \
"../../../../zjucpu.gen/sources_1/ip/DDR3/DDR3/user_design/rtl/controller/mig_7series_v4_2_rank_mach.v" \
"../../../../zjucpu.gen/sources_1/ip/DDR3/DDR3/user_design/rtl/controller/mig_7series_v4_2_arb_mux.v" \
"../../../../zjucpu.gen/sources_1/ip/DDR3/DDR3/user_design/rtl/controller/mig_7series_v4_2_rank_cntrl.v" \
"../../../../zjucpu.gen/sources_1/ip/DDR3/DDR3/user_design/rtl/controller/mig_7series_v4_2_arb_select.v" \
"../../../../zjucpu.gen/sources_1/ip/DDR3/DDR3/user_design/rtl/ui/mig_7series_v4_2_ui_wr_data.v" \
"../../../../zjucpu.gen/sources_1/ip/DDR3/DDR3/user_design/rtl/ui/mig_7series_v4_2_ui_cmd.v" \
"../../../../zjucpu.gen/sources_1/ip/DDR3/DDR3/user_design/rtl/ui/mig_7series_v4_2_ui_top.v" \
"../../../../zjucpu.gen/sources_1/ip/DDR3/DDR3/user_design/rtl/ui/mig_7series_v4_2_ui_rd_data.v" \
"../../../../zjucpu.gen/sources_1/ip/DDR3/DDR3/user_design/rtl/clocking/mig_7series_v4_2_infrastructure.v" \
"../../../../zjucpu.gen/sources_1/ip/DDR3/DDR3/user_design/rtl/clocking/mig_7series_v4_2_clk_ibuf.v" \
"../../../../zjucpu.gen/sources_1/ip/DDR3/DDR3/user_design/rtl/clocking/mig_7series_v4_2_iodelay_ctrl.v" \
"../../../../zjucpu.gen/sources_1/ip/DDR3/DDR3/user_design/rtl/clocking/mig_7series_v4_2_tempmon.v" \
"../../../../zjucpu.gen/sources_1/ip/DDR3/DDR3/user_design/rtl/ip_top/mig_7series_v4_2_memc_ui_top_std.v" \
"../../../../zjucpu.gen/sources_1/ip/DDR3/DDR3/user_design/rtl/ip_top/mig_7series_v4_2_mem_intfc.v" \
"../../../../zjucpu.gen/sources_1/ip/DDR3/DDR3/user_design/rtl/DDR3_mig_sim.v" \
"../../../../zjucpu.gen/sources_1/ip/DDR3/DDR3/user_design/rtl/DDR3.v" \

vlog -work xil_defaultlib \
"glbl.v"

