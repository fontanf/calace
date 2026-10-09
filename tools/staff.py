#!/usr/bin/env python3
"""staff.py DIR PAGE STAFF_FROM STAFF_TO X0 X1 OUT [scale] [--raw]
Crop staves STAFF_FROM..STAFF_TO (1-based, page numbering) between X0..X1 from the
annotated page (or the raw scan with --raw), with a margin for ledger notes."""
import json, sys
from PIL import Image
args = [a for a in sys.argv[1:] if a != "--raw"]
raw = "--raw" in sys.argv
d, page, s0, s1, x0, x1, out = args[:7]
scale = float(args[7]) if len(args) > 7 else 1.4
page, s0, s1, x0, x1 = int(page), int(s0), int(s1), int(x0), int(x1)
info = json.load(open(f"{d}/raw{page:02d}_staves.json"))
st = info["staves"]
y0 = min(st[s0 - 1][0], st[s0 - 1][2]) - 150
y1 = max(st[s1 - 1][1], st[s1 - 1][3]) + 150
f = f"{d}/raw{page:02d}-{page:02d}.png" if raw else f"{d}/raw{page:02d}_annot.png"
im = Image.open(f).crop((x0, int(y0), x1, int(y1)))
im.resize((int(im.width * scale), int(im.height * scale)), Image.LANCZOS).save(out)
