create_project -force combination_lock {C:\My_Designs\combination_lock\implement} -part 7a100tcsg324-1
set_property design_mode GateLvl [current_fileset]
set_property top combination_lock [current_fileset]
set_property XPM_LIBRARIES {XPM_CDC XPM_MEMORY} [current_project]
add_files -norecurse {C:\My_Designs\combination_lock\synthesis\combination_lock.edn}
read_xdc {C:\My_Designs\combination_lock\src\lock.xdc}
link_design

opt_design -verbose -directive Default
write_checkpoint -force {combination_lock_opt.dcp}
catch { report_drc -file {combination_lock_opted.rpt} }

place_design -verbose -directive Default
catch { write_pcf -force {combination_lock.pcf} }
write_checkpoint -force {combination_lock_placed.dcp}
catch { report_io -file {combination_lock_io_placed.rpt} }
catch { report_clock_utilization -file {combination_lock_clock_utilization_placed.rpt} }
catch { report_utilization -file {combination_lock_utilization_placed.rpt} }
catch { report_control_sets -verbose -file {combination_lock_control_sets_placed.rpt} }
catch { report_timing_summary -file {combination_lock_timing_summary_placed.rpt} }

power_opt_design -verbose
write_checkpoint -force {combination_lock_postplace_pwropt.dcp}
catch { report_drc -file {combination_lock_postplace_pwropted.rpt} }

route_design -verbose -directive Default
write_checkpoint -force {combination_lock_routed.dcp}
write_verilog -mode timesim -sdf_anno false -force {combination_lock.v}
write_sdf -mode timesim -force {combination_lock.sdf}
catch { report_drc -file {combination_lock_drc_routed.rpt} }
catch { report_power -file {combination_lock_power_routed.rpt} }
catch { report_route_status -file {combination_lock_route_status_routed.rpt} }
catch { report_timing_summary -file {combination_lock_timing_summary_routed.rpt} }

write_bitstream -force -file {combination_lock.bit}
