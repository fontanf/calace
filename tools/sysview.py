#!/usr/bin/env python3
"""sysview.py DIR PAGE SYS OUT -- whole system, raw, 1600px wide (for bar structure)."""
import json, sys
from PIL import Image
d, page, s, out = sys.argv[1], int(sys.argv[2]), int(sys.argv[3]), sys.argv[4]
st = json.load(open(f"{d}/raw{page:02d}_staves.json"))["staves"]
im = Image.open(f"{d}/raw{page:02d}-{page:02d}.png")
y0 = int(min(st[(s-1)*6][0], st[(s-1)*6][2]) - 200); y1 = int(max(st[s*6-1][1], st[s*6-1][3]) + 160)
c = im.crop((0, max(0, y0), im.width, min(im.height, y1)))
c.resize((1600, int(c.height * 1600 / c.width))).save(out)
