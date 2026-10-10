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
- Regenerate the list in `NOTES.md` after each batch of changes:
  `.venv/bin/python tools/checks_to_notes.py "<piece>/ly" 1:1-13 2:14-26 ...`
  (manuscript page → bar range).

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
  user). Fingerings are rare, but **include them when present** (user's
  request): inside a chord, put one on each note, `<g'-0 b'-0 e''-0>`. Numbers
  written beside a chord are listed top to bottom on the page.
- A stack of short strokes above a note is usually **ledger lines** for a very
  high note, not a chord or tremolo. For example guitar bar 44 of the
  Novelletta is a single F♯6, which I first misread as chords.
- He writes many hairpins (often `< >` over a single long note) and staccato
  dots on accompaniment eighths. Look below every staff for them, as they are
  easy to miss (the user caught omissions on the first page).
- A sign like "Ω" over a short line is a **rehearsal letter** (A, B, C…).
- Systems after the first usually do not repeat the clefs and key signature,
  but the key signature still applies.
- The guitar's bass line and the Basso part usually play the same notes, so
  check them against each other (user tip). Mandoloncelli often double them too.
- The Mandolini II part may be divided ("in orchestra divisi"). Write it as two voices on one staff.

## Lessons from the user's corrections (Novelletta, bars 1–50)

These are the systematic errors of the first draft. Check for each of them
while reading:
- **Never fill a gap from a pattern.** When a bar was hard to read, I filled it
  with a figure borrowed from another part (the mandolins) or from an earlier
  bar. Every such bar turned out wrong (guitar bars 29, 48, 49, 50). Read every
  note, and mark `% CHECK` instead of guessing a plausible figure.
- **Guitar texture is thinner than it looks.** The guitar often plays a single
  bass note, a melodic line, or two voices (bars 16, 29, 41, 42, 47), where the
  first draft had full chords.
- **Ledger lines.** A pile of short horizontal strokes is ledger lines around
  one note, not a chord or tremolo strokes (bars 37, 44). Count the ledger lines
  to fix the octave of low guitar notes: notes on the 1st, 2nd and 3rd ledger
  below the staff are C4, A3 and F3; notes hanging under them are B3, G3 and E3.
- **Crowded ledger lines below the staff.** Calace squeezes them together, so a
  low note's *position* can read a third too high (E3 looks like G3: guitar
  bars 6, 62, 72). Trust the number of ledger strokes over the distance, and
  cross-check with the Basso.
- The column tool's pitch labels (`tools/column.py`) merge heads in dense
  chords. Read chords against the `annotate.py` overlay (calibrated on bar 50),
  and use `heads.py` only as a cross-check.
- **Hollow heads** are two strokes, an arc plus a bowl. Do not count the arc as
  an extra note (the bogus B in Mandolini I bar 49).
- **Read the harmony of the whole bar first.** In the second pass, working out
  the chord from the bass and the clearer parts (e.g. bars 92–99 of the
  Novelletta: F7/A → B → C♯dim7 → F♯7 → B7 → C♯ø7 → F♯7) fixed many misread
  inner notes and basses. Calace's progressions are conventional: circles of
  fifths, ii–V, diminished sevenths, and a tonic pedal at the end.
- **Tremolo strokes versus ledger lines.** In the tremolo sections, short strokes *on the stem*
  are tremolo marks; strokes stacked *under or over the head* are ledger lines.
- **Repeated passages are often written an octave higher** when they return
  (Mandolini I bars 100–102 = bars 45–47 up an octave). Compare with the
  first occurrence, but still read the octave from the scan.
- **Grace notes.** Calace writes pairs of small notes, double-beamed and
  slurred to the main note, often a lower and upper neighbour such as C♯–D♯→C♯
  (guitar bars 103–106). Write them as `\grace { cis''16[( dis''] } cis''4)`.
  I first left them out, so look for them at every beat.
- **Key signature in a key change.** In the B major section, an unmarked G is G♯ (bar 49).

## Scores

### 09512 — Novelletta, Op. 95 (Orchestra a Plettro)
- Parts: Mandolini I and II, Mandole, Chitarre (treble clef); Mandoloncelli and Basso (bass clef).
- B minor, 3/4, half note = 72. The B major tremolo section starts at C (bar 45)
  and has repeats. The opening returns at bar 61.
- 10 manuscript pages, 111 bars. Rehearsal letters: A = 13, B = 31, C = 45, D = 59, E = 85, F = 100.
- Status: the user has proofread bars 1–26 and part of 27–50 (guitar, mostly).
  A second pass re-read the guitar from bar 50 and every part in bars 86–111.
  The remaining doubts are the `% CHECK` comments listed in `ly/NOTES.md`.
- Known layout to-do: consecutive empty bars are not merged into multi-bar rests in the parts.
