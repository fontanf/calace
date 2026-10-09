#!/usr/bin/env python3
"""append.py PART.ly HEADER < body  -- append bars before the final closing brace."""
import sys
f, header = sys.argv[1], sys.argv[2]
body = sys.stdin.read().rstrip("\n") + "\n"
s = open(f).read().rstrip()
assert s.endswith("}")
s = s[:-1].rstrip() + "\n  % --- " + header + " ---\n" + body + "}\n"
open(f, "w").write(s)
