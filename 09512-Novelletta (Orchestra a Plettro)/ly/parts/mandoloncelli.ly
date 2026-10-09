\version "2.26.0"

\include "instruments.ly"

\header { instrument = "Mandoloncelli" }

\paper { #(set-paper-size "a4") }

\score {
  \compressMMRests \mandoloncelliStaff
  \layout { \context { \Staff \remove Instrument_name_engraver } }
}
