# %%
from pathlib import Path

import numpy as np
import pandas as pd
import matplotlib.pyplot as plt

pd.set_option("display.max_columns", 200)
pd.set_option("display.width", 180)

# %%
# Change this path to analyze a different run
RESULTS_CSV = Path("n16/results_first.csv")

if not RESULTS_CSV.exists():
    raise FileNotFoundError(f"Could not find: {RESULTS_CSV.resolve()}")

df = pd.read_csv(RESULTS_CSV)
pd.set_option("display.max_rows", None)
print(f"Loaded {len(df)} rows from {RESULTS_CSV}")
print("Available columns:")
print(df.columns.tolist())

display(df)

# %%

# Add column names here to drop them from the dataframe
columns_to_drop = [
    "tag",
    "period_ns",
    "lat_addsub",
    "lat_mul",
    "lat_fma",
    "lat_rec",
    # "mads_count",
    "impl_strategies",
    "max_bram",
    "memory_variables",
    "num_memories",
    "num_processing_elements",
    "ilp_objective_mux",
    "synth_rc",
    "power_w",
    "power_static_w",
    "impl_slice_luts_util_pct",
    "impl_slice_registers_util_pct",
    "impl_dsps_util_pct",
    "impl_bram_tiles",
    "impl_bram_tiles_util_pct",
    "status",
    "error",
    "run_dir",
]

df_dropped = df.drop(columns=columns_to_drop, errors="ignore")
# display(df_dropped)

df_filtered = df_dropped[df_dropped["impl_wns_ns"] > 0]

df_filtered["energy"] = (
    df_filtered["power_dynamic_w"]
    * df_filtered["schedule_time"]
    / df_filtered["frequency_mhz"]
) * 1000

df_filtered["alg"] = pd.Categorical(
    df_filtered["alg"], categories=["addsub", "mads", "fma"], ordered=True
)

df_sorted = df_filtered.sort_values(
    by=["frequency_mhz", "mode", "alg"], ascending=[True, False, True]
)

display(df_sorted)
