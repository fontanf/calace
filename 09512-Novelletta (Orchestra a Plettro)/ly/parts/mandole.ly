\version "2.26.0"

\include "instruments.ly"

\header { instrument = "Mandole" }

\paper { #(set-paper-size "a4") }

\score {
  \compressMMRests \mandoleStaff
  \layout { \context { \Staff \remove Instrument_name_engraver } }
}
