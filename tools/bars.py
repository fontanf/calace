#!/usr/bin/env python3
"""bars.py DIR PAGE SYS OUTDIR X0 X1 X2 ... -- per-bar crops (annotated), staves 1-3 and 4-6.
X values are barline positions in raw page pixels (from sysview: raw = view_x * W / 1600)."""
import json, sys, os
from PIL import Image
d, page, s, out = sys.argv[1], int(sys.argv[2]), int(sys.argv[3]), sys.argv[4]
xs = [int(v) for v in sys.argv[5:]]
os.makedirs(out, exist_ok=True)
st = json.load(open(f"{d}/raw{page:02d}_staves.json"))["staves"]
im = Image.open(f"{d}/raw{page:02d}_annot.png")
for b in range(len(xs) - 1):
    for half, (k0, k1) in enumerate([(0, 2), (3, 5)]):
        a, z = (s - 1) * 6 + k0, (s - 1) * 6 + k1
        y0 = int(min(st[a][0], st[a][2]) - 170); y1 = int(max(st[z][1], st[z][3]) + 170)
        c = im.crop((xs[b] - 50, max(0, y0), xs[b + 1] + 50, min(im.height, y1)))
        k = min(1.4, 1500 / c.height)
        c.resize((int(c.width * k), int(c.height * k))).save(f"{out}/p{page}s{s}b{b+1}_{'AB'[half]}.png")
