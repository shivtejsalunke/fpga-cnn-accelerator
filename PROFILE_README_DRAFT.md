<div align="center">

# SAL Dynamics
### Hardware Acceleration · Edge AI · FPGA / RTL · System Modeling

**Shivtej Salunke** · Hardware Acceleration & Edge AI Engineering Student

[![SystemVerilog](https://img.shields.io/badge/SystemVerilog-RTL-4B6EAF?style=for-the-badge)](https://en.wikipedia.org/wiki/SystemVerilog)
[![FPGA](https://img.shields.io/badge/FPGA-Design%20%26%20Prototyping-273B69?style=for-the-badge)](https://en.wikipedia.org/wiki/Field-programmable_gate_array)
[![Edge AI](https://img.shields.io/badge/Edge%20AI-Hardware%20Acceleration-007ACC?style=for-the-badge)](https://en.wikipedia.org/wiki/Edge_computing)
[![Python](https://img.shields.io/badge/Python-Model%20Optimization-3776AB?style=for-the-badge&logo=python&logoColor=white)](https://www.python.org/)

[Projects](#-featured-engineering-projects) · [Capabilities](#-core-services) · [Contact](#-connect)

</div>

---

## Introduction

I work at the intersection of **machine learning, digital hardware, and embedded systems**—turning computationally intensive algorithms into systems that can be measured, optimized, and deployed closer to the edge.

Through **SAL Dynamics**, my engineering focus is hardware–software co-design, FPGA/RTL development, Edge AI integration, and high-performance system modeling. I enjoy moving from algorithmic requirements to implementation details: numerical precision, datapaths, interfaces, timing, signal acquisition, and system-level validation.

> **Engineering principle:** make the architecture explicit, measure the implementation, and document the evidence.

I'm currently pursuing a **B.E. in Electronics & Telecommunication Engineering (expected May 2028)** and building a public portfolio of reproducible engineering work.

## Technical Stack

### Digital Design & Hardware Acceleration
![SystemVerilog](https://img.shields.io/badge/SystemVerilog-5C6E9C?style=flat-square)
![Verilog](https://img.shields.io/badge/Verilog-5C6E9C?style=flat-square)
![AMD Xilinx Vivado](https://img.shields.io/badge/AMD%20Xilinx-Vivado-E01F27?style=flat-square)
![RTL Design](https://img.shields.io/badge/RTL-Design-3949AB?style=flat-square)
![FPGA](https://img.shields.io/badge/FPGA-Prototyping-3949AB?style=flat-square)
![Timing](https://img.shields.io/badge/Timing-Analysis-3949AB?style=flat-square)

RTL design, simulation and testbenches, datapath architecture, MAC-based compute, synthesis/implementation flows, timing analysis, and implementation-aware optimization.

### Embedded Systems & Firmware
![C](https://img.shields.io/badge/C-A8B9CC?style=flat-square&logo=c&logoColor=black)
![C++](https://img.shields.io/badge/C++-00599C?style=flat-square&logo=cplusplus&logoColor=white)
![STM32](https://img.shields.io/badge/STM32-03234B?style=flat-square&logo=stmicroelectronics&logoColor=white)
![ESP32](https://img.shields.io/badge/ESP32-E7352C?style=flat-square)
![MQTT](https://img.shields.io/badge/MQTT-660066?style=flat-square)
![I2C SPI UART](https://img.shields.io/badge/I2C%20%2F%20SPI%20%2F%20UART-Embedded%20Interfaces-607D8B?style=flat-square)

Firmware development, sensor interfacing, data acquisition, telemetry, and microcontroller-to-edge-system integration.

### Edge AI, Software & Signal Processing
![Python](https://img.shields.io/badge/Python-3776AB?style=flat-square&logo=python&logoColor=white)
![MATLAB](https://img.shields.io/badge/MATLAB-0076A8?style=flat-square)
![Simulink](https://img.shields.io/badge/Simulink-FF6F00?style=flat-square)
![DSP](https://img.shields.io/badge/Digital%20Signal%20Processing-6A1B9A?style=flat-square)
![Edge AI](https://img.shields.io/badge/Edge%20AI-00897B?style=flat-square)

Model quantization and compression, inference benchmarking, FFT-based feature analysis, data parsing, and MATLAB App Designer.

### PCB, Mechanical & Simulation
![KiCad](https://img.shields.io/badge/KiCad-314CB0?style=flat-square&logo=kicad&logoColor=white)
![SolidWorks](https://img.shields.io/badge/SolidWorks-DA291C?style=flat-square)
![Ansys Fluent](https://img.shields.io/badge/Ansys%20Fluent-CF5C20?style=flat-square)
![CFD](https://img.shields.io/badge/CFD%20%2F%20FEA-Engineering%20Simulation-795548?style=flat-square)

PCB layout and review, 3D/mechanical design, computational fluid dynamics, and structural/thermal analysis workflows.

## Featured Engineering Projects

These are the four project tracks that best represent the SAL Dynamics engineering portfolio. Each repository should document its architecture, implementation, validation method, and limitations. Replace any placeholder measurements with reproducible results before treating them as verified outcomes.

### 1. Custom FPGA CNN Accelerator for Real-Time Defect Detection
**SystemVerilog · Python · AMD Xilinx Vivado**

An exploration of mapping a quantized convolutional neural network workload onto a custom FPGA datapath.

- **Focus:** INT8 quantization, MAC datapath and pipeline control, RTL implementation, and FPGA design flow.
- **Validation to publish:** testbench coverage, target part/board, clock constraints, timing summary, LUT/DSP/BRAM utilization, and end-to-end latency methodology.
- **Reported target/result:** sub-2-second inference latency is a project claim to substantiate with benchmark setup and logs.

[![Repository](https://img.shields.io/badge/Explore%20Repository-fpga--cnn--accelerator-181717?style=flat-square&logo=github)](https://github.com/shivtejsalunke/fpga-cnn-accelerator)

### 2. Predictive Maintenance Dashboard & Motor Fault Detection
**MATLAB · App Designer · Digital Signal Processing**

A vibration-analysis workflow for examining motor condition and surfacing potential anomalies through a dashboard.

- **Focus:** FFT-based vibration data parsing, signal features, status indicators, and anomaly alerts.
- **Validation to publish:** data source, sampling rate, preprocessing, train/test separation (if ML is used), class-wise metrics, confusion matrix, and false-alarm behavior.
- **Reported result:** a 92% accuracy figure has appeared in project materials; include it only alongside its dataset and evaluation protocol.

[![Repository](https://img.shields.io/badge/Explore%20Repository-Motor--Fault--Detection-181717?style=flat-square&logo=github)](https://github.com/shivtejsalunke/Motor-Fault-Detection)

### 3. Custom PCB Edge Sensor Node via MQTT
**KiCad · C/C++ · STM32 · MQTT**

An embedded sensing node concept for collecting diagnostic data and communicating it to downstream monitoring services.

- **Focus:** sensor interfaces, embedded firmware, MQTT payload design, and board-level integration.
- **Validation to publish:** schematic and layout exports, BOM, board stack-up, firmware build instructions, broker configuration, and a captured message/payload example.
- **Hardware claims:** describe the PCB layer count and tested hardware revision explicitly; distinguish design files from a fabricated and validated board.

[![Repository](https://img.shields.io/badge/Explore%20Repository-stm32--edge--sensor--node-181717?style=flat-square&logo=github)](https://github.com/shivtejsalunke/stm32-edge-sensor-node-)

### 4. ATOS — Aerodynamic Tolerance Optimization System
**SolidWorks · Ansys Fluent · CFD · FEA**

A mechanical analysis study connecting geometry and tolerance considerations with aerodynamic performance.

- **Focus:** CFD setup, drag-equation calculations, geometry/tolerance study, and stress-gradient analysis for composite materials.
- **Validation to publish:** model assumptions, boundary conditions, mesh-independence checks, solver settings, baseline comparison, and exported results.
- **Reported result:** a 4.5% drag-reduction figure appears in project materials; document the baseline and simulation conditions before presenting it as a verified result.

[![Repository](https://img.shields.io/badge/Explore%20Repository-ATOS--aerodynamic--tolerance--study-181717?style=flat-square&logo=github)](https://github.com/shivtejsalunke/atos-aerodynamic-tolerance-study)

## Core Services

SAL Dynamics is a technical brand for exploring and delivering engineering work in the following areas, subject to project scope and validated capability:

| Area | Example work |
|---|---|
| **Hardware–Software Co-Design** | Partition algorithmic workloads between firmware, software, and hardware; define interfaces and performance targets. |
| **FPGA / RTL Prototyping** | Develop RTL modules, testbenches, integration logic, and implementation reports. |
| **Edge AI Integration** | Evaluate model size, numeric precision, inference latency, and deployment constraints for edge platforms. |
| **Embedded Sensing & Telemetry** | Sensor interfacing, STM32-class firmware, MQTT messaging, and diagnostic data pipelines. |
| **Signal Processing & Predictive Maintenance** | FFT workflows, feature extraction, dashboard prototypes, and transparent anomaly evaluation. |
| **PCB & System Modeling** | KiCad design artifacts and engineering simulation studies with explicit assumptions and validation criteria. |

For a professional engagement, the scope, deliverables, test environment, and acceptance criteria should be agreed upon before work begins.

## Engineering Workflow

1. **Define the problem** — requirements, interfaces, constraints, and acceptance metrics.
2. **Model the system** — algorithm, datapath, signal path, or physical model.
3. **Implement incrementally** — modular code/RTL, testbenches, version control, and documented assumptions.
4. **Verify and measure** — test cases, simulation, benchmark scripts, and reproducible reports.
5. **Communicate results** — concise architecture diagrams, test evidence, limitations, and next steps.

## What You'll Find in These Repositories

- Architecture and data-flow diagrams
- Source code, RTL, firmware, and/or model scripts where publishable
- Reproducible setup and build instructions
- Testbenches, test data guidance, and validation results
- Synthesis, timing, utilization, or simulation reports where applicable
- Known limitations and a roadmap for further work

> **Evidence policy:** published results should include enough context to reproduce or independently assess them. Simulated, estimated, measured, and target values are labelled separately.

## Connect

I'm interested in **remote internships, research collaborations, and scoped engineering projects** around FPGA/RTL, Edge AI, embedded sensing, and hardware–software co-design.

- **GitHub:** [@shivtejsalunke](https://github.com/shivtejsalunke)
- **LinkedIn:** [shivtejsalunke](https://www.linkedin.com/in/shivtejsalunke)
- **Email:** [shivtejsalunke23@gmail.com](mailto:shivtejsalunke23@gmail.com)

<div align="center">

**SAL Dynamics** · Turning algorithms into measurable systems.

</div>
