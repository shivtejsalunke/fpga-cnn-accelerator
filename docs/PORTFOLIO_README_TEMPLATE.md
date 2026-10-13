# FPGA CNN Accelerator — RTL Datapath Starter

> SystemVerilog study of fixed-point MAC/ReLU datapath composition, transaction control, and self-checking verification.

![SystemVerilog](https://img.shields.io/badge/SystemVerilog-RTL-4B6EAF?style=flat-square)
![Verification](https://img.shields.io/badge/Verification-Testbench-2E7D32?style=flat-square)

## Project Status

**Stage:** [RTL prototype / simulation verified / synthesized / hardware validated]  
**Target FPGA:** [exact part and board, or “not selected”]

Be precise about implemented scope. A datapath demonstrator is not automatically a complete CNN accelerator; distinguish simulated behavior from synthesis results and physical hardware measurements.

## Problem & Scope

Explain the defect-detection workload, model architecture, intended interface, and design constraints. Specify which parts are implemented in software and which are mapped into RTL.

## Architecture

Add a block diagram at `docs/images/architecture.png` showing input buffering, MAC datapath, activation/clip logic, output registers, and controller. Replace these blocks with the exact modules and interfaces that exist in source.

## Technology & Requirements

| Component | Details |
|---|---|
| HDL / simulator | [name and tested version] |
| FPGA toolchain | [Vivado version, or N/A] |
| Target device | [exact part / board, or N/A] |
| Numeric format | [signed width, fixed-point format] |
| Model / workload | [model, layers, input shape] |
| Dataset | [source, license, split] |

## Repository Layout

```text
.
├── rtl/                 # SystemVerilog modules
├── tb/                  # Testbenches and test vectors
├── model/               # Software reference, if implemented
├── constraints/         # Timing constraints, if applicable
├── scripts/             # Repeatable build/test/benchmark scripts
├── results/
│   ├── simulation/
│   ├── timing/
│   └── utilization/
└── docs/
    ├── images/
    └── reports/
```

Only list folders that exist in the repository; update the layout as the implementation evolves.

## Numeric Format & Model Mapping

Document operand widths and signedness, accumulator width, bias representation, quantization method, scaling, rounding, saturation, and overflow behavior. Explain how each supported layer/operator maps to the datapath.

## Build & Test

Provide the exact commands for compiling and simulating from a clean checkout. List the simulator version and dependencies.

| Test | Expected result | Evidence |
|---|---|---|
| MAC signed arithmetic | Matches a software reference | [log/waveform] |
| Activation behavior | Handles boundary and sign cases | [test report] |
| Reset and control protocol | Expected state/valid/done sequence | [waveform] |
| Overflow limits | Follows documented arithmetic rules | [test report] |
| End-to-end layer | Matches reference within stated tolerance | [report, when implemented] |

## Synthesis & Timing

Report the exact FPGA part, constraints, tool version, and implementation stage.

| Metric | Value |
|---|---|
| LUT / logic utilization | [actual report] |
| DSP utilization | [actual report] |
| BRAM utilization | [actual report] |
| Clock constraint / achieved clock | [report] |
| WNS / TNS | [report] |
| Critical path | [startpoint, endpoint, analysis] |

Do not claim timing closure unless an implementation report supports the claim.

## Performance

Specify the CPU baseline, target board, clock, batch size, timing boundaries, number of repetitions, warm-up, and dataset/model. Publish scripts and raw logs when possible.

| Metric | Value |
|---|---|
| End-to-end inference latency | [measured or “not measured”] |
| Accuracy / quality metric | [method and value] |
| Resource use | [actual report or “not synthesized”] |
| Power | [measured / estimated / not measured] |

A sub-2-second latency and a 45% improvement have appeared in earlier project descriptions. Do not present those as verified results without repeatable benchmark evidence; label simulated, estimated, and measured values distinctly.

## Limitations & Roadmap

- [Current limitation]
- [Untested feature or target]
- [ ] Define a complete model and software reference.
- [ ] Verify arithmetic and control corner cases.
- [ ] Synthesize for a named FPGA and publish reports.
- [ ] Benchmark end-to-end inference on a stated setup.

## References, License & Contact

Cite model/data sources, hardware documentation, and third-party RTL. Specify the actual project license.

**Shivtej Salunke · SAL Dynamics**  
[GitHub](https://github.com/shivtejsalunke) · [LinkedIn](https://www.linkedin.com/in/shivtejsalunke) · [Email](mailto:shivtejsalunke23@gmail.com)
