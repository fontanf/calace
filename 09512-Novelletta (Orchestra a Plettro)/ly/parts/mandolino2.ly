\version "2.26.0"

\include "instruments.ly"

\header { instrument = "Mandolini II" }

\paper { #(set-paper-size "a4") }

\score {
  \compressMMRests \mandolinoIIStaff
  \layout { \context { \Staff \remove Instrument_name_engraver } }
}
