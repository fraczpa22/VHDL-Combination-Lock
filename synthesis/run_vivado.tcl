create_project -force combination_lock {C:\My_Designs\combination_lock\synthesis} -part 7a100tcsg324-1
add_files -norecurse {C:/My_Designs/combination_lock/src/lock.vhd}
add_files -norecurse {C:/My_Designs/combination_lock/compile/combination_lock.vhd}
add_files -norecurse {C:/My_Designs/combination_lock/src/Prescaler.vhd}
add_files -norecurse {C:/My_Designs/combination_lock/src/sev_seg.vhd}
add_files -norecurse {C:/My_Designs/combination_lock/src/Debouncer.vhd}
add_files -norecurse {C:/My_Designs/combination_lock/src/klawiatura.vhd}
set_property top combination_lock [current_fileset]
set_property XPM_LIBRARIES {XPM_CDC XPM_MEMORY} [current_project]

synth_design -top combination_lock -flatten_hierarchy rebuilt -gated_clock_conversion off -fsm_extraction auto -bufg 12 -fanout_limit 10000 -shreg_min_size 3 -max_bram -1 -max_uram -1 -max_dsp -1 -max_bram_cascade_height -1 -max_uram_cascade_height -1 -cascade_dsp auto -directive default -resource_sharing auto -control_set_opt_threshold auto
report_utilization -file {combination_lock_utilization_synth.rpt}
write_edf -force {combination_lock.edn}
write_vhdl -force {combination_lock.vhd}
write_xdc -force {combination_lock.xdc}
write_checkpoint -force combination_lock_synth.dcp
