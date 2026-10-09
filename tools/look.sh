#!/bin/sh
# look.sh WORKDIR PAGE SYS X0 X1
# Detect noteheads in system SYS of PAGE between raw x positions X0..X1 and
# print their pitches; also write labelled overlays WORKDIR/L_1.png (staves 1-2),
# L_3.png (staves 3-4), L_5.png (staves 5-6).
# WORKDIR must contain the output of annotate.py for that page.
W=$1; shift
ROOT=$(cd "$(dirname "$0")/.." && pwd)
PY="$ROOT/.venv/bin/python"
for b in 1-2 3-4 5-6; do
  "$PY" "$ROOT/tools/heads.py" "$W" "$1" --sys "$2" --x0 "$3" --x1 "$4" --staves $b --png "$W/L_${b%-*}.png" > /dev/null
done
"$PY" "$ROOT/tools/heads.py" "$W" "$1" --sys "$2" --x0 "$3" --x1 "$4"
