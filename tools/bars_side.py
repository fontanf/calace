#!/usr/bin/env python3
"""bars_side.py LY_DIR FIRST LAST -- print each bar of every part, bar by bar."""
import glob, os, re, sys
d, lo, hi = sys.argv[1], int(sys.argv[2]), int(sys.argv[3])
order = ["mandolino1", "mandolino2", "mandole", "chitarre", "mandoloncelli", "basso"]
parts = {}
for f in glob.glob(os.path.join(d, "music", "*.ly")):
    name = os.path.basename(f)[:-3]
    bars = {}
    buf = []
    for line in open(f):
        if line.strip().startswith("%") or line.strip() in ("}",) or re.match(r"^\w+ = \{", line):
            continue
        buf.append(line.rstrip())
        m = re.search(r"\|\s+% (\d+)\b(.*)$", line)
        if m:
            code = " ".join(b.split("%")[0].strip() if "% " in b and b is not buf[-1] else b for b in buf)
            code = re.sub(r"\s*\|\s+% \d+.*$", "", code).strip()
            bars[int(m.group(1))] = (code, "CHECK" in m.group(2))
            buf = []
    parts[name] = bars
for b in range(lo, hi + 1):
    print(f"--- bar {b}")
    for n in order:
        code, chk = parts.get(n, {}).get(b, ("?", False))
        print(f"  {n[:9]:9} {'!' if chk else ' '} {code}")
