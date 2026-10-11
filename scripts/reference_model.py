"""Independent integer reference functions for the starter MAC datapath."""
from __future__ import annotations

def signed_wrap(value: int, width: int) -> int:
    if width < 1: raise ValueError("width must be positive")
    value &= (1 << width) - 1
    return value - (1 << width) if value & (1 << (width - 1)) else value

def mac(a: int, b: int, acc: int, a_width: int = 8, b_width: int = 8, acc_width: int = 24, saturate: bool = False) -> int:
    for name, value, width in (("a", a, a_width), ("b", b, b_width), ("acc", acc, acc_width)):
        lo, hi = -(1 << (width - 1)), (1 << (width - 1)) - 1
        if not lo <= value <= hi: raise ValueError(f"{name}={value} is outside signed {width}-bit range")
    raw = a * b + acc
    lo, hi = -(1 << (acc_width - 1)), (1 << (acc_width - 1)) - 1
    return min(max(raw, lo), hi) if saturate else signed_wrap(raw, acc_width)

def relu(value: int) -> int:
    return max(value, 0)
