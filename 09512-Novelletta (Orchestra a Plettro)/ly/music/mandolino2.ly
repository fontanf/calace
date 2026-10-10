% Mandolini II -- absolute pitches, one bar per line.

mandolinoII = {
  % --- manuscript page 1 (09512-01) ---
  R2. |                                                                  % 1
  << { \voiceTwo g'2.\p\< }
     \new Voice { \voiceOne cis''4~(^\markup \italic "in orchestra divisi" cis''8 b' ais'4) }
     { s4. s4.\> } >> \oneVoice |                                       % 2
  <fis' b'>8\! r8 r4 r4 |                                                % 3
  << { \voiceTwo g'2.\< } \new Voice { \voiceOne cis''4~( cis''8 b' ais'4) }
     { s4. s4.\> } >> \oneVoice |                                       % 4
  <fis' b'>8\! r8 r4 r4 |                                                % 5
  R2. |                                                                  % 6
  r8 e'8( fis' e' fis' g') |                                             % 7
  fis'8( b d' fis'\> b' d'') |                                           % 8
  fis''8\p r8 r4 r4 |                                                    % 9
  << { \voiceTwo g'2.\< } \new Voice { \voiceOne cis''4~( cis''8 b' ais'4) }
     { s4. s4.\> } >> \oneVoice |                                       % 10
  <fis' b'>8\! r8 r4 r4 |                                                % 11
  << { \voiceTwo g'2.\< } \new Voice { \voiceOne cis''4~( cis''8 b' ais'4) } >> \oneVoice | % 12
  b'4\! a'!8( g' fis' a') |                                              % 13
  % --- manuscript page 2 (09512-02) ---
  b'8 c''!8 fis'4 b'8( a') |                                            % 14
  g'2. |                                                                 % 15
  fis'8( e' dis' e' fis' g') |                                           % 16
  gis'8 r8 r4 r4 |                                                       % 17
  <b gis'>8\pp r8 r4 r4 |                                                % 18
  e'4 <a' c''!>2 |                                                       % 19
  <a' c''>2 c''4 |                                                       % 20
  <d' bes' f''>4\arpeggio bes'2 |                                        % 21
  <d' bes' g''>4 d''4 a'8( g') |                                         % 22
  fis'4( a' d'') |                                                       % 23
  cis''!4( d'' e'') |                                                    % 24
  d''2 a'4 |                                                             % 25
  fis'4( a' gis') |                                                      % 26
  % --- manuscript page 3 (09512-03) ---
  g'4\p fis'8( e' cis' e') |                                             % 27
  g'4 e'8( cis' e' g') |                                                 % 28
  a'8( d'' cis'' b' bes' a') |                                           % 29
  cis'4\< fis'2 |                                                        % 30
  <b fis' c''!>8\!\pp r8 r4 r4 |                                         % 31
  a'4\mf( g'8 fis' e' dis') |                                            % 32
  e'2\<( bes'4) |                                                        % 33
  a'4.\! fis'8( a' cis'') |                                              % 34
  b'8->( a'-> fis'-> d'->) \tuplet 3/2 { e'8 cis'\fermata e' } |         % 35
  fis'2.(_\markup \italic "stent. dim." |                                % 36
  fis'8) r8 r4 r4 |                                                      % 37
  r8 a8\mf( ais b c'! cis') |                                            % 38
  % --- manuscript page 4 (09512-04) ---
  d'2.(\> |                                                              % 39
  d'2)\! r4 |                                                            % 40
  e''8( cis''16 b' ais'8) r8 r4 |                                        % 41
  e''8( cis''16 b' ais'8) r8 r4 |                                        % 42
  fis'4( g' b') |                                                       % 43
  <b' d''>2( cis''8)\fermata r8 |                                        % 44
  \key b \major
  fis'2.\pppp |                                                          % 45
  g'!2. |                                                                % 46
  eis'2( eis'4) |                                                        % 47
  cis'8(_\markup \italic "rall." e' gis' ais' b'4) |                     % 48
  gis'2.^\markup \italic "Tempo" |                                      % 49
  % --- manuscript page 5 (09512-05) ---
  fisis'2.\< |                                                           % 50
  fis'2 gis'16( e' fis' gis') |                                         % 51 CHECK upper notes D# F# at the end of the bar not reproduced
  b'8\staccato_\markup \italic "lento" r8 <dis' b'>8\>\staccato r8 <e' ais'>8\staccato r8\! | % 52
  <dis' b'>2\pp <e' ais'>4 |                                             % 53
  <dis' b'>2 <e' ais'>4 |                                                % 54
  <dis' b'>2 <e' ais'>4 |                                                % 55
  <dis' b'>2 b'4 |                                                       % 56
  b'2 fis'16( dis' gis' ais') |                                          % 57
  dis''2_\markup \italic "molto lento" e''4\fermata |                    % 58
  dis''2.\< |                                                            % 59
  e''4\!\f^\markup \italic "I° Tempo" cis''8( b' ais'4) |                % 60
  \key b \minor
  d''2(\mf cis''8 b') |                                                  % 61
  % --- manuscript page 6 (09512-06) ---
  g''2( fis''8 e'') |                                                    % 62
  ais''4. ais''8( cis''') e'' |                                          % 63
  d''2(\> fis'4) |                                                       % 64
  b8\!\pp r8 r4 r4 |                                                     % 65 CHECK pitch
  r4 cis''8( b' ais'4) |                                                 % 66
  fis'8( g'! a' g' fis' a') |                                            % 67
  b'8 c''!8 fis'4 b'8( a') |                                             % 68
  g'4( fis'8 g' a' b') |                                                 % 69
  a'8( g' fis' g' a' b') |                                               % 70
  <a' c''!>2.\p |                                                        % 71
  <a' f''!>4 f''8( c''! a' b') |                                        % 72
  c''!4 r8 a'8( b' c'') |                                                % 73
  % --- manuscript page 7 (09512-07) ---
  b'4. a'8 gis'( d'') |                                                  % 74
  cis''2( d''4) |                                                        % 75
  e''4 d''8( cis'' bes' a') |                                            % 76 CHECK
  a'4. fis'8( a' c''!) |                                                 % 77
  a'4. g'8( fis' c''!) |                                                 % 78
  c''!2( c''4) |                                                         % 79 CHECK
  d''4\ff c''!8( bes' aes' g') |                                         % 80
  <ees' c''!>8 r8 r4 r4 |                                                % 81
  <ees' c''!>8\> r8 r4 r4 |                                              % 82
  ees'8\pp c''4-> a'-> fis'8 |                                           % 83 CHECK
  ees'8 d'4-> c'!-> c'8 |                                                % 84 CHECK
  b8\ff g'(_\markup \italic "stentato" fis'-> g'-> fis'-> g'->) |         % 85
  % --- manuscript page 8 (09512-08) ---
  aes'2.(\ppp |                                                          % 86
  aes'4) bes'8( c'' bes' aes') |                                         % 87
  f'!2.( |                                                              % 88
  g'4) aes'8(\< bes' aes' g')\! |                                      % 89
  g'8 f'!( g' aes' g' f') |                                              % 90
  ees'8(_\markup \italic "cresc." ees' f'! g' f' ees') |                 % 91
  ees'2.\pp( |                                                          % 92
  dis'8) dis'( e'! fis' e' cis') |                                       % 93 CHECK
  e'2 e''4~ |                                                           % 94 CHECK first note
  e''4\fff dis''-> cis''-> |                                             % 95
  b'4_\markup \italic "stentato" ais'8( gis') fis'4 |                    % 96
  % --- manuscript page 9 (09512-09) ---
  fis'2( g'4) |                                                          % 97
  e'2 fis'8( gis') |                                                    % 98
  gis'4\> g'! fis'\fermata\! |                                          % 99
  fis'2(\pppp cis'4) |                                                  % 100
  g'!2 e'4 |                                                            % 101
  eis'2( eis'4) |                                                       % 102
  dis'16( cis' dis' e') fis'4 gis'8( ais') |                            % 103
  ais'8( b') cis''2 |                                                    % 104 CHECK
  cis'16( dis' e' fis') fis'8-> fis'-> gis'-> ais'-> |                  % 105 CHECK first four notes
  % --- manuscript page 10 (09512-10) ---
  b'2( e'4) |                                                            % 106 CHECK
  fis'2.\ppp_\markup \italic "lento" |                                   % 107
  b4( dis' fis') |                                                       % 108 CHECK
  b'8(^\markup \italic "tremolo" gis' fis' gis' fis' dis') |             % 109
  b2. |                                                                 % 110
  <b dis'' fis''>8 r8 r4 r4 |                                           % 111 CHECK
}
