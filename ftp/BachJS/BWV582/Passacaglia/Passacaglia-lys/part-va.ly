\version "2.19.80"

\include "english.ly"
\include "functions.ly"

\header {
 \include "headers.ly"
 instrument = "Viola"
}

%% This is to set the overall staff and
%% music glyphs size (bigger than default!).
#(set-global-staff-size 20)

\paper{
  % The following tries to make good page turns:
  % #(define page-breaking ly:page-turn-breaking)
  obsolete-between-system-padding = 2\mm  system-system-spacing #'padding = #(/ obsolete-between-system-padding staff-space)  score-system-spacing #'padding = #(/ obsolete-between-system-padding staff-space)
  obsolete-between-title-space = 1\mm  markup-markup-spacing #'basic-distance = #(/ obsolete-between-title-space staff-space)
  ragged-bottom = ##t
  ragged-last-bottom = ##t
}

\score {
  \new Staff <<
    \new Voice {
      \include "rehearsalLetterMarks.ly"
    }
    \new Voice {
    \include "pageBreaksViola.ly"
    }
    \new Voice {
    \include "viola.ly"
    }
  >>
  
  \layout { }
  \midi {
    \tempo 4 = 72
  }
}