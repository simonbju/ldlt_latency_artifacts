# Define Project Variables (can be overridden by sourcing script)
if {![info exists project_name]} { set project_name "ldlt" }
if {![info exists project_dir]}  { set project_dir  "test_4x4" }
if {![info exists gui]}          { set gui true }
if {![info exists jobs]}         { set jobs 12 }

# Define simulation parameters
if {![info exists part_number]}      { set part_number "xc7z007sclg225-2" }
if {![info exists vhdl_dir]}         { set vhdl_dir "../vhdl/$project_dir" }

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
synth_ip [get_ips]

# Add design sources
set all_vhdl_sources [glob -nocomplain [file join $vhdl_dir *.vhdl]]
set vhdl_sources [lsearch -all -inline -not $all_vhdl_sources *tb.vhdl]
set vhdl_tb_sources [lsearch -all -inline $all_vhdl_sources *tb.vhdl]
if {[llength $vhdl_sources] == 0} {
  error "No VHDL sources found in $vhdl_dir"
}
add_files $vhdl_sources
if {[llength $vhdl_tb_sources] > 0} {
  add_files -fileset sim_1 $vhdl_tb_sources
  set_property file_type {VHDL 2008} [get_files $vhdl_tb_sources]
}

# Set the top module for sim_1
if {![info exists top_module]} {
  set top_module [file rootname [file tail [lindex $vhdl_tb_sources 0]]]
}
set_property top $top_module [get_filesets sim_1]

# -------------------------------------------------------
# Run Simulation
# -------------------------------------------------------
puts "--- OPENING SIMULATION ---"
set_property -name {xsim.simulate.runtime} -value {0ns} -objects [get_filesets sim_1]
launch_simulation

if {$gui} {
    start_gui
} else {
    set project_path [file normalize [file join $project_dir $project_name.xpr]]
    puts "To open the GUI later, run:"
    puts "vivado -nolog -nojournal $project_path"
}
