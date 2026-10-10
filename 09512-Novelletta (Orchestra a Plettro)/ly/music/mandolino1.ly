% Mandolini I -- absolute pitches, one bar per line.
% "% CHECK" marks readings that are uncertain in the manuscript.

mandolinoI = {
  % --- manuscript page 1 (09512-01) ---
  r8\p fis'8(\< b' d'' fis'' b'') |                                      % 1
  \grace { ais''16[( b''] } ais''8)\(\> e'' g''4\)( fis''8) r8 |         % 2
  r8\! fis'8(\< b' d'' fis'' b'') |                                      % 3
  \grace { ais''16[( b''] } ais''8)\(\> e'' g''4\)( fis''8) r8 |         % 4
  d''2(\! cis''8 b') |                                                   % 5
  g''2(\< fis''8 e'') |                                                  % 6
  ais''4.\! ais''8( cis''') e'' |                                        % 7
  d''2.\> |                                                              % 8
  r8\! fis'8(\< b' d'' fis'' b'') |                                      % 9
  \grace { ais''16[( b''] } ais''8)\(\> e'' g''4\)( fis''8) r8 |         % 10
  r8\! fis'8(\< b' d'' fis'' b'') |                                      % 11
  \grace { ais''16[( b''] } ais''8)\(\< e'' g''4\)( fis''8 e'') |        % 12
  dis''2(\! cis''8 b') |                                                 % 13 (rehearsal mark A, see global.ly)
  % --- manuscript page 2 (09512-02) ---
  a''2 g''8( fis'') |                                                    % 14
  fis''8( e'' dis'' e'' fis'' g'') |                                     % 15
  gis''2.\< |                                                            % 16
  r8\!\ff b''8( a'' gis'' f'' e'') |                                     % 17
  r8\pp b'8( a' gis' f' e') |                                            % 18
  b'8( a') e''2 |                                                        % 19
  e''2 e''4 |                                                            % 20
  <d' bes' f''>4\arpeggio bes'2 |                                        % 21
  <d' bes' g''>4 d''2 |                                                  % 22
  a''2. |                                                                % 23
  a''4( bes'' cis''') |                                                  % 24
  cis'''4( a'' fis'') |                                                  % 25
  e''8( fis'' e'' d'' b' cis'') |                                        % 26
  % --- manuscript page 3 (09512-03) ---
  b'4\p( bes'4. a'8) |                                                   % 27
  d''4( cis''4. d''8) |                                                  % 28
  fis''8( e'' a'' g'' e'' cis'') |                                       % 29
  \grace { e''16[ d''] } b'8( e') a'2\< |                                % 30 CHECK grace notes
  a''4\!\pp( g''8 fis'' e'' dis'') |                                     % 31
  fis''4( e''2) |                                                        % 32
  g''4( fis''8\< e'' d'' cis'') |                                        % 33
  e''4(\! d''8) fis'8( a' cis'') |                                       % 34
  b'8->( a'-> fis'-> d'->) \tuplet 3/2 { e'8 cis'\fermata e' } |         % 35 CHECK 4th note d' or cis'
  e'2.(_\markup \italic "stent. dim." |                                  % 36 CHECK e' (d'?)
  fis'4.) a'8( d' e') |                                                  % 37
  e'2 fis'4 |                                                            % 38 CHECK
  % --- manuscript page 4 (09512-04) ---
  fis'2.\glissando |                                                     % 39 "gliss."
  e''2 r4 |                                                              % 40
  R2. |                                                                  % 41
  R2. |                                                                  % 42
  R2. |                                                                  % 43
  R2. |                                                                  % 44
  \key b \major
  fis''16(\pppp^\markup \italic "tremolo leggiero" gis'' ais'' b'' ais'' b'' cis''' gis'' fis'' gis'' fis'' dis'') | % 45 CHECK 8th note
  cis''4~ cis''16( dis'' cis'' b' cis'' dis'' cis'' b') |                % 46 CHECK 2nd group
  cis''4~ cis''16( dis'' cis'' b' ais'8 b') |                            % 47
  fis'8(_\markup \italic "rall." b'16 cis'') cis''8( \grace { fis''16 gis'' } fis''8) dis''4 | % 48 CHECK rhythm
  dis''16(^\markup \italic "Tempo" b' cis'' dis'' gis''2) |             % 49
  % --- manuscript page 5 (09512-05) ---
  dis''16( b' cis'' dis'' fisis''2) |                                    % 50
  dis''16(\< b' cis'' dis'' fis'' gis'' b'' ais'') b''4\! |              % 51
  b''8\staccato_\markup \italic "lento" r8 fis''8\>\staccato r8 cis''8\staccato r8\! | % 52 CHECK (small notes above not reproduced)
  b'2\pp cis''4\glissando |                                              % 53 CHECK
  dis''2 cis''4 |                                                        % 54 CHECK
  b'2 cis''4\glissando |                                                 % 55 CHECK
  fis''2 gis''4 |                                                        % 56 CHECK small notes before gis'' not reproduced
  b''2 ais''4 |                                                          % 57
  b''2_\markup \italic "molto lento" a''!4\fermata |                     % 58 CHECK
  b''2 r4 |                                                              % 59
  R2.^\markup \italic "I° Tempo" |                                       % 60
  \key b \minor
  d''2(\mf cis''8 b') |                                                  % 61
  % --- manuscript page 6 (09512-06) ---
  g''2( fis''8 e'') |                                                    % 62
  ais''4. ais''8( cis''') e'' |                                          % 63
  d''2. |                                                                % 64
  r8\pp fis'8(\< b' d'' fis'' b'')\! |                                   % 65
  \grace { ais''16[( b''] } ais''8)\( e'' g''4\)( fis''8 e'') |          % 66
  dis''2( c''!8 b') |                                                    % 67 CHECK c''
  a''2 g''8( fis'') |                                                    % 68
  fis''8( e'' dis'' e'' fis'' g'') |                                     % 69 CHECK last note g'' or a''
  a''8(_\markup \italic "cresc." g'' fis'' g'' a'' b'') |                % 70
  <g'' c'''!>2.\p |                                                      % 71 CHECK
  c'''4( a'' f''!) |                                                     % 72 CHECK
  e''4 r8 a'8(_\markup \italic "affrett." b' c''!) |                     % 73
  % --- manuscript page 7 (09512-07) ---
  d''4. f''!8( e'' d'') |                                                % 74
  << { \voiceOne b''2.( } \new Voice { \voiceTwo cis''8 r8 r4 r4 } >> \oneVoice | % 75 CHECK
  bes''4 a'' g'') |                                                      % 76
  fis''4. fis'8( a' c''!) |                                              % 77
  ees''4. ees''8( d'' c''!) |                                            % 78
  << { \voiceOne bes''2. } \new Voice { \voiceTwo b'!8 r8 r4 r4 } >> \oneVoice | % 79 CHECK
  aes''4\ff( g'' f''!) |                                                 % 80
  <g' ees''>8 g'( a'! b'! c''! d'') |                                    % 81 CHECK
  ees''8\> b'!( c'' d'' e''! aes'') |                                    % 82 CHECK
  fis''8\pp a''4-> ees''-> c''8 |                                        % 83 CHECK
  b'8 c''!4-> aes'-> g'8 |                                               % 84
  g'8\ff g''(_\markup \italic "stentato" fis''-> a''-> fis''-> a''->) |   % 85
  % --- manuscript page 8 (09512-08) ---
  aes''2.(\ppp |                                                         % 86
  aes''4) bes''8( c'''! bes'' aes'') |                                   % 87
  g''2.~ |                                                               % 88
  g''4 aes''8(\< bes'' aes'' g'')\! |                                    % 89
  g''8 f''!( g'' aes'' g'' f'') |                                       % 90
  ees''8(_\markup \italic "cresc." ees'' f''! g'' f'' ees'') |         % 91
  ees''2.\pp( |                                                         % 92
  dis''8) dis''( e''! fis'' e'' dis'') |                                 % 93
  e''2 g''!4 |                                                          % 94
  d''2.\fff |                                                           % 95 CHECK D or D sharp
  fis''8(_\markup \italic "stentato" g''-> ais''-> b''-> fis''-> b'->) | % 96 CHECK
  % --- manuscript page 9 (09512-09) ---
  e''2( e''4) |                                                          % 97
  dis''16( b' cis'' dis'') cis''8( b') fis'( gis') |                    % 98
  ais'2\> e''4\fermata\! |                                             % 99 CHECK small notes D# B D# after the fermata not reproduced
  fis'''16(\pppp^\markup \italic "tremolo leggiero" gis''' ais''' b''' ais''' b''' cis'''' gis''' fis''' gis''' fis''' dis''') | % 100 CHECK = bar 45 an octave higher
  cis'''4~ cis'''16( dis''' cis''' b'' cis''' dis''' cis''' b'') |       % 101 CHECK = bar 46 an octave higher
  cis'''4~ cis'''16( dis''' cis''' b'' ais''8 b'') |                    % 102 CHECK = bar 47 an octave higher
  dis''16( e'' fis'' gis'') fis''4 gis''8( ais'') |                     % 103
  b''8( gis''16 ais'' b''8 ais''16 gis'' fis''4) |                       % 104 CHECK whole bar
  dis''16( e'' fis'' gis'') fis''8-> fis''-> gis''-> ais''-> |           % 105 CHECK
  % --- manuscript page 10 (09512-10) ---
  ais''16( b'' ais'' b'') cis'''4 gis''4 |                               % 106 CHECK whole bar
  dis''8(\ppp_\markup \italic "e sempre più lento" fis'' ais'' b'' dis''' fis''') | % 107 CHECK (tremolo)
  b''2.~ |                                                               % 108 CHECK
  b''4 r4 r4 |                                                           % 109 CHECK
  e'2. |                                                                 % 110 CHECK
  <b dis''>8 r8 r4 r4 |                                                  % 111 CHECK
}
