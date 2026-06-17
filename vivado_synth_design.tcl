# Define Project Variables (can be overridden by sourcing script)
if {![info exists project_name]} { set project_name "ldlt" }
if {![info exists project_dir]}  { set project_dir  "test_4x4" }
if {![info exists gui]}          { set gui true }
if {![info exists jobs]}         { set jobs 12 }

# Define synthesis parameters
if {![info exists out_of_context]} { set out_of_context true }
if {![info exists preserve_hierarchy]} { set preserve_hierarchy true }
if {![info exists part_number]}      { set part_number "xc7z007sclg225-2" }
# if {![info exists part_number]}      { set part_number "xc7vx690tffg1930-3" }
if {![info exists clock_name]}       { set clock_name "clk" }
if {![info exists period]}           { set period 10.0 }
if {![info exists vhdl_dir]}         { set vhdl_dir "../vhdl/$project_dir" }
if {![info exists impl_strategies]}  { set impl_strategies {} }
if {![info exists max_bram]}         { set max_bram "" }

# Allow run scripts to override floating-point core latencies.
if {![info exists fp_addsub_latency]} { set fp_addsub_latency 2 }
if {![info exists fp_mul_latency]}    { set fp_mul_latency 0 }
if {![info exists fp_fma_latency]}    { set fp_fma_latency 3 }
if {![info exists fp_rec_latency]}    { set fp_rec_latency 5 }
if {![info exists fp_addsub_opt]}        { set fp_addsub_opt {Low_Latency} }
if {![info exists fp_addsub_mult_usage]} { set fp_addsub_mult_usage {No_Usage} }
if {![info exists fp_mul_mult_usage]}    { set fp_mul_mult_usage {Full_Usage} }
if {![info exists fp_fma_mult_usage]}    { set fp_fma_mult_usage {Medium_Usage} }
if {![info exists fp_rec_mult_usage]}    { set fp_rec_mult_usage {Full_Usage} }
if {![info exists needed_ips]}        { set needed_ips {fp_addsub fp_mul fp_rec} }

# Create the Project
create_project -force $project_name $project_dir -part $part_number
set_property target_language VHDL [current_project]
set_property simulator_language VHDL [current_project]



# -------------------------------------------------------
# Add & Configure Floating-Point IPs
# -------------------------------------------------------
proc needs_ip {ip_name} {
  global needed_ips
  return [expr {[lsearch -exact $needed_ips $ip_name] >= 0}]
}

if {[needs_ip fp_addsub]} {
  create_ip -name floating_point -vendor xilinx.com -library ip -version 7.1 -module_name fp_addsub
  set_property -dict [list \
    CONFIG.A_Precision_Type {Single} \
    CONFIG.C_A_Exponent_Width {8} \
    CONFIG.C_A_Fraction_Width {24} \
    CONFIG.C_Latency $fp_addsub_latency \
    CONFIG.C_Mult_Usage $fp_addsub_mult_usage \
    CONFIG.C_Optimization $fp_addsub_opt \
    CONFIG.C_Rate {1} \
    CONFIG.C_Result_Exponent_Width {8} \
    CONFIG.C_Result_Fraction_Width {24} \
    CONFIG.Flow_Control {NonBlocking} \
    CONFIG.Has_RESULT_TREADY {false} \
    CONFIG.Maximum_Latency {false} \
    CONFIG.Operation_Type {Add_Subtract} \
    CONFIG.Result_Precision_Type {Single} \
  ] [get_ips fp_addsub]
}

if {[needs_ip fp_mul]} {
  create_ip -name floating_point -vendor xilinx.com -library ip -version 7.1 -module_name fp_mul
  set_property -dict [list \
    CONFIG.A_Precision_Type {Single} \
    CONFIG.C_A_Exponent_Width {8} \
    CONFIG.C_A_Fraction_Width {24} \
    CONFIG.C_Latency $fp_mul_latency \
    CONFIG.C_Mult_Usage $fp_mul_mult_usage \
    CONFIG.C_Rate {1} \
    CONFIG.C_Result_Exponent_Width {8} \
    CONFIG.C_Result_Fraction_Width {24} \
    CONFIG.Flow_Control {NonBlocking} \
    CONFIG.Has_RESULT_TREADY {false} \
    CONFIG.Maximum_Latency {false} \
    CONFIG.Operation_Type {Multiply} \
    CONFIG.Result_Precision_Type {Single} \
  ] [get_ips fp_mul]
}

if {[needs_ip fp_fma]} {
  create_ip -name floating_point -vendor xilinx.com -library ip -version 7.1 -module_name fp_fma
  set_property -dict [list \
    CONFIG.A_Precision_Type {Single} \
    CONFIG.C_A_Exponent_Width {8} \
    CONFIG.C_A_Fraction_Width {24} \
    CONFIG.C_Latency $fp_fma_latency \
    CONFIG.C_Mult_Usage $fp_fma_mult_usage \
    CONFIG.C_Rate {1} \
    CONFIG.C_Result_Exponent_Width {8} \
    CONFIG.C_Result_Fraction_Width {24} \
    CONFIG.Flow_Control {NonBlocking} \
    CONFIG.Has_RESULT_TREADY {false} \
    CONFIG.Maximum_Latency {false} \
    CONFIG.Operation_Type {FMA} \
    CONFIG.Result_Precision_Type {Single} \
  ] [get_ips fp_fma]
}

