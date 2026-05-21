# Artifacts for: *Operator and Latency Trade-Offs for Floating-Point FPGA Implementation of LDLT Matrix Inversion*

AMD Vivado 2023.2 and Floating-Point Operator v7.1 are required to run these designs. They may work with other versions, but are only tested with these.

### &#9888; Simulations for Combined are currently not working correctly, but the problem is fixed locally and updated files will be provided before final submission.

## File structure

The folder `hw` contains subfolders with all VHDL code and scripts for different matrix sizes, e.g., `n4` contains designs for 4x4 matrix inversion.

Each subfolder contains different designs. Each design folder contains two subfolders: `synth` with `.tcl` scripts for simulation and synthesis, and `vhdl` with source code for the design and testbench.

The directory name describes the parameters for each design. For example, `separate_N4_mult_f200MHz_addsub1_mul1` means:

* **Operators:** Separate (can also be Combined or FMA)
* **Matrix size:** 4 (can also be 8 or 16)
* **Algorithm variant:** Mult (can also be Eq)
* **Clock frequency:** 200 MHz (can also be 100 or 300)
* **Operator count:**
    * AddSub: 1
    * Mult: 1
    * Can be MADS instead

## Simulation

Enter the `synth` folder of a design and run:

```bash
vivado -mode batch -script run_sim.tcl
```

After the Vivado window has opened, press "Run All".
After some initial setup time, the second part of the simulation shows a complete matrix inversion.

## Synthesis

Enter the `synth` folder of a design and run:

```bash
vivado -mode batch -script run_synth.tcl
```

Reports for area, timing, and power will be generated in the same folder for each implementation strategy specified in the synthesis script.
Note that for some designs, the timing is only met for some strategies.
As can be seen in the paper, 16x16 designs targeting 300 MHz clock frequency does not meet timing.
