# Design decisions

- Signed integer datapath first: establish arithmetic correctness before adding CNN scheduling or memory complexity.
- Full signed product width is A_W+B_W.
- Wraparound is the default; optional saturation is a parameter. A production quantized engine also needs explicit scale, rounding, and saturation policy.
- ReLU follows the MAC, but this is not a complete neural-network implementation.
- No target-specific constraints are supplied because no FPGA board/part was specified.
