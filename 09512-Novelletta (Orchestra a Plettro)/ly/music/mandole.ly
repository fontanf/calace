% Mandole -- absolute pitches, one bar per line.

mandole = {
  % --- manuscript page 1 (09512-01) ---
  R2. |                                                                  % 1
  << <ais' e''>2.\p { s4.\< s4.\> } >> |                                % 2
  <b' d''>8\! r8 r4 r4 |                                                 % 3
  << <ais' e''>2. { s4.\< s4.\> } >> |                                  % 4
  <b' d''>8\p r8 r4 r4 |                                                 % 5
  b'2.\< |                                                               % 6
  <cis'' e''>2 <ais' cis''>4\! |                                         % 7
  <b' d''>4. fis''8\>( d'' b') |                                        % 8
  R2.\! |                                                                % 9
  << <ais' e''>2. { s4.\< s4.\> } >> |                                  % 10
  <b' d''>8\! r8 r4 r4 |                                                 % 11
  <ais' e''>2.\< |                                                       % 12
  <b' dis''>8\! r8 b''4( a'') |                                          % 13 EDITORIAL: manuscript has no sharp on d''; dis'' to match B7 harmony (see NOTES.md)
  % --- manuscript page 2 (09512-02) ---
  fis''2 dis''4 |                                                        % 14
  b'4. g''8( fis'' e'') |                                                % 15
  fis''8( e'' dis'' e'' fis'' g'') |                                     % 16
  gis''8 r8 r4 r4 |                                                      % 17
  d'2.\pp |                                                              % 18
  c'!4 a8( b c' e') |                                                    % 19
  a'8( b' c''!2) |                                                       % 20
  d'2 bes4 |                                                             % 21
  g2 g'4 |                                                               % 22
  a'2. |                                                                 % 23
  g'2. |                                                                 % 24
  fis'2.~ |                                                              % 25
  fis'2 f'!4 |                                                           % 26
  % --- manuscript page 3 (09512-03) ---
  e'4\p d'2~ |                                                           % 27
  d'2 bes'4 |                                                            % 28
  a'2 g'4 |                                                              % 29
  fis'4.\< cis'8( fis' a') |                                             % 30
  c''!4\!\pp( dis' fis') |                                               % 31
  b'2( g'4) |                                                            % 32
  e'2( bes'4) |                                                          % 33
  a'4( fis' a') |                                                        % 34
  <a d'>2 bes4\fermata |                                                 % 35 CHECK chord
  d'8_\markup \italic "stent."( a d' fis' a' d'') |                     % 36 CHECK first two notes
  <d' a' fis''>8 r8 r4 r4 |                                              % 37
  a4\mf ais8( b c'! cis') |                                              % 38
  % --- manuscript page 4 (09512-04) ---
  d'2 cis'4 |                                                            % 39
  b2 a4 |                                                                % 40
  ais4( cis'8) e'16( fis' a'4) |                                         % 41 CHECK first and last note
  ais'4( cis''8) e''16( fis'' a''4) |                                    % 42
  fis''4 <b' e''> cis'' |                                                % 43 CHECK
  <gis' d''>2( <a' e''>8)\fermata r8 |                                   % 44
  \key b \major
  fis''2.\pppp |                                                         % 45
  g''!2. |                                                               % 46
  eis''2( eis''4) |                                                      % 47
  dis''8(_\markup \italic "rall." e'' gis'' ais'' b''4) |               % 48
  dis''2.^\markup \italic "Tempo" |                                     % 49
  % --- manuscript page 5 (09512-05) ---
  dis''2.\> |                                                            % 50
  fis''2(\! e''4) |                                                     % 51
  dis''8\staccato_\markup \italic "lento" r8 b'8\>\staccato r8 ais'8\staccato r8\! | % 52
  dis'16(\mf b cis' dis' fis'4 e') |                                     % 53
  R2. |                                                                  % 54
  dis''16(\mf b' cis'' dis'' fis''4 e'') |                               % 55
  R2. |                                                                  % 56
  b'2.( |                                                                % 57
  b'2)_\markup \italic "molto lento" r4\fermata |                        % 58
  r8\ff fis'8( b' d''! fis'' b'') |                                      % 59
  \grace { ais''16[( b''] } ais''8)^\markup \italic "I° Tempo" e'' g''!4 fis''8 r8 | % 60 CHECK end of bar
  \key b \minor
  d''2.\mf |                                                             % 61 CHECK pitch
  % --- manuscript page 6 (09512-06) ---
  b'2. |                                                                 % 62
  <cis'' e''>2. |                                                        % 63
  fis''4.\> d''8( b' fis') |                                             % 64
  R2.\! |                                                                % 65
  <ais' e''>2.\< |                                                       % 66
  dis''4\! e''2 |                                                        % 67
  fis''4 b''2 |                                                          % 68
  b'4( g' b') |                                                          % 69
  b2. |                                                                 % 70 CHECK B or C#
  c'!4 a' g' |                                                           % 71
  f'!2 d'4 |                                                             % 72
  <a c'>2.^\markup \italic "affrett." |                                 % 73 CHECK chord
  % --- manuscript page 7 (09512-07) ---
  f'!4 b'8( a') gis'4 |                                                  % 74
  d''2( d''4) |                                                          % 75 CHECK
  <ais' cis''>2. |                                                       % 76 CHECK
  c''!2 a'4 |                                                            % 77
  ees'4 a'8( g') fis'4 |                                                 % 78
  d''2( d''4) |                                                          % 79 CHECK
  b'4\ff( d'' b') |                                                      % 80
  c''!8 r8 r4 r4 |                                                       % 81
  <c' ees' c''!>8\> r8 r4 r4 |                                           % 82
  c''!2.\pp |                                                            % 83
  aes'2. |                                                               % 84
  g'2.\ff_\markup \italic "stentato" |                                   % 85
  % --- manuscript page 8 (09512-08) ---
  f'!2.\ppp |                                                            % 86
  bes'2. |                                                               % 87
  ees'2. |                                                               % 88
  ees'2.\< |                                                            % 89 CHECK flat or natural
  f'!2\! g'4 |                                                           % 90
  c'!2._\markup \italic "cresc." |                                       % 91
  r8 ees'8( f' ges' f' ees') |                                           % 92
  dis'4 b! ais |                                                         % 93 CHECK
  cis'4 e' g' |                                                          % 94 CHECK
  ais'4\fff fis' e' |                                                    % 95
  eis'2 \tuplet 3/2 { cis'8(_\markup \italic "stentato" dis' e'!) } |    % 96 CHECK
  % --- manuscript page 9 (09512-09) ---
  ais2( a!4) |                                                           % 97 CHECK
  b4 r4 r4 |                                                             % 98
  <cis'' e''>2.\fermata |                                               % 99
  fis'2.\ppp |                                                          % 100
  g'!2. |                                                               % 101
  eis'2( ais'4) |                                                       % 102 CHECK
  b'2. |                                                                % 103
  fis''2. |                                                              % 104 CHECK
  dis''16( e'' fis'' gis'') fis''8 fis'' gis'' ais'' |                   % 105 CHECK
  % --- manuscript page 10 (09512-10) ---
  b''16( fis'' gis'' fis'') b''4 gis'8( ais') |                         % 106 CHECK first four notes
  b'2.\ppp |                                                            % 107
  b2. |                                                                  % 108 CHECK
  b'2.( |                                                               % 109
  b'2.) |                                                               % 110
  b8 r8 r4 r4 |                                                          % 111
}
