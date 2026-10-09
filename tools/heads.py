#!/usr/bin/env python3
"""Detect filled noteheads on a manuscript page and report their pitch.

usage: heads.py DIR PAGE [--sys N] [--clefs t,t,t,t,b,b] [--x0 X --x1 X] [--png OUT]

Needs DIR/rawPP-PP.png and DIR/rawPP_staves.json (from annotate.py).
Prints, per staff, the detected heads left to right as  x:PITCH  (pitch names
without accidentals; key signature / accidentals must be applied by the reader).
With --png, writes an image with each detected head labelled, for checking.
"""
import argparse, json
import numpy as np
from PIL import Image, ImageDraw, ImageFont
from scipy import ndimage

NAMES = "CDEFGAB"
BOTTOM = {"t": 2, "b": -10}  # diatonic step of bottom line: E4 / G2 (0 = C4)


def name(step):
    o, n = divmod(step, 7)
    return f"{NAMES[n]}{o + 4}"


def local_lines(ink, cx, t, b, space):
    """Refine top/bottom staff line y near x=cx from the horizontal ink profile."""
    x0 = int(max(0, cx - 260)); x1 = int(min(ink.shape[1], cx + 260))
    y0 = int(t - space); y1 = int(b + space)
    prof = ink[y0:y1, x0:x1].mean(axis=1)
    rows = np.where(prof > 0.5)[0]
    if len(rows) == 0:
        return None
    groups = []
    for r in rows:
        if groups and r - groups[-1][-1] <= 2:
            groups[-1].append(r)
        else:
            groups.append([r])
    ys = [y0 + float(np.mean(g)) for g in groups]
    # pick 5 lines best matching the expected spacing
    best = None
    for i in range(len(ys) - 4):
        five = ys[i:i + 5]
        gaps = np.diff(five)
        err = np.abs(gaps - space).max()
        if err < 0.3 * space and (best is None or err < best[0]):
            best = (err, five[0], five[4])
    return None if best is None else (best[1], best[2])


def main():
    ap = argparse.ArgumentParser()
    ap.add_argument("dir"); ap.add_argument("page", type=int)
    ap.add_argument("--sys", type=int, default=0)
    ap.add_argument("--clefs", default="t,t,t,t,b,b")
    ap.add_argument("--x0", type=int, default=0); ap.add_argument("--x1", type=int, default=10**6)
    ap.add_argument("--png")
    ap.add_argument("--staves", default="")
    a = ap.parse_args()
    meta = json.load(open(f"{a.dir}/raw{a.page:02d}_staves.json"))
    staves, W = meta["staves"], meta["W"]
    gray = Image.open(f"{a.dir}/raw{a.page:02d}-{a.page:02d}.png").convert("L")
    ink = np.array(gray) < 140
    H = ink.shape[0]
    clefs = a.clefs.split(",")

    # Remove thin horizontal lines (staff/ledger lines) and thin stems by opening:
    # a notehead survives an opening with a ~ (0.45*space) square element.
    space = np.median([(s[1] - s[0]) / 4 for s in staves])
    k = max(3, int(space * 0.45))
    body = ndimage.binary_opening(ink, structure=np.ones((k, k)))
    lab, n = ndimage.label(body)
    objs = ndimage.find_objects(lab)

    out = []
    for i, sl in enumerate(objs):
        h = sl[0].stop - sl[0].start; w = sl[1].stop - sl[1].start
        area = (lab[sl] == i + 1).sum()
        if not (0.5 * space <= h <= 1.6 * space and 0.7 * space <= w <= 2.4 * space):
            continue
        if area < 0.35 * space * space:
            continue
        cy, cx = ndimage.center_of_mass(lab[sl] == i + 1)
        cy += sl[0].start; cx += sl[1].start
        if not (a.x0 <= cx <= a.x1):
            continue
        # nearest staff (by vertical distance to the staff's middle line at cx)
        best = None
        for si, (t0, b0, t1, b1) in enumerate(staves):
            t = t0 + (t1 - t0) * cx / W; b = b0 + (b1 - b0) * cx / W
            d = abs(cy - (t + b) / 2)
            if best is None or d < best[0]:
                best = (d, si, t, b)
        d, si, t, b = best
        if d > (b - t) / 2 + 3.5 * space:
            continue
        loc = local_lines(ink, cx, t, b, space)
        if loc:
            t, b = loc
        sp = (b - t) / 8  # half-space
        pos = round((b - cy) / sp)
        clef = clefs[si % len(clefs)]
        out.append((si, cx, cy, name(BOTTOM[clef] + pos), w, h))

    nsys = len(staves) // len(clefs)
    for si in range(len(staves)):
        sysn = si // len(clefs) + 1
        if a.sys and sysn != a.sys:
            continue
        heads = sorted([o for o in out if o[0] == si], key=lambda o: o[1])
        print(f"sys {sysn} staff {si % len(clefs) + 1}: " +
              " ".join(f"{int(o[1])}:{o[3]}" for o in heads))

    if a.png:
        rgb = gray.convert("RGB"); dr = ImageDraw.Draw(rgb)
        try:
            font = ImageFont.truetype("DejaVuSans-Bold.ttf", 22)
        except OSError:
            font = ImageFont.load_default()
        for si, cx, cy, nm, w, h in out:
            if a.sys and si // len(clefs) + 1 != a.sys:
                continue
            dr.rectangle((cx - w / 2, cy - h / 2, cx + w / 2, cy + h / 2), outline=(255, 0, 0), width=2)
            dr.text((cx + w / 2 + 2, cy - 12), nm, fill=(220, 0, 0), font=font)
        x0 = max(0, a.x0); x1 = min(W, a.x1)
        if a.sys:
            lo, hi = (1, len(clefs)) if not a.staves else map(int, a.staves.split("-"))
            s0 = staves[(a.sys - 1) * len(clefs) + lo - 1]; s1 = staves[(a.sys - 1) * len(clefs) + hi - 1]
            y0 = int(min(s0[0], s0[2]) - 200); y1 = int(max(s1[1], s1[3]) + 180)
            rgb = rgb.crop((x0, max(0, y0), x1, min(H, y1)))
        rgb.save(a.png)


main()
