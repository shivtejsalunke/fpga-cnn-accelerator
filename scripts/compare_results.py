#!/usr/bin/env python3
"""Compare JSONL observations with the integer reference model."""
import argparse, json
from pathlib import Path
from reference_model import mac
p=argparse.ArgumentParser(); p.add_argument("observations",type=Path); p.add_argument("--a-width",type=int,default=8); p.add_argument("--b-width",type=int,default=8); p.add_argument("--acc-width",type=int,default=24); args=p.parse_args()
failures=[]; rows=0
for line_no,line in enumerate(args.observations.read_text(encoding="utf-8").splitlines(),1):
 if not line.strip(): continue
 row=json.loads(line); rows+=1; expected=mac(row["a"],row["b"],row.get("acc",0),args.a_width,args.b_width,args.acc_width)
 if int(row["result"])!=expected: failures.append({"line":line_no,"expected":expected,"actual":row["result"]})
if failures: print(json.dumps({"status":"FAIL","failures":failures},indent=2)); raise SystemExit(1)
print(json.dumps({"status":"PASS","rows_checked":rows},indent=2))
