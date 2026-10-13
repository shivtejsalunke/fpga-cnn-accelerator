# FPGA CNN Accelerator — Verified MAC Datapath Starter

A portable SystemVerilog portfolio project focused on signed fixed-point arithmetic, MAC/ReLU datapath composition, transaction control, input buffering, and self-checking testbenches.

> **Scope honesty:** this milestone is a MAC/ReLU datapath demonstrator, not a complete convolution engine or a measured FPGA acceleration result. It has not been synthesized or tested on physical FPGA hardware.

![SystemVerilog](https://img.shields.io/badge/SystemVerilog-RTL-4B6EAF?style=flat-square)
![Verification](https://img.shields.io/badge/Verification-Self--checking%20testbench-2E7D32?style=flat-square)
![Status](https://img.shields.io/badge/status-RTL%20starter-blue?style=flat-square)

## Objectives

- Define clear fixed-point arithmetic and MAC/ReLU behavior.
- Separate datapath behavior from transaction control.
- Verify module behavior against known reference vectors.
- Create a sound foundation for later CNN layer mapping and FPGA implementation.

## Architecture

Document the actual RTL modules and connections here. Add a block diagram at `docs/images/architecture.png` when available.

Suggested signal flow:

`input buffer → MAC datapath → activation/clip logic → result register`

Control logic should define reset, start/valid, busy, done/ready, and back-to-back transaction behavior. Update this description to match the current source files exactly.

## Repository Structure

```text
.
├── rtl/                 # SystemVerilog design modules
├── tb/                  # Testbenches and test vectors
├── scripts/             # Repeatable test/build helpers
├── results/             # Simulation logs and waveforms
├── docs/
│   ├── images/          # Architecture and waveform images
│   └── reports/         # Design notes and validation reports
├── .gitignore
└── README.md
```

Keep the final tree aligned with the actual checked-in files; do not create empty folders solely to match this example.

## Requirements

- SystemVerilog simulator: [name and tested version]
- Optional FPGA toolchain: AMD Xilinx Vivado [version]
- Target FPGA: [exact device/board if selected]
- Python or additional dependencies: [versions, if required]

This repository should not be described as an end-to-end CNN accelerator until the model layers, interfaces, and inference path have actually been implemented and verified.

## Build & Test

Add the exact commands for the simulator and version used. A useful verification flow should compile the RTL, run self-checking test cases, return a nonzero status on failure, and save logs/waveforms to a documented location.

```bash
# Replace placeholders with the commands supported by this repository.
<compile-command>
<simulation-command>
```

## Verification Plan

| Test | Expected behavior | Evidence |
|---|---|---|
| Signed MAC arithmetic | Matches the documented reference for the supported range | [log / waveform] |
| ReLU or activation behavior | Negative and non-negative cases handled as specified | [log / waveform] |
| Reset and transaction control | Correct state progression and result-valid behavior | [waveform] |
| Overflow / limits | Behavior follows the stated width, rounding, and saturation policy | [test report] |
| Back-to-back transactions | No loss or duplication, if supported by the protocol | [test report] |

Document arithmetic widths, signedness, rounding, saturation, and overflow behavior before interpreting test results.

## Synthesis & Timing

**Not yet reported.** When synthesis is performed, record the exact FPGA part, tool version, constraints, and implementation stage.

| Metric | Result |
|---|---|
| LUT / logic utilization | Not reported |
| DSP utilization | Not reported |
| BRAM utilization | Not reported |
| Target clock | Not reported |
| Achieved timing / WNS | Not reported |
| Critical path | Not reported |

Do not claim timing closure or resource efficiency until supported by an implementation report.

## CNN Integration Roadmap

- [ ] Define the intended CNN model, layers, input tensor, and output semantics.
- [ ] Establish a software reference model and reproducible test vectors.
- [ ] Specify quantization scales, zero points, accumulator width, rounding, and saturation.
- [ ] Implement and verify the selected layer datapath and control flow.
- [ ] Add synthesis, timing, and resource reports for a specific FPGA.
- [ ] Benchmark the full path against a clearly defined CPU baseline.
- [ ] Separate simulation measurements from physical-board measurements.

## Performance Reporting

Do not report inference latency, speedup, power reduction, or accuracy until there is a defined end-to-end implementation and a repeatable measurement method. Report host/board, clock, dataset and split, repetitions, and what timing includes.

| Metric | Value |
|---|---|
| End-to-end inference latency | Not measured |
| CNN accuracy | Not measured |
| FPGA resource utilization | Not measured |
| Board power | Not measured |

## Limitations

- This repository currently represents a verified-datapath learning/prototyping milestone, not a production-ready CNN accelerator.
- No physical FPGA implementation or measured board performance is claimed.
- Project scope and interface support must be confirmed from the actual RTL and testbench.

## References

Add applicable HDL references, FPGA vendor documentation, numeric-format references, and sources for any adopted architecture or test vectors.

## License

Specify the actual source-code license in the repository. Without a license, reuse permission should not be assumed.

## Contact

**Shivtej Salunke · SAL Dynamics**  
[GitHub](https://github.com/shivtejsalunke) · [LinkedIn](https://www.linkedin.com/in/shivtejsalunke) · [Email](mailto:shivtejsalunke23@gmail.com)
