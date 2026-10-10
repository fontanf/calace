% Chitarre -- absolute pitches (written pitch), one bar per line.

chitarre = {
  % --- manuscript page 1 (09512-01) ---
  <b b' d'' fis''>4\arpeggio\pp r4 r4\< |                                % 1
  << { \voiceTwo ais4\! cis'\> fis' } \new Voice { \voiceOne <e' g' cis''>2. } >> \oneVoice | % 2
  <b b' d'' fis''>4\p r4 r4\< |                                          % 3
  << { \voiceTwo ais4\! cis'\> fis' } \new Voice { \voiceOne <e' g' cis''>2. } >> \oneVoice | % 4
  b8\! <fis' b'> <b' d''> <fis' b'> <b' d''> <fis' b'> |                 % 5
  e8\< <g' b'> <b' e''> <g' b'> <b' e''> <g' b'> |                       % 6
  fis8 <ais' cis''> <cis'' fis''> <ais' cis''> ais <g' cis'' e''> |      % 7
  b8\! <fis' b'> <b' d''> <fis' b'>\> <b' d''> <fis' b'> |               % 8
  <b b' d'' fis''>4\p r4 r4\< |                                          % 9
  << { \voiceTwo ais4\! cis'\> fis' } \new Voice { \voiceOne <e' g' cis''>2. } >> \oneVoice | % 10
  <b b' d'' fis''>4\p r4 r4 |                                            % 11
  << { \voiceTwo ais4\< cis' fis' } \new Voice { \voiceOne <e' g' cis''>2. } >> \oneVoice | % 12
  <b fis'>8\! g' a'! g' fis' a' |                                        % 13
  % --- manuscript page 2 (09512-02) ---
  <dis' b'>8 c''! fis' c'' b' a' |                                       % 14
  e8 <g' b'> <b' e''> <g' b'> <b' e''> <g' b'> |                         % 15
  << { \voiceOne g8 <g' b'> <g' b'> <g' b'> <g' b'> <g' b'> }
     \new Voice { \voiceTwo g8 e' dis' e' fis' g' } >> \oneVoice |       % 16
  <e gis' d'' e''>8 r8 r4 r4 |                                           % 17
  <d' gis' b' e''>8\pp r8 r4 r4 |                                        % 18
  << { <a' c''! e''>4 s2 } \\ { c'!4 a8( b c' e') } >> |                 % 19
  a'8 b' c''!4 <a' c'' e''>4 |                                           % 20
  d'8 <bes' d'' f''!> <bes' d'' f''> <bes' d'' f''> bes <bes' d'' f''> | % 21
  g8 <bes' d'' g''> <bes' d'' g''> <bes' d'' g''> g <bes' d'' g''> |     % 22
  a8 <a' d''> <d'' fis''> <a' d''> <d'' fis''> <a' d''> |                % 23
  g8 <a' cis''> <cis'' e''> <a' cis''> <cis'' e''> <a' cis''> |          % 24
  fis8 <a' d''> <d'' fis''> <a' d''> <d'' fis''> <a' d''> |              % 25
  d'8 <a' d''> <d'' fis''> <a' d''> <b' f''!> <gis' d''> |               % 26
  % --- manuscript page 3 (09512-03) ---
  cis'8\p <a' cis'' g''> <a' cis'' fis''> <a' cis'' e''> <g' dis''> <g' cis'' e''> | % 27 CHECK beat 3
  bes8 <e' g'> e <e' g' cis''> <e' g' cis''> <e' g' cis''> |             % 28 CHECK
  a8 <e' g' d''> <e' g' cis''> <e' g' b'> <g bes'> <e' a'> |             % 29
  fis8\< <a' d''> <d'' fis''> <a' d''> <d'' fis''> <a' d''> |            % 30
  dis'8\!\pp <a' c''! fis''> <a' c'' fis''> <a' c'' fis''> <a' c'' fis''> <a' c'' fis''> | % 31
  e'8 <g' b' e''> <g' b' e''> <g' b' e''> <g' b' e''> <g' b' e''> |      % 32
  bes8\< <e' g' d''> <e' g' d''> <e' g' d''> g <bes' cis''> |            % 33 CHECK
  fis8\! <a' d'' fis''> <a' d'' fis''> <a' d'' fis''> <a' d'' fis''> <a' d'' fis''> | % 34
  <d' a' d'' fis''>2 <g bes' e'' g''>4\fermata |                        % 35
  a8_\markup \italic "stent." <d' fis' a'> <fis' a' d''> <a' d'' fis''> <d'' fis'' a''> <fis'' a'' d'''> | % 36
  <a'' d''' fis'''>8 r8 r4 r4 |                                          % 37
  a8\mf <e' g'> <e' g'> <e' g'> <e' g'> <e' g'> |                        % 38
  % --- manuscript page 4 (09512-04) ---
  d'4 <a' d'' fis''> cis' |                                              % 39
  b4 <a' d'' fis''> a |                                                  % 40 CHECK beat 3
  fis8 r8 r4 r4 |                                                        % 41
  fis8 r8 r4 r4 |                                                        % 42
  <fis' b' d''>4 <g'-0 b'-0 e''-0> <b'-2 e''-3 g''-1> |                  % 43
  g''16(_\markup \italic "sentito" fis'' eis'' fis'') fis'''4~ fis'''8\fermata r8 | % 44
  \key b \major
  <b dis' fis' b' dis''>2.\pppp |                                        % 45
  <b e' g'! b' e''>2. |                                                  % 46
  <b eis' gis' b' d''!>2( gis4) |                                        % 47 CHECK first chord
  fis8(_\markup \italic "rall." gis b cis') <b fis' b' dis''>4 |        % 48
  <gis gis' b' dis''>4^\markup \italic "Tempo" dis''16( b' cis'' dis'') gis''8 r8 | % 49 CHECK rest of bar
  % --- manuscript page 5 (09512-05) ---
  <fisis fisis' b' dis''>4 dis''16( b' cis'' dis'') fisis''8 r8 |        % 50
  <b fis' b' dis''>2 gis'16( e' fis' gis') |                             % 51
  <dis' b'>8\staccato_\markup \italic "lento" r8 <dis' b'>8\>\staccato r8 <fis'-3 ais'-2 e''-4>8\staccato r8\! | % 52
  <b fis' b' dis''>8\pp r8 r4 r4 |                                       % 53
  <b fis' b' dis''>16(\mf b cis' dis' fis'4 e') |                        % 54
  R2. |                                                                  % 55
  <b fis' b' dis''>16( b cis' dis' fis'4 e') |                           % 56
  dis'16( fis' b' cis'') dis''( cis'' b' cis'') <gis' b' dis''~>4 |      % 57
  dis''16_\markup \italic "molto lento" e''( fis'' g''! fis''8) r8 <e' b' cis'' e''>4\fermata | % 58
  <b fis' b' d''!>2.\ff |                                               % 59
  << { \voiceOne <e' g'!>2^\markup \italic "I° Tempo" <ais' cis''>8 r8 }
     \new Voice { \voiceTwo cis'4 ais fis8 s8 } >> \oneVoice |           % 60
  \key b \minor
  b8\mf <b' d''> <d'' fis''> <b' d''> <d'' fis''> <b' d''> |             % 61
  % --- manuscript page 6 (09512-06) ---
  e8 <g' b'> <b' e''> <g' b'> <b' e''> <g' b'> |                         % 62
  fis8 <ais' cis''> <cis'' e''> <ais' cis''> ais <g' cis'' e''> |      % 63
  b8 <b' d''>\> <d'' fis''> <b' d''> <d'' fis''> <b' d''> |              % 64
  <b b' d'' fis''>4\!\pp r4 r4 |                                         % 65
  << { \voiceTwo ais4 cis' fis' } \new Voice { \voiceOne <e' g' cis''>2. } >> \oneVoice | % 66
  b8 g'! a' g' fis' a' |                                                % 67
  b'8 c''! fis' c'' b' a' |                                             % 68
  e8 <g' b'> <b' e''> <g' b'> <b' e''> <g' b'> |                         % 69
  b8 <g' b'> <b' e''> <g' b'> <b' e''> <g' b'> |                         % 70
  a8 <e' a' c''!> <e' a' c''> <a' c'' e''> <a' c'' e''> <c'' e'' a''> |  % 71 CHECK 5th chord
  f!8 <f'! a' c''!> <f' a' c''> <a' c'' f''> d' <a' d'' f''> |        % 72
  <a e' a' c''! e''>8 e' a' c'' e'' a'' |                                   % 73
  % --- manuscript page 7 (09512-07) ---
  g''8 d'' <gis' b' f''!> a' <e gis' b' e''>4 |                         % 74
  a8 <e' bes' cis''> <e' bes' cis''> <e' bes' cis''> d' d'' |                 % 75
  <a e' g' cis'' e''>8 e' d' cis' bes' a' |                             % 76
  <d' a' c''! fis''>8 fis' a' c'' ees'' a'' |                           % 77
  <d' fis''>8 c''! <fis'-3 a'-1 ees''-4> a' fis' d' |                            % 78 CHECK two voices, dense
  g8 <g' bes'> <bes' f''> <g' bes'> <bes' f''> <e' a' c''!> |           % 79 CHECK chords
  <g d' g' b' f''!>8\ff d' c'! b aes' g' |                              % 80
  <c' ees' g' c''!>8 r8 r4 r4 |                                          % 81
  <c' ees' g' c''!>8\> r8 r4 r4 |                                        % 82
  c'!8\pp-. fis'-. a'-. c''-. ees''-. fis''-. |                          % 83 CHECK
  ees''8-. b'!-. c''-. d''-. ees''-. aes'-. |                            % 84
  <g b d' g' b'>8\ff r8 r4 r4 |                                          % 85
  % --- manuscript page 8 (09512-08) ---
  <aes f'! c'' f''!>8\ppp d'( ees' e'! f'! ees') |                       % 86 CHECK chord
  bes4 <aes' d'' f''!> <aes' d'' fis''> |                               % 87 CHECK bass octave
  <ees' g'>8 bes( c'! c' ees' c') |                                     % 88 CHECK
  des'4\< <g' bes' des''> <g' bes' des''>\! |                            % 89 CHECK
  f4 <f'! aes' c''!> <f' aes' c''> |                                    % 90
  c'!4_\markup \italic "cresc." <ees' g' c''!> <ees' g' c''> |          % 91
  a4 <ees' a' c'' ges''> <ees' a' c'' a''> |                             % 92 CHECK flat on the top note
  b4 <fis' b' dis''> <fis' b' dis''> |                                   % 93 CHECK
  cis'4 <g'! cis'' e''> <g' cis'' e''> |                                % 94
  ais4\fff <fis' ais' cis''> <e' ais' cis''> |                           % 95 CHECK
  <b dis' fis' a' cis''>2 \tuplet 3/2 { b8(_\markup \italic "stentato" <b dis'> <b e'>) } | % 96 CHECK
  % --- manuscript page 9 (09512-09) ---
  ais4 cis' <g'! b' e''> |                                              % 97 CHECK bass
  <b fis' b' dis''>4 r4 <a dis'>4 |                                    % 98 CHECK beat 3
  <cis' fis' ais' e''>4\> <ais' cis''> <cis' ais' cis'' fis''>\fermata\! | % 99 CHECK
  <b dis' fis' b'>2\ppp b'4 |                                           % 100
  <b e' g'! b'>2 g'4 |                                                  % 101
  <b eis' gis'>2 <b eis' ais'>4 |                                       % 102 CHECK
  <b dis' fis' b'>2 cis''4 |                                            % 103 CHECK grace notes before cis'' not reproduced
  <dis' fis' b'>4 <eis' gis' b'>2 |                                      % 104 CHECK
  <b dis' fis' b'>2 dis''4 |                                             % 105 CHECK
  % --- manuscript page 10 (09512-10) ---
  <fis' ais' cis''>2 \grace { gis''16 } ais''8 ais'8 |                   % 106 CHECK
  <b dis' fis' b' dis''>2.\ppp\arpeggio |                                % 107 CHECK
  <b' dis'' fis'' b''>8\pp_\markup \italic "e lento assai" gis''( fis'' ais'' fis'' dis'') | % 108 CHECK
  b'8( gis' fis' gis' fis' cis') |                                      % 109 CHECK
  <fis b>2. |                                                           % 110 CHECK
  <b fis' b' dis''>8 r8 r4 r4 |                                         % 111 CHECK
}
