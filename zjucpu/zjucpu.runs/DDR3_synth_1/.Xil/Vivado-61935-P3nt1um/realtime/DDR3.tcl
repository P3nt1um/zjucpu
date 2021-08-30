# 
# Synthesis run script generated by Vivado
# 

namespace eval rt {
    variable rc
}
set rt::rc [catch {
  uplevel #0 {
    set ::env(BUILTIN_SYNTH) true
    source $::env(HRT_TCL_PATH)/rtSynthPrep.tcl
    rt::HARTNDb_startJobStats
    set rt::cmdEcho 0
    rt::set_parameter writeXmsg true
    rt::set_parameter enableParallelHelperSpawn true
    set ::env(RT_TMP) "./.Xil/Vivado-61935-P3nt1um/realtime/tmp"
    if { [ info exists ::env(RT_TMP) ] } {
      file mkdir $::env(RT_TMP)
    }

    rt::delete_design

    rt::set_parameter datapathDensePacking false
    set rt::partid xc7k325tffg676-1
     file delete -force synth_hints.os

    set rt::multiChipSynthesisFlow false
    source $::env(SYNTH_COMMON)/common_vhdl.tcl
    set rt::defaultWorkLibName xil_defaultlib

    # Skipping read_* RTL commands because this is post-elab optimize flow
    set rt::useElabCache true
    if {$rt::useElabCache == false} {
      rt::read_verilog -sv {
      /tools/Xilinx/Vivado/2020.2/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv
      /tools/Xilinx/Vivado/2020.2/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv
    }
      rt::read_verilog {
      /home/pentium/zjucpu/zjucpu.gen/sources_1/ip/DDR3/DDR3/user_design/rtl/phy/mig_7series_v4_2_ddr_byte_group_io.v
      /home/pentium/zjucpu/zjucpu.gen/sources_1/ip/DDR3/DDR3/user_design/rtl/phy/mig_7series_v4_2_ddr_phy_4lanes.v
      /home/pentium/zjucpu/zjucpu.gen/sources_1/ip/DDR3/DDR3/user_design/rtl/phy/mig_7series_v4_2_ddr_phy_init.v
      /home/pentium/zjucpu/zjucpu.gen/sources_1/ip/DDR3/DDR3/user_design/rtl/phy/mig_7series_v4_2_poc_pd.v
      /home/pentium/zjucpu/zjucpu.gen/sources_1/ip/DDR3/DDR3/user_design/rtl/phy/mig_7series_v4_2_ddr_phy_prbs_rdlvl.v
      /home/pentium/zjucpu/zjucpu.gen/sources_1/ip/DDR3/DDR3/user_design/rtl/phy/mig_7series_v4_2_ddr_phy_ocd_samp.v
      /home/pentium/zjucpu/zjucpu.gen/sources_1/ip/DDR3/DDR3/user_design/rtl/phy/mig_7series_v4_2_ddr_calib_top.v
      /home/pentium/zjucpu/zjucpu.gen/sources_1/ip/DDR3/DDR3/user_design/rtl/phy/mig_7series_v4_2_ddr_if_post_fifo.v
      /home/pentium/zjucpu/zjucpu.gen/sources_1/ip/DDR3/DDR3/user_design/rtl/phy/mig_7series_v4_2_poc_tap_base.v
      /home/pentium/zjucpu/zjucpu.gen/sources_1/ip/DDR3/DDR3/user_design/rtl/phy/mig_7series_v4_2_ddr_of_pre_fifo.v
      /home/pentium/zjucpu/zjucpu.gen/sources_1/ip/DDR3/DDR3/user_design/rtl/phy/mig_7series_v4_2_ddr_phy_ocd_cntlr.v
      /home/pentium/zjucpu/zjucpu.gen/sources_1/ip/DDR3/DDR3/user_design/rtl/phy/mig_7series_v4_2_ddr_phy_rdlvl.v
      /home/pentium/zjucpu/zjucpu.gen/sources_1/ip/DDR3/DDR3/user_design/rtl/phy/mig_7series_v4_2_ddr_phy_ocd_po_cntlr.v
      /home/pentium/zjucpu/zjucpu.gen/sources_1/ip/DDR3/DDR3/user_design/rtl/phy/mig_7series_v4_2_ddr_phy_ocd_lim.v
      /home/pentium/zjucpu/zjucpu.gen/sources_1/ip/DDR3/DDR3/user_design/rtl/phy/mig_7series_v4_2_ddr_phy_wrcal.v
      /home/pentium/zjucpu/zjucpu.gen/sources_1/ip/DDR3/DDR3/user_design/rtl/phy/mig_7series_v4_2_ddr_phy_ocd_edge.v
      /home/pentium/zjucpu/zjucpu.gen/sources_1/ip/DDR3/DDR3/user_design/rtl/phy/mig_7series_v4_2_ddr_phy_ck_addr_cmd_delay.v
      /home/pentium/zjucpu/zjucpu.gen/sources_1/ip/DDR3/DDR3/user_design/rtl/phy/mig_7series_v4_2_poc_edge_store.v
      /home/pentium/zjucpu/zjucpu.gen/sources_1/ip/DDR3/DDR3/user_design/rtl/phy/mig_7series_v4_2_ddr_phy_dqs_found_cal_hr.v
      /home/pentium/zjucpu/zjucpu.gen/sources_1/ip/DDR3/DDR3/user_design/rtl/phy/mig_7series_v4_2_poc_top.v
      /home/pentium/zjucpu/zjucpu.gen/sources_1/ip/DDR3/DDR3/user_design/rtl/phy/mig_7series_v4_2_ddr_skip_calib_tap.v
      /home/pentium/zjucpu/zjucpu.gen/sources_1/ip/DDR3/DDR3/user_design/rtl/phy/mig_7series_v4_2_ddr_phy_ocd_mux.v
      /home/pentium/zjucpu/zjucpu.gen/sources_1/ip/DDR3/DDR3/user_design/rtl/phy/mig_7series_v4_2_ddr_phy_tempmon.v
      /home/pentium/zjucpu/zjucpu.gen/sources_1/ip/DDR3/DDR3/user_design/rtl/phy/mig_7series_v4_2_ddr_phy_oclkdelay_cal.v
      /home/pentium/zjucpu/zjucpu.gen/sources_1/ip/DDR3/DDR3/user_design/rtl/phy/mig_7series_v4_2_ddr_phy_dqs_found_cal.v
      /home/pentium/zjucpu/zjucpu.gen/sources_1/ip/DDR3/DDR3/user_design/rtl/phy/mig_7series_v4_2_ddr_mc_phy_wrapper.v
      /home/pentium/zjucpu/zjucpu.gen/sources_1/ip/DDR3/DDR3/user_design/rtl/phy/mig_7series_v4_2_ddr_phy_top.v
      /home/pentium/zjucpu/zjucpu.gen/sources_1/ip/DDR3/DDR3/user_design/rtl/phy/mig_7series_v4_2_poc_cc.v
      /home/pentium/zjucpu/zjucpu.gen/sources_1/ip/DDR3/DDR3/user_design/rtl/phy/mig_7series_v4_2_poc_meta.v
      /home/pentium/zjucpu/zjucpu.gen/sources_1/ip/DDR3/DDR3/user_design/rtl/phy/mig_7series_v4_2_ddr_phy_ocd_data.v
      /home/pentium/zjucpu/zjucpu.gen/sources_1/ip/DDR3/DDR3/user_design/rtl/phy/mig_7series_v4_2_ddr_phy_wrlvl_off_delay.v
      /home/pentium/zjucpu/zjucpu.gen/sources_1/ip/DDR3/DDR3/user_design/rtl/phy/mig_7series_v4_2_ddr_byte_lane.v
      /home/pentium/zjucpu/zjucpu.gen/sources_1/ip/DDR3/DDR3/user_design/rtl/phy/mig_7series_v4_2_ddr_prbs_gen.v
      /home/pentium/zjucpu/zjucpu.gen/sources_1/ip/DDR3/DDR3/user_design/rtl/phy/mig_7series_v4_2_ddr_mc_phy.v
      /home/pentium/zjucpu/zjucpu.gen/sources_1/ip/DDR3/DDR3/user_design/rtl/phy/mig_7series_v4_2_ddr_phy_wrlvl.v
      /home/pentium/zjucpu/zjucpu.gen/sources_1/ip/DDR3/DDR3/user_design/rtl/ecc/mig_7series_v4_2_ecc_merge_enc.v
      /home/pentium/zjucpu/zjucpu.gen/sources_1/ip/DDR3/DDR3/user_design/rtl/ecc/mig_7series_v4_2_ecc_dec_fix.v
      /home/pentium/zjucpu/zjucpu.gen/sources_1/ip/DDR3/DDR3/user_design/rtl/ecc/mig_7series_v4_2_fi_xor.v
      /home/pentium/zjucpu/zjucpu.gen/sources_1/ip/DDR3/DDR3/user_design/rtl/ecc/mig_7series_v4_2_ecc_gen.v
      /home/pentium/zjucpu/zjucpu.gen/sources_1/ip/DDR3/DDR3/user_design/rtl/ecc/mig_7series_v4_2_ecc_buf.v
      /home/pentium/zjucpu/zjucpu.gen/sources_1/ip/DDR3/DDR3/user_design/rtl/controller/mig_7series_v4_2_round_robin_arb.v
      /home/pentium/zjucpu/zjucpu.gen/sources_1/ip/DDR3/DDR3/user_design/rtl/controller/mig_7series_v4_2_bank_cntrl.v
      /home/pentium/zjucpu/zjucpu.gen/sources_1/ip/DDR3/DDR3/user_design/rtl/controller/mig_7series_v4_2_col_mach.v
      /home/pentium/zjucpu/zjucpu.gen/sources_1/ip/DDR3/DDR3/user_design/rtl/controller/mig_7series_v4_2_mc.v
      /home/pentium/zjucpu/zjucpu.gen/sources_1/ip/DDR3/DDR3/user_design/rtl/controller/mig_7series_v4_2_bank_common.v
      /home/pentium/zjucpu/zjucpu.gen/sources_1/ip/DDR3/DDR3/user_design/rtl/controller/mig_7series_v4_2_bank_state.v
      /home/pentium/zjucpu/zjucpu.gen/sources_1/ip/DDR3/DDR3/user_design/rtl/controller/mig_7series_v4_2_bank_mach.v
      /home/pentium/zjucpu/zjucpu.gen/sources_1/ip/DDR3/DDR3/user_design/rtl/controller/mig_7series_v4_2_rank_common.v
      /home/pentium/zjucpu/zjucpu.gen/sources_1/ip/DDR3/DDR3/user_design/rtl/controller/mig_7series_v4_2_arb_row_col.v
      /home/pentium/zjucpu/zjucpu.gen/sources_1/ip/DDR3/DDR3/user_design/rtl/controller/mig_7series_v4_2_bank_queue.v
      /home/pentium/zjucpu/zjucpu.gen/sources_1/ip/DDR3/DDR3/user_design/rtl/controller/mig_7series_v4_2_bank_compare.v
      /home/pentium/zjucpu/zjucpu.gen/sources_1/ip/DDR3/DDR3/user_design/rtl/controller/mig_7series_v4_2_rank_mach.v
      /home/pentium/zjucpu/zjucpu.gen/sources_1/ip/DDR3/DDR3/user_design/rtl/controller/mig_7series_v4_2_arb_mux.v
      /home/pentium/zjucpu/zjucpu.gen/sources_1/ip/DDR3/DDR3/user_design/rtl/controller/mig_7series_v4_2_rank_cntrl.v
      /home/pentium/zjucpu/zjucpu.gen/sources_1/ip/DDR3/DDR3/user_design/rtl/controller/mig_7series_v4_2_arb_select.v
      /home/pentium/zjucpu/zjucpu.gen/sources_1/ip/DDR3/DDR3/user_design/rtl/ui/mig_7series_v4_2_ui_wr_data.v
      /home/pentium/zjucpu/zjucpu.gen/sources_1/ip/DDR3/DDR3/user_design/rtl/ui/mig_7series_v4_2_ui_cmd.v
      /home/pentium/zjucpu/zjucpu.gen/sources_1/ip/DDR3/DDR3/user_design/rtl/ui/mig_7series_v4_2_ui_top.v
      /home/pentium/zjucpu/zjucpu.gen/sources_1/ip/DDR3/DDR3/user_design/rtl/ui/mig_7series_v4_2_ui_rd_data.v
      /home/pentium/zjucpu/zjucpu.gen/sources_1/ip/DDR3/DDR3/user_design/rtl/clocking/mig_7series_v4_2_infrastructure.v
      /home/pentium/zjucpu/zjucpu.gen/sources_1/ip/DDR3/DDR3/user_design/rtl/clocking/mig_7series_v4_2_clk_ibuf.v
      /home/pentium/zjucpu/zjucpu.gen/sources_1/ip/DDR3/DDR3/user_design/rtl/clocking/mig_7series_v4_2_iodelay_ctrl.v
      /home/pentium/zjucpu/zjucpu.gen/sources_1/ip/DDR3/DDR3/user_design/rtl/clocking/mig_7series_v4_2_tempmon.v
      /home/pentium/zjucpu/zjucpu.gen/sources_1/ip/DDR3/DDR3/user_design/rtl/ip_top/mig_7series_v4_2_memc_ui_top_std.v
      /home/pentium/zjucpu/zjucpu.gen/sources_1/ip/DDR3/DDR3/user_design/rtl/ip_top/mig_7series_v4_2_mem_intfc.v
      /home/pentium/zjucpu/zjucpu.gen/sources_1/ip/DDR3/DDR3/user_design/rtl/DDR3.v
      /home/pentium/zjucpu/zjucpu.gen/sources_1/ip/DDR3/DDR3/user_design/rtl/DDR3_mig.v
    }
      rt::read_vhdl -lib xpm /tools/Xilinx/Vivado/2020.2/data/ip/xpm/xpm_VCOMP.vhd
      rt::filesetChecksum
    }
    rt::set_parameter usePostFindUniquification true
    set rt::SDCFileList ./.Xil/Vivado-61935-P3nt1um/realtime/DDR3_synth.xdc
    rt::sdcChecksum
    set rt::top DDR3
    rt::set_parameter enableIncremental true
    rt::set_parameter markDebugPreservationLevel "enable"
    set rt::ioInsertion false
    set rt::reportTiming false
    rt::set_parameter elaborateOnly false
    rt::set_parameter elaborateRtl false
    rt::set_parameter eliminateRedundantBitOperator true
    rt::set_parameter elaborateRtlOnlyFlow false
    rt::set_parameter writeBlackboxInterface true
    rt::set_parameter ramStyle auto
    rt::set_parameter merge_flipflops true
# MODE: out_of_context
    rt::set_parameter webTalkPath {}
    rt::set_parameter synthDebugLog false
    rt::set_parameter printModuleName false
    rt::set_parameter enableSplitFlowPath "./.Xil/Vivado-61935-P3nt1um/"
    set ok_to_delete_rt_tmp true 
    if { [rt::get_parameter parallelDebug] } { 
       set ok_to_delete_rt_tmp false 
    } 
    if {$rt::useElabCache == false} {
        set oldMIITMVal [rt::get_parameter maxInputIncreaseToMerge]; rt::set_parameter maxInputIncreaseToMerge 1000
        set oldCDPCRL [rt::get_parameter createDfgPartConstrRecurLimit]; rt::set_parameter createDfgPartConstrRecurLimit 1
        $rt::db readXRFFile
      rt::run_synthesis -module $rt::top
        rt::set_parameter maxInputIncreaseToMerge $oldMIITMVal
        rt::set_parameter createDfgPartConstrRecurLimit $oldCDPCRL
    }

    set rt::flowresult [ source $::env(SYNTH_COMMON)/flow.tcl ]
    rt::HARTNDb_stopJobStats
    rt::HARTNDb_reportJobStats "Synthesis Optimization Runtime"
    rt::HARTNDb_stopSystemStats
    if { $rt::flowresult == 1 } { return -code error }


  set hsKey [rt::get_parameter helper_shm_key] 
  if { $hsKey != "" && [info exists ::env(BUILTIN_SYNTH)] && [rt::get_parameter enableParallelHelperSpawn] } { 
     $rt::db killSynthHelper $hsKey
  } 
  rt::set_parameter helper_shm_key "" 
    if { [ info exists ::env(RT_TMP) ] } {
      if { [info exists ok_to_delete_rt_tmp] && $ok_to_delete_rt_tmp } { 
        file delete -force $::env(RT_TMP)
      }
    }

    source $::env(HRT_TCL_PATH)/rtSynthCleanup.tcl
  } ; #end uplevel
} rt::result]

if { $rt::rc } {
  $rt::db resetHdlParse
  set hsKey [rt::get_parameter helper_shm_key] 
  if { $hsKey != "" && [info exists ::env(BUILTIN_SYNTH)] && [rt::get_parameter enableParallelHelperSpawn] } { 
     $rt::db killSynthHelper $hsKey
  } 
  source $::env(HRT_TCL_PATH)/rtSynthCleanup.tcl
  return -code "error" $rt::result
}
