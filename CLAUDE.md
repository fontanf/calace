# Calace transcriptions

This repository turns handwritten manuscripts by Raffaele Calace into LilyPond
scores, with a full score and separate parts for each piece.

**Keep this file up to date.** Whenever you learn something that would help a
later transcription, add it here in the same session. That includes a reading
convention, a correction the user made, a LilyPond detail, or a change to the
tools or workflow. Write general lessons in the relevant section, and facts
about one piece in that piece's entry under "Scores".

## Repository layout

```
<catalogue number>-<title> (<ensemble>)/   one directory per piece
    <scan>.pdf                             manuscript scan (NOT versioned, see below)
    ly/
        global.ly        header, key/time/tempo, shared `marks` (rehearsal letters, repeat barlines, final bar)
        music/<part>.ly  music of one part, one bar per line
        instruments.ly   one \new Staff definition per part, shared by score and parts
        score.ly         full score (+ MIDI)
        parts/<part>.ly  one file per part
        build.sh         builds into ly/out/ (score.pdf, score.midi, part-*.pdf)
        NOTES.md         editorial changes + list of uncertain readings
tools/                   helpers for reading the scans (Python, see below)
build.sh                 builds every piece; `--dist` also copies the PDFs to dist/
.github/workflows/build.yml
```

The repository never contains PDF or MIDI files (see `.gitignore`), and that
includes the manuscript scans. The user keeps the scans locally in each
piece's directory. On every push to `master`, CI installs LilyPond, runs
`./build.sh --dist` and replaces the GitHub release `latest` with the new
PDFs. Their names are prefixed with the piece, e.g. `09512-Novelletta-score.pdf`.

## LilyPond

- Use LilyPond **2.26.0**. Locally it is at `~/Programmes/lilypond-2.26.0/bin/lilypond`.
  The `lilypond` on PATH is an older 2.22, so do not use it. The build scripts
  read the binary from `$LILY` and default to the local 2.26 path.
- Build: `./build.sh`, or `<piece>/ly/build.sh` for one piece (`score` or `parts` as argument).
  The build must finish with no warnings. Bar-check failures show up as
  `échec du contrôle de mesure`, because the local LilyPond prints messages in French.
- Conventions in `music/*.ly`:
  - Absolute pitches.
  - One bar per line, ending with a bar check and the bar number:
    `  d''2( cis''8 b') |      % 5`.
  - A `% --- manuscript page N (catalogue-NN) ---` comment at each page break.
  - `% CHECK <reason>` on any doubtful reading.
  - `% EDITORIAL: ...` on any deliberate change, which also goes in `NOTES.md`.
- Two voices in one bar: keep the lower part in the main voice so that hairpins
  can continue across barlines:
  `<< { \voiceTwo g'2.\< } \new Voice { \voiceOne cis''4~( cis''8 b' ais'4) } >> \oneVoice`.
- Rehearsal letters go in `marks` in `global.ly` (`\mark \default` after `s2.*N`),
  never in a single part, so that every part gets them. The same applies to
  repeat barlines and the final `\bar "|."`.
  Put a `\barNumberCheck #N` before every event in `marks`. Counting the
  `s2.*N` skips by hand went wrong once (C, the repeats and every later letter
  were one bar early, and the user caught it), and these checks make the build
  warn instead. The final barline goes after the last bar, so its check is last bar + 1.
- Key changes are written in each part's music, e.g. `\key b \major`.
- `instruments.ly` sets `Hairpin.minimum-length = 5`, because Calace often puts
  `< >` over a single long note.
- `NOTES.md` can be regenerated from the `% CHECK` comments with the small
  Python snippet used for the Novelletta (group by manuscript page, part, bar).

## Workflow that worked

1. Render a page and the staff positions: `tools/annotate.py SCAN.pdf PAGE WORKDIR`
   (PDF page 1 is usually the title page). Work in the scratchpad, not in the repo.
2. View a whole system to find the barlines: `tools/sysview.py WORKDIR PAGE SYS out.png`.
   Image x × (page width / 1600) gives raw x.
3. For each pair of bars:
   - `tools/look.sh WORKDIR PAGE SYS X0 X1` detects noteheads and prints their
     pitch names, and writes labelled overlays.
   - `tools/rawbar.py` gives full-resolution crops, for accidentals, rhythm,
     slurs and dynamics.
4. Check every reading against the harmony of all the parts before writing it down.
5. Append the bars with a heredoc, rebuild, and fix any bar-check failure at once.
6. Start with one page and let the user proofread it before going on. Accuracy
   on page 1 calibrates everything after it.

Tool notes:
- The tools need `.venv` (`python3 -m venv .venv && .venv/bin/pip install -r tools/requirements.txt`)
  and `pdftoppm` (poppler).
- Several tools assume **6 staves per system** with the clef pattern
  `t,t,t,t,b,b`. Generalise them, or pass `--clefs`, for other layouts.
- `heads.py` gets pitches right when it finds a note. It misses noteheads that
  have a ledger line through them, it cannot see hollow noteheads well, and it
  knows nothing about accidentals or rhythm. Treat it as an aid, not as truth.
- Barline detection on handwriting did not work, so locate barlines by eye.

## Reading Calace's handwriting

- Hollow noteheads (half and whole notes) are drawn as an upper arc plus a
  separate lower bowl. The pitch is the middle of the two.
- Notes just above the staff are drawn high. Check where they sit against the
  ledger lines.
- **♭ and ♮ look almost the same.** Use the harmony to decide.
- A quarter rest looks like "λ", an eighth rest like "7", and an eighth flag often like "♭".
- Dynamics are written **below the staff they belong to**. A lone `p` or `pp`
  under the guitar's bass notes is *piano*, not a thumb mark (confirmed by the
  user). There are almost no fingerings.
- He writes many hairpins (often `< >` over a single long note) and staccato
  dots on accompaniment eighths. Look below every staff for them, as they are
  easy to miss (the user caught omissions on the first page).
- A sign like "Ω" over a short line is a **rehearsal letter** (A, B, C…).
- Systems after the first usually do not repeat the clefs and key signature,
  but the key signature still applies.
- The guitar's bass line and the Basso part usually play the same notes, so
  check them against each other (user tip). Mandoloncelli often double them too.
- The Mandolini II part may be divided ("in orchestra divisi"). Write it as two voices on one staff.

## Scores

### 09512 — Novelletta, Op. 95 (Orchestra a Plettro)
- Parts: Mandolini I and II, Mandole, Chitarre (treble clef); Mandoloncelli and Basso (bass clef).
- B minor, 3/4, half note = 72. The B major tremolo section starts at C (bar 45)
  and has repeats. The opening returns at bar 61.
- 10 manuscript pages, 111 bars. Rehearsal letters: A = 13, B = 31, C = 45, D = 59, E = 85, F = 100.
- Status: the first draft is complete. The user has proofread bars 1–26 only.
  Bars 27–111 still carry `% CHECK` marks, listed in `ly/NOTES.md`. Bars 86–111
  (manuscript pages 8–10) are the least reliable, especially the *fff* climax
  (bars 92–96) and the ending.
- Known layout to-do: consecutive empty bars are not merged into multi-bar rests in the parts.