if {[needs_ip fp_rec]} {
  create_ip -name floating_point -vendor xilinx.com -library ip -version 7.1 -module_name fp_rec
  set_property -dict [list \
    CONFIG.A_Precision_Type {Single} \
    CONFIG.C_A_Exponent_Width {8} \
    CONFIG.C_A_Fraction_Width {24} \
    CONFIG.C_Latency $fp_rec_latency \
    CONFIG.C_Mult_Usage $fp_rec_mult_usage \
    CONFIG.C_Rate {1} \
    CONFIG.C_Result_Exponent_Width {8} \
    CONFIG.C_Result_Fraction_Width {24} \
    CONFIG.Flow_Control {NonBlocking} \
    CONFIG.Has_RESULT_TREADY {false} \
    CONFIG.Maximum_Latency {false} \
    CONFIG.Operation_Type {Reciprocal} \
    CONFIG.Result_Precision_Type {Single} \
  ] [get_ips fp_rec]
}

generate_target all [get_ips]
export_ip_user_files -of_objects [get_ips] -no_script -sync -force -quiet

# Add design sources
set all_vhdl_sources [glob -nocomplain [file join $vhdl_dir *.vhdl]]
set vhdl_sources [lsearch -all -inline -not $all_vhdl_sources *tb.vhdl]
if {[llength $vhdl_sources] == 0} {
  error "No VHDL sources found in $vhdl_dir"
}
add_files $vhdl_sources

set synth_run synth_1

# -------------------------------------------------------

# Run Synthesis
puts "--- RUNNING SYNTHESIS ---"
set synth_more_options {}
if {$out_of_context} {
  lappend synth_more_options -mode out_of_context
}
if {[string length [string trim $max_bram]] > 0} {
  lappend synth_more_options -max_bram $max_bram
}
if {[llength $synth_more_options] > 0} {
  set_property -name {STEPS.SYNTH_DESIGN.ARGS.MORE OPTIONS} -value [join $synth_more_options " "] -objects [get_runs $synth_run]
}
if {$preserve_hierarchy} {
    set_property STEPS.SYNTH_DESIGN.ARGS.FLATTEN_HIERARCHY none [get_runs $synth_run]
} else {
    set_property STEPS.SYNTH_DESIGN.ARGS.FLATTEN_HIERARCHY full [get_runs $synth_run]
}
launch_runs $synth_run -jobs $jobs
wait_on_run $synth_run

## Report utilization after synthesis
open_run $synth_run
puts "--- SYNTHESIS UTILIZATION ---"
report_utilization -file $project_dir/util_synth.txt

# Add clock constraint to the project
create_clock -period $period -name $clock_name [get_ports $clock_name]
# add_files -fileset constrs_1 -norecurse const.xdc
# import_files -fileset constrs_1 const.xdc

puts "--- SYNTHESIS TIMING SUMMARY ---"
report_timing_summary -path_type full -input_pins -file $project_dir/timing_synth.txt

# Run Implementation
puts "--- RUNNING IMPLEMENTATION ---"
set impl_runs {impl_1}
set impl_flow [get_property FLOW [get_runs impl_1]]
set run_index 2
foreach strategy $impl_strategies {
  set run_name "impl_$run_index"
  create_run $run_name -parent_run $synth_run -flow $impl_flow -strategy $strategy
  lappend impl_runs $run_name
  incr run_index
}

launch_runs {*}$impl_runs -jobs $jobs
foreach run_name $impl_runs {
  wait_on_run $run_name
}

set primary_impl_run [lindex $impl_runs 0]
open_run $primary_impl_run
puts "--- IMPLEMENTATION UTILIZATION ($primary_impl_run) ---"
report_utilization -file $project_dir/util_impl.txt

puts "--- TIMING SUMMARY ($primary_impl_run) ---"
report_timing_summary -path_type full -input_pins -file $project_dir/timing.txt

puts "--- POWER SUMMARY ($primary_impl_run) ---"
report_power -file $project_dir/power.txt

foreach run_name $impl_runs {
  open_run $run_name
  report_utilization -file $project_dir/util_${run_name}.txt
  report_timing_summary -path_type full -input_pins -file $project_dir/timing_${run_name}.txt
  report_power -file $project_dir/power_${run_name}.txt
}

# Start GUI if the gui flag is set else print instructions for opening the project later
if {$gui} {
    start_gui
} else {
    set project_path [file normalize [file join $project_dir $project_name.xpr]]
    puts "To open the GUI later, run:"
    puts "vivado -nolog -nojournal $project_path"
}
