set project_name "ldlt"
set project_dir "/local/data1/ollha42/ldlt-matrix-inverse-implementation/python/ldlt_sweep/runs/20260327_181537/mads_N16_mult_f200MHz_latA5_latM4_latF9_latR13_mads3/synth"
set vhdl_dir "/local/data1/ollha42/ldlt-matrix-inverse-implementation/python/ldlt_sweep/runs/20260327_181537/mads_N16_mult_f200MHz_latA5_latM4_latF9_latR13_mads3/vhdl"
set gui false
set jobs 4
set period 5.0
set needed_ips {fp_addsub fp_mul fp_rec}
set impl_strategies [list {Performance_Auto_1} {Performance_Explore} {Performance_ExplorePostRoutePhysOpt} {Performance_ExploreWithRemap} {Performance_Retiming} {Performance_ExtraTimingOpt} {Performance_RefinePlacement}]
set max_bram "0"
set fp_addsub_latency 3
set fp_mul_latency 2
set fp_fma_latency 7
set fp_rec_latency 11
set fp_addsub_opt {Low_Latency}
set fp_addsub_mult_usage {No_Usage}
set fp_mul_mult_usage {Max_Usage}
set fp_fma_mult_usage {Medium_Usage}
set fp_rec_mult_usage {Full_Usage}
source "/local/data1/ollha42/ldlt-matrix-inverse-implementation/synth/vivado_synth_design.tcl"
