#!/usr/bin/env python3
"""rawbar.py DIR PAGE SYS X0 X1 OUTPREFIX -- raw crops of one bar range: staves (1-2),(3-4),(5-6), full res."""
import json, sys
from PIL import Image
d, page, s, x0, x1, out = sys.argv[1], int(sys.argv[2]), int(sys.argv[3]), int(sys.argv[4]), int(sys.argv[5]), sys.argv[6]
st = json.load(open(f"{d}/raw{page:02d}_staves.json"))["staves"]
im = Image.open(f"{d}/raw{page:02d}-{page:02d}.png")
for i, (a, b) in enumerate([(0, 1), (2, 3), (4, 5)]):
    A, B = (s - 1) * 6 + a, (s - 1) * 6 + b
    y0 = int(min(st[A][0], st[A][2]) - 140); y1 = int(max(st[B][1], st[B][3]) + 140)
    c = im.crop((x0, max(0, y0), x1, min(im.height, y1)))
    k = min(1.0, 1400 / max(c.width, c.height)) if c.width > 1400 else 1.0
    c.resize((int(c.width * k), int(c.height * k))).save(f"{out}_{i+1}.png")
