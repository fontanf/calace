#!/usr/bin/env python3
"""Render a manuscript page with pitch guides overlaid on each staff.

usage: annotate.py PDF PAGE OUTDIR [--clefs t,t,t,t,b,b] [--cols N]
Produces OUTDIR/pPAGE_sSYS_cCOL.png crops (each system split in N columns).
"""
import argparse, os, subprocess
import numpy as np
from PIL import Image, ImageDraw, ImageFont

DPI = 400
NAMES = "CDEFGAB"

def step_name(step):  # step: diatonic index, 0 = C4
    o, n = divmod(step, 7)
    return f"{NAMES[n]}{o + 4}"

BOTTOM_LINE = {"t": 2, "b": -10}  # E4, G2

def detect_lines(img, x0):
    band = img[:, x0:x0 + 250].mean(axis=1)
    rows = np.where(band > 0.45)[0]
    groups = []
    for y in rows:
        if groups and y - groups[-1][-1] <= 3:
            groups[-1].append(y)
        else:
            groups.append([y])
    return [float(np.mean(g)) for g in groups]

def staves_at(img, x0):
    ys = detect_lines(img, x0)
    staves, i = [], 0
    while i + 4 < len(ys):
        five = ys[i:i + 5]
        gaps = np.diff(five)
        if gaps.max() < 45 and gaps.min() > 20:
            staves.append(five)
            i += 5
        else:
            i += 1
    return staves

def main():
    ap = argparse.ArgumentParser()
    ap.add_argument("pdf"); ap.add_argument("page", type=int); ap.add_argument("out")
    ap.add_argument("--clefs", default="t,t,t,t,b,b")
    ap.add_argument("--cols", type=int, default=4)
    a = ap.parse_args()
    os.makedirs(a.out, exist_ok=True)
    base = os.path.join(a.out, f"raw{a.page:02d}")
    png = base + f"-{a.page:02d}.png"
    if not os.path.exists(png):
        subprocess.run(["pdftoppm", "-r", str(DPI), "-png", "-f", str(a.page),
                        "-l", str(a.page), a.pdf, base], check=True)
        cand = [f for f in os.listdir(a.out) if f.startswith(f"raw{a.page:02d}-")]
        os.rename(os.path.join(a.out, cand[0]), png)
    gray = Image.open(png).convert("L")
    img = np.array(gray) < 128
    W, H = gray.size
    xs = [int(W * f) for f in (0.15, 0.35, 0.55, 0.75, 0.9)]
    xs = [int(W * f) for f in np.linspace(0.12, 0.92, 9)]
    per_x = [staves_at(img, x) for x in xs]
    ref = max(per_x, key=len)
    n = len(ref)
    # match each staff across columns by nearest top line
    tracks = [[] for _ in range(n)]
    for x, st in zip(xs, per_x):
        for k, r in enumerate(ref):
            best = min(st, key=lambda s5: abs(s5[0] - r[0]), default=None)
            if best is not None and abs(best[0] - r[0]) < 40:
                tracks[k].append((x, best))
    clefs = a.clefs.split(",")
    rgb = gray.convert("RGB")
    d = ImageDraw.Draw(rgb, "RGBA")
    try:
        font = ImageFont.truetype("DejaVuSans.ttf", 16)
    except OSError:
        font = ImageFont.load_default()
    staff_info = []
    for k in range(n):
        tx = [t[0] for t in tracks[k]]
        ct = np.polyfit(tx, [t[1][0] for t in tracks[k]], 1)
        cb = np.polyfit(tx, [t[1][4] for t in tracks[k]], 1)
        clef = clefs[k % len(clefs)]
        staff_info.append((ct, cb, clef))
        for pos in range(-8, 17):  # half-spaces from bottom line
            if pos % 2 == 0 and 0 <= pos <= 8:
                continue  # real staff line
            step = BOTTOM_LINE[clef] + pos
            col = (255, 0, 0, 70) if pos % 2 == 0 else (0, 120, 255, 45)
            pts = []
            for x in (0, W):
                t = np.polyval(ct, x); b = np.polyval(cb, x)
                pts.append((x, b - pos * (b - t) / 8))
            d.line(pts, fill=col, width=1)
        for x in range(60, W, 330):
            t = np.polyval(ct, x); b = np.polyval(cb, x)
            for pos in range(-6, 15):
                y = b - pos * (b - t) / 8
                d.text((x, y - 8), step_name(BOTTOM_LINE[clef] + pos), fill=(200, 0, 160, 255), font=font)
    rgb.save(base + "_annot.png")
    import json
    json.dump({"W": W, "staves": [[float(np.polyval(ct, 0)), float(np.polyval(cb, 0)),
                                   float(np.polyval(ct, W)), float(np.polyval(cb, W))]
                                  for ct, cb, _ in staff_info]},
              open(base + "_staves.json", "w"))
    per_sys = len(clefs)
    nsys = n // per_sys
    bounds = np.linspace(0, W, a.cols + 1).astype(int)
    for s in range(nsys):
        for band in range(0, per_sys, 2):
            first = staff_info[s * per_sys + band]
            last = staff_info[s * per_sys + min(band + 1, per_sys - 1)]
            y0 = int(min(np.polyval(first[0], 0), np.polyval(first[0], W)) - 170)
            y1 = int(max(np.polyval(last[1], 0), np.polyval(last[1], W)) + 150)
            for c in range(a.cols):
                x0 = max(0, bounds[c] - 100); x1 = min(W, bounds[c + 1] + 100)
                rgb.crop((x0, max(0, y0), x1, min(H, y1))).save(
                    os.path.join(a.out, f"p{a.page:02d}_s{s+1}_c{c+1}_st{band+1}-{band+2}.png"))
    print(f"{n} staves, {nsys} systems")
    for k, (ct, cb, clef) in enumerate(staff_info):
        print(f"staff {k+1}: top {np.polyval(ct, W/2):.0f} bottom {np.polyval(cb, W/2):.0f} (x={W/2:.0f})")

main()
