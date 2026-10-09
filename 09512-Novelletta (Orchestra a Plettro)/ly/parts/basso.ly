\version "2.26.0"

\include "instruments.ly"

\header { instrument = "Basso" }

\paper { #(set-paper-size "a4") }

\score {
  \compressMMRests \bassoStaff
  \layout { \context { \Staff \remove Instrument_name_engraver } }
}
