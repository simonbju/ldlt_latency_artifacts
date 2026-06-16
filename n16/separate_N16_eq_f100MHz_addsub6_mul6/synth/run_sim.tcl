set project_name "ldlt"
set project_dir "../synth"
set vhdl_dir "../vhdl"
set gui true
set jobs 4
set needed_ips {fp_addsub fp_mul fp_rec}
set fp_addsub_latency 2
set fp_mul_latency 0
set fp_fma_latency 3
set fp_rec_latency 5
set fp_addsub_opt {High Speed}
set fp_addsub_mult_usage {No_Usage}
set fp_mul_mult_usage {Full_Usage}
set fp_fma_mult_usage {Medium_Usage}
set fp_rec_mult_usage {Full_Usage}
source "../../../../vivado_sim_design.tcl"
