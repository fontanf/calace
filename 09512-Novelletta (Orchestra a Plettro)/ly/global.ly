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
  % Each \barNumberCheck makes the build warn if a skip count is wrong.
  s2.*12
  \barNumberCheck #13 \mark \default                 % A
  s2.*14
  \barNumberCheck #27 \tempo "Un poco più"
  s2.*4
  \barNumberCheck #31 \mark \default                 % B
  s2.*14
  \barNumberCheck #45 \bar ".|:-||" \mark \default    % C, repeat bars 45-48
  s2.*4
  \barNumberCheck #49 \bar ":|.|:"                    % repeat bars 49-52
  s2.*4
  \barNumberCheck #53 \bar ":|."
  s2.*6
  \barNumberCheck #59 \mark \default                 % D
  s2.*2
  \barNumberCheck #61 \bar "||"                       % key change
  s2.*24
  \barNumberCheck #85 \mark \default                 % E
  s2.*15
  \barNumberCheck #100 \mark \default                % F
  s2.*12
  \barNumberCheck #112 \bar "|."                      % end, after bar 111
}

global = <<
  {
    \key b \minor
    \time 3/4
    \tempo \markup { "M.M." } 2 = 72
  }
  \marks
>>
