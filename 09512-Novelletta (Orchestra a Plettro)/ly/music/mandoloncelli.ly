% Mandoloncelli -- absolute pitches, one bar per line.

mandoloncelli = {
  % --- manuscript page 1 (09512-01) ---
  <b, fis b>8\arpeggio\pp r8 r4 r4 |                                     % 1
  ais2.( |                                                               % 2
  b4) r4 r4 |                                                            % 3
  ais2. |                                                                % 4
  r8\pp b,8-. d-. b,-. d-. b,-. |                                        % 5
  r8 g8-. b-. g-. b-. g-. |                                              % 6
  r8\< ais8-. cis'-. ais-. cis'-. e'-. |                                 % 7
  b8-.\> fis-. d-. fis-. d-. b,-. |                                      % 8
  <b, fis d'>8\p r8 r4 r4 |                                              % 9
  ais2.( |                                                               % 10
  b4) r4 r4 |                                                            % 11
  ais2.\< |                                                              % 12
  b4\! dis2~ |                                                           % 13
  % --- manuscript page 2 (09512-02) ---
  dis2. |                                                                % 14
  e2. |                                                                  % 15
  fis8( e dis e fis g) |                                                 % 16
  gis8 r8 r4 r4 |                                                        % 17
  <d b>8\p r8 r4 r4 |                                                    % 18
  c,!4 a,8( b, c e) |                                                    % 19
  a8 b c'!2 |                                                            % 20
  r8 bes,8( d f bes d') |                                                % 21
  r8 bes,8( d g bes d') |                                                % 22
  a2. |                                                                  % 23
  a4( bes cis') |                                                        % 24
  cis'4( a fis) |                                                        % 25
  d2. |                                                                  % 26
  % --- manuscript page 3 (09512-03) ---
  a,2.\p |                                                               % 27
  g,2. |                                                                 % 28
  a,4 a g |                                                              % 29
  fis4 d2 |                                                              % 30
  a2.\pp |                                                               % 31
  a4\mf( g8 fis e dis) |                                                 % 32
  e2( bes4) |                                                            % 33
  a4. fis8( a cis') |                                                    % 34
  <a, fis d'>4 r4 <bes, g>4\fermata |                                    % 35 CHECK chords
  a,8_\markup \italic "stent. e dim."( d fis a d' fis') |                % 36
  <d' fis' a'>8 r8 r4 r4 |                                               % 37 CHECK chord
  r8 a,8\mf( ais, b, c! cis) |                                           % 38
  % --- manuscript page 4 (09512-04) ---
  a,2.( |                                                                % 39
  a,2) r4 |                                                              % 40
  ais4( ais8) cis'16( e' fis'4) |                                        % 41 CHECK
  ais4( ais8) cis'16( e' fis'4) |                                        % 42 CHECK
  fis4 b <cis' e'> |                                                     % 43 CHECK
  gis2( a8)\fermata r8 |                                                 % 44 CHECK
  \key b \major
  b,2.\pppp |                                                            % 45
  b,2. |                                                                 % 46
  b,2. |                                                                 % 47
  b,8(_\markup \italic "rall." b, e e fis4) |                            % 48 CHECK
  dis4^\markup \italic "Tempo" dis16( b, cis dis) gis8 r8 |              % 49 CHECK
  % --- manuscript page 5 (09512-05) ---
  dis4 dis16( b, cis dis) fisis8 r8 |                                    % 50
  <cis eis>2 gis16( eis fis gis) |                                       % 51 CHECK
  <dis b>8\staccato_\markup \italic "lento" r8 <dis b>8\>\staccato r8 <e ais>8\staccato r8\! | % 52
  dis16(\mf b, cis dis fis4 e) |                                         % 53
  R2. |                                                                  % 54
  dis16(\mf b, cis dis fis4 e) |                                         % 55
  R2. |                                                                  % 56
  dis8 fis16( b cis' dis' cis' b cis'8) e'8 |                            % 57 CHECK
  <dis dis'>16(_\markup \italic "molto lento" <e e'> <fis fis'> <gis gis'> <fis fis'>8) r8 r4\fermata | % 58
  r8\ff fis,8( b, d! fis b) |                                            % 59
  \grace { ais16[( b] } ais8)^\markup \italic "I° Tempo" e( g!4 fis) |   % 60
  \key b \minor
  r8\mf b,8-. d-. b,-. d-. b,-. |                                        % 61
  % --- manuscript page 6 (09512-06) ---
  r8 g8-. b-. g-. b-. g-. |                                              % 62
  r8 ais8-. cis'-. ais-. cis'-. e'-. |                                   % 63
  b8-.\> fis-. d-. fis-. d-. b,-. |                                      % 64
  <b, fis d'>8\!\pp r8 r4 r4 |                                           % 65
  ais2.( |                                                               % 66
  b4) dis2~ |                                                            % 67
  dis2. |                                                                % 68
  e2. |                                                                  % 69
  g,2. |                                                                 % 70 CHECK
  a,8( c! e a c'! e') |                                                  % 71
  f!2 d4 |                                                               % 72
  a,8( e, a, c e a) |                                                    % 73 CHECK
  % --- manuscript page 7 (09512-07) ---
  g4 d8 f!8 e8 r8 |                                                      % 74
  d2( d4) |                                                              % 75 CHECK
  <a, cis>2 e4 |                                                         % 76 CHECK
  d8( fis, a, c! ees g) |                                                % 77 CHECK
  fis8( c!) ees4 d |                                                     % 78
  d2 c!4 |                                                               % 79 CHECK
  b,4\ff d b, |                                                          % 80
  c!8 r8 r4 r4 |                                                         % 81
  c!8\> r8 r4 r4 |                                                       % 82
  c!8\pp-. fis,-. a,-. c-. ees-. fis-. |                                 % 83 CHECK
  ees8-. b,!-. c-. d-. ees-. aes,-. |                                    % 84
  d8\ff r8 r4 r4 |                                                       % 85
  % --- manuscript page 8 (09512-08) ---
  r8\ppp d( ees e! f! ees) |                                             % 86
  d4 bes,2 |                                                             % 87
  r8 bes,( b,! d ees d) |                                                % 88 CHECK
  des2.\< |                                                             % 89 CHECK
  c!2\! bes,4 |                                                          % 90
  c!4(_\markup \italic "cresc." ees g) |                                 % 91
  a,8( ees f ges f ees) |                                                % 92
  b,4 b, ais, |                                                         % 93 CHECK
  ais,4 cis e |                                                         % 94 CHECK
  e4\fff dis cis |                                                      % 95 CHECK
  b,2 \tuplet 3/2 { d8(_\markup \italic "stentato" dis cis) } |         % 96 CHECK
  % --- manuscript page 9 (09512-09) ---
  e8( dis) b,2 |                                                         % 97
  cis2 dis4 |                                                            % 98 CHECK
  d2\> fis4\fermata\! |                                                  % 99 CHECK
  b,2.\pppp |                                                            % 100
  b,2. |                                                                 % 101
  b,2 b,4 |                                                              % 102 CHECK
  b,2. |                                                                 % 103 CHECK
  fis4\glissando b2 |                                                    % 104 CHECK
  b,2 fis4 |                                                             % 105 CHECK
  % --- manuscript page 10 (09512-10) ---
  e'2 gis8( ais) |                                                       % 106 CHECK
  <fis b>2._\markup \italic "lento col canto" |                          % 107 CHECK
  <b dis'>2.\ppp |                                                       % 108 CHECK
  fis2.(_\markup \italic "col canto" |                                   % 109 CHECK
  fis2.) |                                                               % 110 CHECK
  b,8 r8 r4 r4 |                                                         % 111
}
