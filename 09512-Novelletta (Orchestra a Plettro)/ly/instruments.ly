\version "2.26.0"

\include "global.ly"
\include "music/mandolino1.ly"
\include "music/mandolino2.ly"
\include "music/mandole.ly"
\include "music/chitarre.ly"
\include "music/mandoloncelli.ly"
\include "music/basso.ly"

% One staff definition per instrument, shared by the score and the parts.
mandolinoIStaff = \new Staff \with {
  instrumentName = "Mandolini I"
  shortInstrumentName = "Mand. I"
  midiInstrument = "acoustic guitar (steel)"
} << \global { \clef treble \mandolinoI } >>

mandolinoIIStaff = \new Staff \with {
  instrumentName = "Mandolini II"
  shortInstrumentName = "Mand. II"
  midiInstrument = "acoustic guitar (steel)"
} << \global { \clef treble \mandolinoII } >>

mandoleStaff = \new Staff \with {
  instrumentName = "Mandole"
  shortInstrumentName = "Mdl."
  midiInstrument = "acoustic guitar (steel)"
} << \global { \clef treble \mandole } >>

chitarreStaff = \new Staff \with {
  instrumentName = "Chitarre"
  shortInstrumentName = "Chit."
  midiInstrument = "acoustic guitar (nylon)"
} << \global { \clef treble \chitarre } >>

mandoloncelliStaff = \new Staff \with {
  instrumentName = "Mandoloncelli"
  shortInstrumentName = "Mdc."
  midiInstrument = "acoustic guitar (steel)"
} << \global { \clef bass \mandoloncelli } >>

bassoStaff = \new Staff \with {
  instrumentName = "Basso"
  shortInstrumentName = "B."
  midiInstrument = "contrabass"
} << \global { \clef bass \basso } >>

% Layout defaults shared by the score and the parts.
\layout {
  \context {
    \Voice
    % Calace's hairpins often span a single long note; keep them readable.
    \override Hairpin.minimum-length = #5
  }
}
