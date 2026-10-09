#!/bin/sh
# Build the full score and all parts into ly/out/.
# usage: ./build.sh            (everything)
#        ./build.sh score      (score only)
LILY=${LILY:-$HOME/Programmes/lilypond-2.26.0/bin/lilypond}
cd "$(dirname "$0")" || exit 1
mkdir -p out
status=0
targets=${1:-all}
if [ "$targets" = all ] || [ "$targets" = score ]; then
  "$LILY" -l WARNING -I "$PWD" -o out/score score.ly || status=1
fi
if [ "$targets" = all ] || [ "$targets" = parts ]; then
  for f in parts/*.ly; do
    "$LILY" -l WARNING -I "$PWD" -o "out/part-$(basename "$f" .ly)" "$f" || status=1
  done
fi
exit $status
