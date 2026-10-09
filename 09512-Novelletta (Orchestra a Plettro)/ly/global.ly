\version "2.26.0"

\header {
  title = "Novelletta"
  subtitle = "per Orchestra a Plettro"
  composer = "Raffaele Calace"
  opus = "Op. 95"
  tagline = ##f
}

% Rehearsal marks (letters in the manuscript), shared by score and parts.
marks = {
  \set Score.rehearsalMarkFormatter = #format-mark-box-alphabet
  s2.*12
  \mark \default                       % A = bar 13
  s2.*14
  \tempo "Un poco più"                  % bar 27
  s2.*4
  \mark \default                       % B = bar 31
  s2.*13
  \bar "||"                             % end of bar 44
  \bar ".|:" \mark \default             % C = bar 45, repeat bars 45-48
  s2.*4
  \bar ":|.|:"                          % repeat bars 49-52
  s2.*4
  \bar ":|."
  s2.*6
  \mark \default                       % D = bar 59
  s2.*2
  \bar "||"                             % key change at bar 61
  s2.*24
  \mark \default                       % E = bar 85
  s2.*15
  \mark \default                       % F = bar 100
  s2.*11
  \bar "|."                             % end
}

global = <<
  {
    \key b \minor
    \time 3/4
    \tempo \markup { "M.M." } 2 = 72
  }
  \marks
>>
