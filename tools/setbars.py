#!/usr/bin/env python3
"""setbars.py PART.ly BAR 'code' [BAR 'code' ...]
Replace whole bars (the line(s) ending with `|  % BAR`) in a music file.
code is the music only; the bar check and `% BAR` comment are added, with
an optional trailing comment after '##' (e.g. "fis'2. ## CHECK pitch").
Use BAR:clear to just drop the CHECK note of a bar."""
import re, sys
p = sys.argv[1]; args = sys.argv[2:]
lines = open(p).read().split("\n")
for i in range(0, len(args), 2):
    key, code = args[i], args[i + 1] if i + 1 < len(args) else ""
    clear = key.endswith(":clear")
    bar = int(key.split(":")[0])
    for j, l in enumerate(lines):
        m = re.search(r"\|\s+% (\d+)\b(.*)$", l)
        if m and int(m.group(1)) == bar:
            if clear:
                lines[j] = re.sub(r"(% \d+)\s*CHECK.*$", r"\1", l)
            else:
                music, _, note = code.partition("##")
                c = "  " + music.strip() + " |"
                lines[j] = f"{c:<72}% {bar}" + (f" {note.strip()}" if note.strip() else "")
            break
    else:
        sys.exit(f"bar {bar} not found in {p}")
open(p, "w").write("\n".join(lines))
