#!/usr/bin/env python3
"""zoom.py ANNOT_PNG X0 Y0 X1 Y1 OUT [scale]  -- crop+upscale a region of an annotated page"""
import sys
from PIL import Image
f, x0, y0, x1, y1, out = sys.argv[1], *map(int, sys.argv[2:6]), sys.argv[6]
k = float(sys.argv[7]) if len(sys.argv) > 7 else 2
im = Image.open(f).crop((x0, y0, x1, y1))
im.resize((int(im.width * k), int(im.height * k)), Image.LANCZOS).save(out)
