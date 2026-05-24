#!/usr/bin/env python3
"""
generate_butterfly.py
---------------------
Render a correct 32-point radix-2 DIT FFT butterfly diagram as SVG.

DIT layout:
- Inputs are in bit-reversed order on the LEFT.
- 5 stages, each containing 16 radix-2 butterflies.
- Outputs are in natural order on the RIGHT.

Twiddle on each butterfly is labeled W_M^k where M = 2^stage, k in [0, M/2).

Usage:
    python docs/generate_butterfly.py  > docs/butterfly_32pt_dit.svg
or simply:
    python docs/generate_butterfly.py
    # writes docs/butterfly_32pt_dit.svg next to this script
"""

from __future__ import annotations
import os
import sys
import math


N = 32
STAGES = int(math.log2(N))   # 5

# ---------- bit-reversal -----------------------------------------------------
def bit_reverse(n: int, bits: int) -> int:
    out = 0
    for i in range(bits):
        if (n >> i) & 1:
            out |= 1 << (bits - 1 - i)
    return out


INPUT_ORDER = [bit_reverse(i, STAGES) for i in range(N)]
# Expected: 0,16,8,24,4,20,12,28,2,18,10,26,6,22,14,30,1,17,9,25,5,21,13,29,3,19,11,27,7,23,15,31


# ---------- canvas geometry --------------------------------------------------
COL_COUNT = STAGES + 2          # input col + 5 stages + output col = 7
COL_W = 230
ROW_H = 28
PAD_L, PAD_R, PAD_T, PAD_B = 110, 110, 60, 30
WIDTH  = PAD_L + (COL_COUNT - 1) * COL_W + PAD_R
HEIGHT = PAD_T + (N - 1) * ROW_H + PAD_B


def x(col: int) -> float:
    return PAD_L + col * COL_W


def y(row: int) -> float:
    return PAD_T + row * ROW_H


# ---------- SVG primitives ---------------------------------------------------
def line(x1, y1, x2, y2, **attrs) -> str:
    a = " ".join(f'{k.replace("_", "-")}="{v}"' for k, v in attrs.items())
    return f'<line x1="{x1:.1f}" y1="{y1:.1f}" x2="{x2:.1f}" y2="{y2:.1f}" {a}/>'


def text(tx, ty, s, **attrs) -> str:
    a = " ".join(f'{k.replace("_", "-")}="{v}"' for k, v in attrs.items())
    return f'<text x="{tx:.1f}" y="{ty:.1f}" {a}>{s}</text>'


def circle(cx, cy, r=2.5, fill="black") -> str:
    return f'<circle cx="{cx:.1f}" cy="{cy:.1f}" r="{r}" fill="{fill}"/>'


# ---------- diagram ---------------------------------------------------------
def build_svg() -> str:
    out: list[str] = []
    out.append(
        f'<svg xmlns="http://www.w3.org/2000/svg" '
        f'viewBox="0 0 {WIDTH} {HEIGHT}" width="{WIDTH}" height="{HEIGHT}" '
        f'font-family="ui-monospace, Menlo, Consolas, monospace" font-size="12">'
    )
    out.append(f'<rect width="{WIDTH}" height="{HEIGHT}" fill="white"/>')
    out.append(text(WIDTH / 2, 28,
                    "32-point radix-2 DIT FFT  (inputs bit-reversed, outputs natural)",
                    text_anchor="middle", font_size="16", font_weight="bold"))

    # Stage headers
    for s in range(1, STAGES + 1):
        out.append(text((x(s - 1) + x(s)) / 2, 48,
                        f"Stage {s}  (W{1<<s})",
                        text_anchor="middle", font_weight="bold", fill="#444"))

    # Input labels (bit-reversed order)
    for i in range(N):
        out.append(text(x(0) - 12, y(i) + 4,
                        f"x[{INPUT_ORDER[i]}]",
                        text_anchor="end"))

    # Output labels (natural order)
    for i in range(N):
        out.append(text(x(COL_COUNT - 1) + 12, y(i) + 4,
                        f"X[{i}]",
                        text_anchor="start", font_weight="bold"))

    # Nodes at every column boundary
    for s in range(COL_COUNT):
        for i in range(N):
            out.append(circle(x(s), y(i)))

    # Stages: for stage s (1..STAGES), butterflies pair (g+k, g+k+stride)
    # in each group of size 2^s.
    for s in range(1, STAGES + 1):
        stride = 1 << (s - 1)
        group_size = 1 << s
        col_in = s - 1
        col_out = s
        for g in range(0, N, group_size):
            for k in range(stride):
                top = g + k
                bot = g + k + stride

                # 4 lines per butterfly: top->top, bot->bot, top->bot, bot->top
                out.append(line(x(col_in), y(top), x(col_out), y(top), stroke="black"))
                out.append(line(x(col_in), y(bot), x(col_out), y(bot), stroke="black"))
                out.append(line(x(col_in), y(top), x(col_out), y(bot), stroke="#888"))
                out.append(line(x(col_in), y(bot), x(col_out), y(top), stroke="#888"))

                # Twiddle factor label placed just left of the butterfly's right side
                lbl = f"W{group_size}^{k}"
                tx_pos = x(col_in) + (x(col_out) - x(col_in)) * 0.18
                ty_pos = y(top) - 4
                out.append(text(tx_pos, ty_pos, lbl,
                                fill="#0a6", font_size="10"))

    # Final segment: stage 5 output column already coincides with output column,
    # so no extra wires needed -- the right-most stage column IS the output node.
    # But we drew COL_COUNT = STAGES + 2, meaning there's an extra column on the
    # right. Connect last-stage outputs to the rightmost column with straight lines.
    for i in range(N):
        out.append(line(x(STAGES), y(i), x(COL_COUNT - 1), y(i), stroke="black"))

    out.append("</svg>")
    return "\n".join(out)


# ---------- main ------------------------------------------------------------
def main() -> int:
    svg = build_svg()
    here = os.path.dirname(os.path.abspath(__file__))
    out_path = os.path.join(here, "butterfly_32pt_dit.svg")
    with open(out_path, "w", encoding="utf-8") as f:
        f.write(svg)
    print(f"wrote {out_path}  ({len(svg)} bytes)", file=sys.stderr)
    return 0


if __name__ == "__main__":
    raise SystemExit(main())
