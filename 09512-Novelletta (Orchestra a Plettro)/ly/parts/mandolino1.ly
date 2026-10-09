\version "2.26.0"

\include "instruments.ly"

\header { instrument = "Mandolini I" }

\paper { #(set-paper-size "a4") }

\score {
  \compressMMRests \mandolinoIStaff
  \layout { \context { \Staff \remove Instrument_name_engraver } }
}
