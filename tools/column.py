#!/usr/bin/env python3
"""column.py WORKDIR PAGE STAFF X0 X1 [--clef t|b]

Print the ink blobs in a narrow vertical strip (e.g. one chord) of one staff
(STAFF is 1-based over the whole page) with the pitch at each blob's top,
centre and bottom. Staff lines are removed first. Useful for stacks of hollow
noteheads, where each head is an arc + a bowl: one head spans about one space.
"""
import argparse, json
import numpy as np
from PIL import Image

NAMES = "CDEFGAB"
BOTTOM = {"t": 2, "b": -10}

def name(step):
    o, n = divmod(step, 7)
    return f"{NAMES[n]}{o + 4}"

ap = argparse.ArgumentParser()
ap.add_argument("dir"); ap.add_argument("page", type=int); ap.add_argument("staff", type=int)
ap.add_argument("x0", type=int); ap.add_argument("x1", type=int)
ap.add_argument("--clef", default="")
a = ap.parse_args()
meta = json.load(open(f"{a.dir}/raw{a.page:02d}_staves.json"))
W = meta["W"]; t0, b0, t1, b1 = meta["staves"][a.staff - 1]
cx = (a.x0 + a.x1) / 2
t = t0 + (t1 - t0) * cx / W; b = b0 + (b1 - b0) * cx / W
clef = a.clef or ("b" if (a.staff - 1) % 6 >= 4 else "t")
hs = (b - t) / 8
img = np.array(Image.open(f"{a.dir}/raw{a.page:02d}-{a.page:02d}.png").convert("L")) < 140
y0 = int(t - 9 * hs); y1 = int(b + 9 * hs)
strip = img[y0:y1, a.x0:a.x1]
prof = strip.mean(axis=1)
# drop staff lines: rows whose ink is a thin full-width line
wide = img[y0:y1, max(0, a.x0 - 150):a.x0 - 20].mean(axis=1) > 0.5
prof[wide] = 0
rows = np.where(prof > 0.15)[0]
groups = []
for r in rows:
    if groups and r - groups[-1][-1] <= 2:
        groups[-1].append(r)
    else:
        groups.append([r])
def pitch(y):
    return name(BOTTOM[clef] + round((b - y) / hs))
for g in groups:
    ya, yb = y0 + g[0], y0 + g[-1]
    if yb - ya < 3:
        continue
    print(f"y {ya}-{yb} (h={yb-ya}, {((yb-ya)/(2*hs)):.1f} spaces): top {pitch(ya)}  mid {pitch((ya+yb)/2)}  bottom {pitch(yb)}")
