set project_name "ldlt"
set project_dir "../synth"
set vhdl_dir "../vhdl"
set part_number "xc7vx690tffg1930-3"
set gui true
set jobs 4
set period 3.333
set needed_ips {fp_addsub fp_mul fp_rec}
set impl_strategies [list {Performance_Auto_1} {Performance_Explore} {Performance_Retiming} {Performance_ExtraTimingOpt} {Performance_RefinePlacement}]
set max_bram "0"
set fp_addsub_latency 3
set fp_mul_latency 2
set fp_fma_latency 9
set fp_rec_latency 12
set fp_addsub_opt {Low_Latency}
set fp_addsub_mult_usage {No_Usage}
set fp_mul_mult_usage {Max_Usage}
set fp_fma_mult_usage {Medium_Usage}
set fp_rec_mult_usage {Full_Usage}
source "../../../vivado_synth_design.tcl"
