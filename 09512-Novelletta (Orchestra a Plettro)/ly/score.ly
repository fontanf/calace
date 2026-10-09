\version "2.26.0"

\include "instruments.ly"

\paper {
  #(set-paper-size "a4")
}

\score {
  <<
    \new StaffGroup = "mandolini" <<
      \mandolinoIStaff
      \mandolinoIIStaff
    >>
    \mandoleStaff
    \chitarreStaff
    \mandoloncelliStaff
    \bassoStaff
  >>
  \layout {
    \context {
      \Score
      barNumberVisibility = #all-bar-numbers-visible
      \override BarNumber.break-visibility = ##(#f #t #t)
    }
  }
  \midi { }
}
