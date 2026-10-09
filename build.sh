#!/bin/sh
# Build every score of the repository (each directory containing ly/build.sh).
# With --dist, also copy the PDFs to dist/ with the score name as prefix.
# usage: ./build.sh [--dist]
set -e
cd "$(dirname "$0")"
status=0
[ "$1" = "--dist" ] && rm -rf dist && mkdir -p dist
for b in */ly/build.sh; do
  score=$(dirname "$(dirname "$b")")
  echo "== $score"
  "$b" || status=1
  if [ "$1" = "--dist" ]; then
    prefix=$(printf '%s' "$score" | sed 's/ *(.*)//; s/ /_/g')
    for pdf in "$score"/ly/out/*.pdf; do
      cp "$pdf" "dist/$prefix-$(basename "$pdf")"
    done
  fi
done
exit $status
