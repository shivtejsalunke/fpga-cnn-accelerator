# Verification plan

| Area | Checks | Status |
|---|---|---|
| MAC | zero, signed operands, extremes, nonzero accumulator | Testbench authored; runtime unconfirmed |
| Accumulator | reset, enable, addition, clear | Testbench authored; runtime unconfirmed |
| Top-level | sampled operation, ReLU, valid behavior | Testbench authored; runtime unconfirmed |
| Python model | wrap, product, ReLU, saturation, invalid range | Run with unittest discovery |
| Synthesis/timing | target-specific synthesis and STA | Not run; target/tool not established |

Testbenches use $fatal for failures. Do not interpret file existence as successful verification.
