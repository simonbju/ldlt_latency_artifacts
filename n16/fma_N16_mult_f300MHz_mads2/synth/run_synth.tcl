set project_name "ldlt"
set project_dir "/local/data1/ollha42/ldlt-matrix-inverse-implementation/python/ldlt_sweep/runs/20260605_161042/fma_N16_mult_f300MHz_latA9_latM6_latF16_latR19_mads2/synth"
set vhdl_dir "/local/data1/ollha42/ldlt-matrix-inverse-implementation/python/ldlt_sweep/runs/20260605_161042/fma_N16_mult_f300MHz_latA9_latM6_latF16_latR19_mads2/vhdl"
set gui false
set jobs 3
set period 3.333
set needed_ips {fp_fma fp_rec}
set impl_strategies [list {Performance_Explore} {Performance_ExplorePostRoutePhysOpt} {Performance_ExploreWithRemap} {Performance_Retiming} {Performance_ExtraTimingOpt}]
set max_bram "0"
set fp_addsub_latency 7
set fp_mul_latency 4
set fp_fma_latency 14
set fp_rec_latency 17
set fp_addsub_opt {Low_Latency}
set fp_addsub_mult_usage {No_Usage}
set fp_mul_mult_usage {Max_Usage}
set fp_fma_mult_usage {Medium_Usage}
set fp_rec_mult_usage {Full_Usage}
source "/local/data1/ollha42/ldlt-matrix-inverse-implementation/synth/vivado_synth_design.tcl"
