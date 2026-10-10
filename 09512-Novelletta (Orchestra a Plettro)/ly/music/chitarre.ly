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
  <fis' b' d''>4 <g' b' e''> <b' e'' g''> |                              % 43 CHECK (fingerings 0 0 0 / 2 3 1 not reproduced)
  g''16(_\markup \italic "sentito" fis'' eis'' fis'') fis'''4~ fis'''8\fermata r8 | % 44
  \key b \major
  <b dis' fis' b' dis''>2.\pppp |                                        % 45
  <b e' g'! b' e''>2. |                                                  % 46
  <b eis' gis' b' d''!>2( <b eis'>4) |                                   % 47 CHECK
  b8(_\markup \italic "rall." e' a d') <b dis' fis' b' dis''>4 |        % 48 CHECK
  <gis gis' b' dis''>4^\markup \italic "Tempo" dis''16( b' cis'' dis'') gis''8 r8 | % 49 CHECK rest of bar
  % --- manuscript page 5 (09512-05) ---
  <fisis fisis' b' dis''>4 dis''16( b' cis'' dis'') fisis''8 r8 |        % 50 CHECK rest of bar
  <cis' eis' gis' b'>2. |                                                % 51 CHECK
  <dis' b'>8\staccato_\markup \italic "lento" r8 <dis' b'>8\>\staccato r8 <fis' ais' e''>8\staccato r8\! | % 52
  <e' gis' b' dis''>8\pp r8 r4 r4 |                                      % 53 CHECK chord
  <b dis' fis' b'>16(\mf b cis' dis' fis'4 e') |                         % 54 CHECK
  R2. |                                                                  % 55
  <b dis' fis' b'>16( b cis' dis' fis'4 e') |                            % 56 CHECK (chord with tremolo strokes)
  cis'8 fis'16( b' dis'' dis'' cis'' b' cis''8) <gis' b' dis''>8 |       % 57 CHECK
  dis''16(_\markup \italic "molto lento" e'' fis'' gis'' fis''8) r8 <e' b' cis'' e''>4\fermata | % 58 CHECK
  <b fis' b' d''! fis''>2.\ff |                                          % 59
  << { \voiceOne <e' g'!>2^\markup \italic "I° Tempo" <ais' cis'' e''>8 r8 }
     \new Voice { \voiceTwo ais4 cis' fis8 s8 } >> \oneVoice |           % 60 CHECK
  \key b \minor
  b8\mf <b' d''> <d'' fis''> <b' d''> <d'' fis''> <b' d''> |             % 61
  % --- manuscript page 6 (09512-06) ---
  e8 <g' b'> <b' e''> <g' b'> <b' e''> <g' b'> |                         % 62
  fis8 <ais' cis''> <cis'' fis''> <ais' cis''> ais <g' cis'' e''> |      % 63
  b8 <b' d''>\> <d'' fis''> <b' d''> <d'' fis''> <b' d''> |              % 64
  <b b' d'' fis''>4\!\pp r4 r4 |                                         % 65
  << { \voiceTwo ais4 cis' fis' } \new Voice { \voiceOne <e' g' cis''>2. } >> \oneVoice | % 66
  <b fis'>8 g'! a' g' fis' a' |                                          % 67
  <dis' b'>8 c''! fis' c'' b' a' |                                       % 68
  e8 <g' b'> <b' e''> <g' b'> <b' e''> <g' b'> |                         % 69
  e8 <g' b'> <b' e''> <g' b'> <b' e''> <g' b'> |                         % 70 CHECK bass
  c'!8 <a' c''!> <c'' e''> <a' c''> <c'' e''> <e'' a''> |                % 71 CHECK
  <g b d'>8 <f'! a' c''!> <f' a' c''> <a' c''> c' <a' d'' f''!> |        % 72 CHECK
  a8 e' a' c''! e'' a'' |                                                % 73
  % --- manuscript page 7 (09512-07) ---
  g''8 d'' <gis' d'' f''!> a' <gis' b' e''>4 |                           % 74 CHECK whole bar
  a8 <e' cis''> <e' d''> <e' cis''> a d'' |                              % 75 CHECK whole bar
  <a e' g' cis''>4 e'8( d' cis' a') |                                    % 76 CHECK whole bar
  <d' a' d''>8 fis' a' c''! ees'' g'' |                                  % 77 CHECK whole bar
  d'8( c''! ees'' a' g' fis') |                                          % 78 CHECK whole bar
  g8 <g' bes'> <bes' d''> <g' bes'> <bes' d''> <g' bes'> |               % 79 CHECK whole bar
  <g d' b' f''!>8\ff d' c'! b aes' g' |                                  % 80 CHECK
  <c' ees' g' c''!>8 r8 r4 r4 |                                          % 81
  <c' ees' g' c''!>8\> r8 r4 r4 |                                        % 82
  c'!8\pp-. fis'-. a'-. c''-. ees''-. fis''-. |                          % 83 CHECK
  ees''8-. b'!-. c''-. d''-. ees''-. aes'-. |                            % 84
  <g b d' g' b'>8\ff r8 r4 r4 |                                          % 85
  % --- manuscript page 8 (09512-08) ---
  <aes f'! c'' f''!>8\ppp d'( ees' e'! f'! ees') |                       % 86 CHECK chord
  <bes, bes>4 <bes' d'' f''!> <bes' d'' fis''> |                         % 87 CHECK
  <ees' g'>8 des'( d'! d' f' d') |                                       % 88 CHECK
  des'4\< <g' bes' des''> <g' bes' des''>\! |                            % 89 CHECK
  c'!4 <g' bes' d''> <g' bes' d''> |                                     % 90 CHECK
  c'!4_\markup \italic "cresc." <f' aes' d''> <f' aes' d''> |            % 91 CHECK
  c'4 <ees' a' c'' ges''> <ees' a' c'' a''> |                            % 92 CHECK
  b4 <fis' b' dis''> <fis' b' dis''> |                                   % 93 CHECK
  cis'4 <g' cis'' e''> <g' cis'' e''> |                                  % 94 CHECK
  ais4\fff <fis' ais' cis''> <e' ais' cis''> |                           % 95 CHECK
  <b dis' fis' a' cis''>2 \tuplet 3/2 { cis'8(_\markup \italic "stentato" dis' e'!) } | % 96 CHECK
  % --- manuscript page 9 (09512-09) ---
  ais4 cis' <e' g' cis''> |                                              % 97 CHECK
  <b dis' fis'>4 r4 <dis b>4 |                                           % 98 CHECK
  <cis' e' ais'>4\> <e' ais'> <e' ais' cis''>\fermata\! |                % 99 CHECK
  <b dis' fis' b'>2\ppp b'4 |                                            % 100 CHECK
  <b e' g'! b'>2 b'4 |                                                   % 101 CHECK
  <b eis' gis' b' d''!>2 <b eis'>4 |                                     % 102 CHECK
  <b dis' fis' b'>2. |                                                   % 103 CHECK
  <dis' fis' b'>4 <eis' gis' b'>2 |                                      % 104 CHECK
  <b dis' fis' b'>2 dis''4 |                                             % 105 CHECK
  % --- manuscript page 10 (09512-10) ---
  <fis' ais' cis''>2 \grace { gis''16 } fis''8 ais'8 |                   % 106 CHECK
  <b dis' fis' b' dis''>2.\ppp\arpeggio |                                % 107 CHECK
  <b dis' fis'>8\pp_\markup \italic "e lento assai" ais'( a' b' a' g') | % 108 CHECK
  b8( ais b cis' b4) |                                                   % 109 CHECK
  ais2. |                                                                % 110 CHECK
  <b dis' fis'>8 r8 r4 r4 |                                              % 111 CHECK
}
