# FPGA CNN Accelerator — Verified MAC Datapath Starter

A portable SystemVerilog portfolio project focused on signed fixed-point arithmetic, MAC/ReLU datapath composition, a transaction FSM, input buffer, and self-checking testbenches.

> **Scope honesty:** this milestone is a small MAC/ReLU datapath demonstrator, not a complete convolution engine or measured FPGA acceleration result. It has not been synthesized or tested on physical FPGA hardware.

## Features
- Parameterized signed MAC with explicitly sized product and optional saturation.
- Synchronous accumulator with asynchronous active-low reset, clear, enable, and width wraparound.
- ReLU, input buffer, controller FSM, and top-level registered result interface.
- Independent Python integer reference model and deterministic vectors.
- Icarus Verilog-compatible self-checking testbench runner and Python unit tests.

## Quick start
Requirements: Python 3.10+; Icarus Verilog (iverilog and vvp) for RTL simulation.

    python3 scripts/generate_vectors.py
    python3 -m unittest discover -s scripts -p 'test_*.py'
    make sim

If Icarus Verilog is unavailable, simulation is **not run**, not passed.

## Numeric and handshake contract
Inputs are signed two's-complement integers. Product width is A_W+B_W; accumulator/result width is ACC_W. Default arithmetic wraps to ACC_W bits; optional saturation clamps to the signed ACC_W range. RTL does not assign a fractional binary point. Reset is asynchronous active-low. Top-level samples when valid_in is high and asserts valid_out for the corresponding registered result one clock edge later; there is no downstream backpressure.

## Layout
- rtl/: synthesizable RTL modules
- tb/: self-checking testbenches and vectors
- scripts/: integer model, vector generation, tests
- sim/: file list and runner
- docs/: architecture, design choices, verification, limitations
- reports/: reserved for real generated evidence

## Validation status
Python reference tests were run locally. RTL simulation requires Icarus and must execute successfully before it is considered verified. Synthesis, timing, utilization, power, and physical board tests are not measured.
