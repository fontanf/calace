#!/usr/bin/env python3
"""chunks.py DIR PAGE OUTDIR [ncols] -- crops (annotated) of 2-staff bands x ncols per system.
Output: OUTDIR/p{PAGE}_s{sys}_st{a}-{b}_c{col}.png"""
import json, sys, os
from PIL import Image
d, page, out = sys.argv[1], int(sys.argv[2]), sys.argv[3]
n = int(sys.argv[4]) if len(sys.argv) > 4 else 3
os.makedirs(out, exist_ok=True)
st = json.load(open(f"{d}/raw{page:02d}_staves.json"))["staves"]
im = Image.open(f"{d}/raw{page:02d}_annot.png")
W = im.width
x0s = [int(200 + i * (W - 250) / n) for i in range(n + 1)]
for s in range(len(st) // 6):
    for a in (0, 2, 4):
        k0, k1 = s * 6 + a, s * 6 + a + 1
        y0 = int(min(st[k0][0], st[k0][2]) - 150); y1 = int(max(st[k1][1], st[k1][3]) + 150)
        for c in range(n):
            xa, xb = max(0, x0s[c] - 60), min(W, x0s[c + 1] + 60)
            crop = im.crop((xa, max(0, y0), xb, min(im.height, y1)))
            k = 1450 / crop.width
            crop.resize((1450, int(crop.height * k))).save(f"{out}/p{page}_s{s+1}_st{a+1}-{a+2}_c{c+1}.png")
