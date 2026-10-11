#!/usr/bin/env bash
set -euo pipefail
cd "$(dirname "$0")/.."
SIMULATOR="${SIMULATOR:-iverilog}"
command -v "$SIMULATOR" >/dev/null || { echo "ERROR: $SIMULATOR not found. Install Icarus Verilog or set SIMULATOR." >&2; exit 127; }
mkdir -p reports/simulation
for tb in tb_mac_unit tb_accumulator tb_cnn_top; do
  "$SIMULATOR" -g2012 -s "$tb" -o "/tmp/$tb.vvp" -f sim/filelist.f "tb/$tb.sv"
  vvp "/tmp/$tb.vvp" | tee "reports/simulation/$tb.log"
done
