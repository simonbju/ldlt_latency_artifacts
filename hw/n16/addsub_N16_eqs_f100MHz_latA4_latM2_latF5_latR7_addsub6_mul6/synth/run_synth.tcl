set project_name "ldlt"
set project_dir "/home/simbj03/articles/ldlt-matrix-inverse-implementation/python/ldlt_sweep/runs/20260330_141731/addsub_N16_eqs_f100MHz_latA4_latM2_latF5_latR7_addsub6_mul6/synth"
set vhdl_dir "/home/simbj03/articles/ldlt-matrix-inverse-implementation/python/ldlt_sweep/runs/20260330_141731/addsub_N16_eqs_f100MHz_latA4_latM2_latF5_latR7_addsub6_mul6/vhdl"
set gui false
set jobs 4
set period 10.0
set needed_ips {fp_addsub fp_mul fp_rec}
set impl_strategies [list {Performance_Auto_1} {Performance_Explore} {Performance_Retiming} {Performance_ExtraTimingOpt} {Performance_RefinePlacement}]
set max_bram "0"
set fp_addsub_latency 2
set fp_mul_latency 0
set fp_fma_latency 3
set fp_rec_latency 5
set fp_addsub_opt {Speed_Optimized}
set fp_addsub_mult_usage {No_Usage}
set fp_mul_mult_usage {Full_Usage}
set fp_fma_mult_usage {Medium_Usage}
set fp_rec_mult_usage {Full_Usage}
source "/home/simbj03/articles/ldlt-matrix-inverse-implementation/synth/vivado_synth_design.tcl"
