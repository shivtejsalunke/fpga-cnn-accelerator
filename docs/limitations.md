# Limitations and evidence boundaries

- This is an arithmetic datapath starter, not a completed CNN accelerator. No convolution window generator, trained model, DMA/AXI interface, or image-classification path is present.
- Controller and buffer are not connected to cnn_top in this milestone.
- No named FPGA board, vendor project, constraints, synthesis/timing report, power measurement, or physical hardware demonstration exists.
- Fractional scale, rounding, and tensor-level quantization calibration are not defined.
- RTL simulation remains unverified until the testbenches run in an installed simulator. Add elaboration assertions for unsupported parameter combinations.
- No latency improvement or accuracy is claimed.
