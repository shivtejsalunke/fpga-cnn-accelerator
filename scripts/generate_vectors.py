#!/usr/bin/env python3
"""Generate deterministic MAC stimulus as JSON Lines."""
import json
from pathlib import Path
from reference_model import mac
out = Path(__file__).resolve().parents[1] / "tb/test_vectors/mac_vectors.jsonl"
out.parent.mkdir(parents=True, exist_ok=True)
cases = [(0,0,0),(7,9,2),(-7,9,2),(-128,-128,0),(127,127,-16129)]
with out.open("w", encoding="utf-8") as f:
    for a,b,acc in cases: f.write(json.dumps({"a":a,"b":b,"acc":acc,"expected":mac(a,b,acc)})+"\n")
print(f"wrote {len(cases)} vectors to {out}")
