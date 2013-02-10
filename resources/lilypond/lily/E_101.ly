%=============================================
%   created by MuseScore Version: 1.1
%          November 7, 2011
%=============================================

\version "2.12.0"



#(set-default-paper-size "a5" 'landscape)

\paper {
  line-width    = 180.06\mm
  left-margin   = 14.97\mm
  top-margin    = 9.9\mm
  bottom-margin = 4.95\mm
  %%indent = 0 \mm 
  %%set to ##t if your score is less than one page: 
  ragged-last-bottom = ##t 
  ragged-bottom = ##f  
  %% in orchestral scores you probably want the two bold slashes 
  %% separating the systems: so uncomment the following line: 
  %% system-separator-markup = \slashSeparator 
  }

\header {
    subtitle = "D"
    subtitle = " = 75"
    subtitle = "G"
    }

AvoiceAA = \relative c'{
    \set Staff.instrumentName = #""
    \set Staff.shortInstrumentName = #""
    \clef treble
    %staffkeysig
    \key d \major 
    %barkeysig: 
    \key d \major 
    %bartimesig: 
    \time 4/4 
    d2 ^\markup {\upright  "D"} ^\markup {\italic " = 75"} b8^( ^\markup {\upright  "G"} cis d e      | % 1
    fis2) ^\markup {\upright  "D"} e ^\markup {\upright  "A"}      | % 2
    d ^\markup {\upright  "D"} b8^( ^\markup {\upright  "G"} cis d e      | % 3
    fis2) ^\markup {\upright  "D"} e4 ^\markup {\upright  "A"} fis8( g      | % 4
    a2) ^\markup {\upright  "F#m"} d,4 ^\markup {\upright  "Bm"} fis16( g fis g      | % 5
    a2) ^\markup {\upright  "F#m"} d, ^\markup {\upright  "Bm"}      | % 6
    g4( ^\markup {\upright  "G"} fis e) d8( e)      | % 7
    e2. ^\markup {\upright  "A"} d8( cis)      | % 8
    d1 ^\markup {\upright  "D"} ^\markup {\upright  "G"}      | % 9
    r2 ^\markup {\upright  "D"} ^\markup {\upright  "A"} r      | % 10
    d ^\markup {\upright  "D"} b8^( ^\markup {\upright  "G"} cis d e      | % 11
    fis2) ^\markup {\upright  "D"} e ^\markup {\upright  "A"}      | % 12
    d ^\markup {\upright  "D"} b8( ^\markup {\upright  "G"} cis d e      | % 13
    fis2 ^\markup {\upright  "D"} e4 ^\markup {\upright  "A"} fis8 g      | % 14
    a2) ^\markup {\upright  "F#m"} d,8 ^\markup {\upright  "Bm"} r fis( g)      | % 15
    a2 ^\markup {\upright  "F#m"} d,      | % 16
    g4 ^\markup {\upright  "G"} fis e d8( e)      | % 17
    e2. ^\markup {\upright  "A"} d8^( cis      | % 18
    d1) ^\markup {\upright  "D"} ^\markup {\upright  "G"} \bar "|."     | % 19
    R1 \bar "|." 
}% end of last bar in partorvoice

      ApartAverseA = \lyricmode { \set stanza = " 1. " Lá está o meu te -- sou -- ro  lá on -- de  não há cho -- ro  on -- de  to -- dos  can -- ta -- re -- mos  jun -- tos  hi -- nos  de lou -- vor  ao Se -- nhor  A -- le -- lui -- a  A -- le -- lu -- ia  A -- le -- lu -- ia  A -- le -- lui -- a  Hi -- nos  de lou -- vor  ao Se -- nhor  }

\score { 
    << 
        \context Staff = ApartA << 
            \context Voice = AvoiceAA \AvoiceAA
        >>

         \context Lyrics = ApartAverseA\lyricsto AvoiceAA  \ApartAverseA



      \set Score.skipBars = ##t
      %%\set Score.melismaBusyProperties = #'()
      \override Score.BarNumber #'break-visibility = #end-of-line-invisible %%every bar is numbered.!!!
      %% remove previous line to get barnumbers only at beginning of system.
       #(set-accidental-style 'modern-cautionary)
      \set Score.markFormatter = #format-mark-box-letters %%boxed rehearsal-marks
       \override Score.TimeSignature #'style = #'() %%makes timesigs always numerical
      %% remove previous line to get cut-time/alla breve or common time 
      \set Score.pedalSustainStyle = #'mixed 
       %% make spanners comprise the note it end on, so that there is no doubt that this note is included.
       \override Score.TrillSpanner #'(bound-details right padding) = #-2
      \override Score.TextSpanner #'(bound-details right padding) = #-1
      %% Lilypond's normal textspanners are too weak:  
      \override Score.TextSpanner #'dash-period = #1
      \override Score.TextSpanner #'dash-fraction = #0.5
      %% lilypond chordname font, like mscore jazzfont, is both far too big and extremely ugly (olagunde@start.no):
      \override Score.ChordName #'font-family = #'roman 
      \override Score.ChordName #'font-size =#0 
      %% In my experience the normal thing in printed scores is maj7 and not the triangle. (olagunde):
      \set Score.majorSevenSymbol = \markup {maj7}
  >>

  %% Boosey and Hawkes, and Peters, have barlines spanning all staff-groups in a score,
  %% Eulenburg and Philharmonia, like Lilypond, have no barlines between staffgroups.
  %% If you want the Eulenburg/Lilypond style, comment out the following line:
  \layout {\context {\Score \consists Span_bar_engraver}}
}%% end of score-block 

#(set-global-staff-size 20)
