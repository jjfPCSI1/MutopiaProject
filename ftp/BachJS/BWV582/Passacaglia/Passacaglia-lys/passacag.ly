\version "2.19.80"

%% This is to set the overall staff and
%% music glyphs size (smaller, since this is the score).
%#(set-global-staff-size 14) 
% This didn't actually work for some reason. See Layout section below.

\header {
 \include "headers.ly"
 subtitle = "Complete Score"
}


\paper{
%#(define page-breaking ly:minimal-breaking)
}

\include "english.ly"

\include "functions.ly"


\score {
  
  \new StaffGroup
  
   <<
      \new Staff <<
        \new Voice {        % This extra voice is for the rehearsal marks only.
          \include "rehearsalLetterMarks.ly"
        }
        \new Voice {
          \set Staff.instrumentName = \markup { "Violin 1" }
        \include "violin1.ly"
        }
      >>

      \new Staff {
            \set Staff.instrumentName = \markup { "Violin 2" }
          \include "violin2.ly"
        }

      \new Staff {
          \set Staff.instrumentName = \markup { "Viola" }
          \include "viola.ly"
        }
  
      \new Staff {
            \set Staff.instrumentName = \markup { "Cello" }
          \include "cello.ly"
      }
    
   >>
 
   \layout{ }
   
  \midi {
    \tempo 4 = 72
    }

}