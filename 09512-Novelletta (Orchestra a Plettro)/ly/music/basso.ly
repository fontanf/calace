% Basso -- absolute pitches (written pitch), one bar per line.

basso = {
  % --- manuscript page 1 (09512-01) ---
  b,4\pp r4 r4 |                                                         % 1
  r4 cis4 fis |                                                          % 2
  b,4 r4 r4 |                                                            % 3
  r4 cis4 fis |                                                          % 4
  b,4 r4 r4 |                                                            % 5
  e,4 r4 r4 |                                                            % 6
  fis,4\< r4 ais,4 |                                                     % 7
  b,4\! r8\> fis8-. d-. b,-. |                                           % 8
  b,4\p r4 r4 |                                                          % 9
  r4 cis4 fis |                                                          % 10
  b,4 r4 r4 |                                                            % 11
  r4 cis4\< fis |                                                        % 12
  b,4\! r4 r4 |                                                          % 13
  % --- manuscript page 2 (09512-02) ---
  dis4 r4 r4 |                                                           % 14
  e4 e,4 r4 |                                                            % 15
  g,4 g g |                                                              % 16
  e8 r8 r4 r4 |                                                          % 17
  d4\pp r4 r4 |                                                          % 18
  c4 a,8( b, c e) |                                                      % 19
  a8 b c'!4 r4 |                                                         % 20
  d4 r4 bes,4 |                                                          % 21
  g,2 g4 |                                                               % 22
  a2. |                                                                  % 23
  g2. |                                                                  % 24
  fis2. |                                                                % 25
  d2. |                                                                  % 26
  % --- manuscript page 3 (09512-03) ---
  cis4\p g2 |                                                            % 27 CHECK
  bes,4 e2 |                                                             % 28 CHECK e or f
  a,4 r4 g4 |                                                            % 29
  fis4 d4 r4 |                                                           % 30
  dis2.\pp |                                                             % 31
  e2. |                                                                  % 32
  bes,4 r4 g4 |                                                          % 33
  fis2. |                                                                % 34 CHECK
  d2 bes,4\fermata |                                                     % 35
  a,8( d fis a, d fis) |                                                 % 36
  a8 r8 r4 r4 |                                                          % 37
  a,4\mf r4 r4 |                                                         % 38
  % --- manuscript page 4 (09512-04) ---
  d2 cis4 |                                                              % 39
  b,2 a,4 |                                                              % 40
  fis4 r8 e16( fis g4) |                                                 % 41
  e4 r8 e16( fis g4) |                                                   % 42
  d4 b, cis |                                                            % 43
  d2( fis8)\fermata r8 |                                                 % 44 CHECK
  \key b \major
  b,4\pppp r4 r4 |                                                       % 45
  b,4 r4 r4 |                                                            % 46
  b,4 r4 r4 |                                                            % 47
  b,4 r4 r4 |                                                            % 48
  gis,4^\markup \italic "Tempo" r4 r4 |                                 % 49 CHECK
  % --- manuscript page 5 (09512-05) ---
  dis,4 r4 r4 |                                                          % 50 CHECK
  b,4 r4 e4 |                                                            % 51 CHECK
  dis8\staccato_\markup \italic "lento" r8 r4 r4 |                       % 52
  R2. |                                                                  % 53
  R2. |                                                                  % 54
  R2. |                                                                  % 55
  R2. |                                                                  % 56
  b,4 r4 gis4 |                                                          % 57
  b,4_\markup \italic "molto lento" r4 g!4\fermata |                     % 58
  b,4\ff r4 r4 |                                                         % 59
  cis4^\markup \italic "I° Tempo" ais, fis, |                            % 60
  \key b \minor
  b,4\mf r4 r4 |                                                         % 61
  % --- manuscript page 6 (09512-06) ---
  e,4 r4 r4 |                                                            % 62
  fis,4 r4 ais,4 |                                                       % 63
  b,4 r8 fis8-. d-. b,-. |                                               % 64
  b,4\p r4 r4 |                                                          % 65
  r4 cis4 fis |                                                          % 66
  b,4 r4 r4 |                                                            % 67
  dis4 r4 r4 |                                                           % 68
  e4 r4 r4 |                                                             % 69
  b,4 r4 r4 |                                                            % 70 CHECK
  a,2 g,4 |                                                              % 71 CHECK
  ees,4 f! d |                                                           % 72 CHECK flat or natural on the first note
  g,2._\markup \italic "affrett." |                                      % 73
  % --- manuscript page 7 (09512-07) ---
  b4 gis e |                                                             % 74
  a,2. |                                                                 % 75
  a,2. |                                                                 % 76
  d4 a, d |                                                              % 77
  a4 fis d |                                                             % 78
  g,2. |                                                                 % 79
  g,2.\ff |                                                              % 80
  c!8 r8 r4 r4 |                                                         % 81
  c!8\> r8 r4 r4 |                                                       % 82
  c!2.\pp |                                                              % 83
  aes,2. |                                                               % 84
  g,2.\ff_\markup \italic "stentato" |                                   % 85
  % --- manuscript page 8 (09512-08) ---
  f!2.\pp |                                                              % 86
  bes,2. |                                                               % 87
  ees2. |                                                                % 88
  des2.\< |                                                             % 89 CHECK
  f!2\! g4 |                                                             % 90
  c!2._\markup \italic "cresc." |                                      % 91
  a,4\pp ees ees |                                                       % 92
  b,2. |                                                                 % 93 CHECK
  cis2. |                                                                % 94 CHECK
  fis4\fff r4 fis,4 |                                                    % 95
  b,2._\markup \italic "stentato" |                                     % 96
  % --- manuscript page 9 (09512-09) ---
  e8( dis) cis2 |                                                       % 97
  fis4 r4 fis,4 |                                                        % 98
  fis,4 fis fis\fermata |                                               % 99
  b,4\ppp r4 r4 |                                                        % 100
  b,4 r4 r4 |                                                            % 101
  b,4 r4 b,4 |                                                           % 102
  b,4 r4 b,4 |                                                           % 103
  b,4 r4 b,4 |                                                           % 104
  b,4 r4 b,4 |                                                           % 105
  % --- manuscript page 10 (09512-10) ---
  b,4 r4 b,4 |                                                           % 106
  b,4 r4 b,4 |                                                           % 107
  b,2. |                                                                 % 108
  fis,2.( |                                                              % 109 CHECK
  fis,2.) |                                                              % 110 CHECK
  b,8 r8 r4 r4 |                                                         % 111
}
