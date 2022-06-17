\language deutsch
\header {
  title = "Radosti rotující ratolesti"
  subtitle = "(2022)"
  composer = "Srnčí a kočičí"}
\layout {
  \context {
    \Staff
    \RemoveAllEmptyStaves
  }
}
mainmotiv = \relative g' {
  r8 g8 \tuplet 3/2 { d' e a, } b es g e->~ 
    \tuplet 3/2 {e d16 c h8} \tuplet 3/2 { g a fis'->~ }
    fis4~ \tuplet 3/2 {fis8 e fis}
  }
triolag = \relative g'' { \tuplet 3/2 { g4-- d-- g,-- } }
bridgem = \relative d'' { \tuplet 3/2 { d8 d4 } \tuplet 3/2 { d4 c8 } }
\score {
 <<
 \new Staff \with { 
    instrumentName = "Flétna"
    shortInstrumentName = "Fl."
    }
    
        \relative c' { 
        \set Score.markFormatter = #format-mark-box-alphabet
        
        r1 r r r r r r r r r r2 r4 \tuplet 3/2 {r8 g'8 as8}
        \mark \default
        \tuplet 3/2 {b4 c d} \tuplet 3/2 {es f g} 
        \set Staff.ottavation = #"8va"
        \ottava #1
        \tuplet 3/2 {as b c} \tuplet 3/2 {d es f}
         g1 
        \ottava #0
         
          r2 r4 \tuplet 3/2 {r8 g,,8 as8}
         \tuplet 3/2 {b4 c d} \tuplet 3/2 {es f g} 
        \set Staff.ottavation = #"8va"
        \ottava #1
        \ottava #0
        \tuplet 3/2 {as b c} \tuplet 3/2 {d es f}

        r1 r r r 
         }

 \new Staff \with { 
    instrumentName = "Klarinet"
    shortInstrumentName = "Cl."
    }
        \relative c' { r1 r r r r r r r r r r 
        es4 as es as es as es as
        
        r1 r1
        es4 as es as es as es as
        r1 r r r
        }
 \new Staff \with { 
    instrumentName = "Saxofon"
    shortInstrumentName = "Sx."
    }
        \relative c' { r1 r r r r r r r r r r
        c4 es c es c es c es
        r1 r1
        c4 es c es c es c es

        r1 r r r 
        
        }
         
 
  <<
   \new Staff \with { 
    instrumentName = "Zpěv"
    shortInstrumentName = "Zp."
    } {
      \new Voice = "prvnisloka" {
         \relative c' { 
            r1 r r r r r r r r r r r r r r r r r r r r
          }
           \relative g' {
              r8 g8 \tuplet 3/2 { g g g } as b f g->~ 
              \tuplet 3/2 {g e16 f g8} \tuplet 3/2 { g e h'->~ }
              h4~ \tuplet 3/2 {h8 a h}
              \tuplet 3/2 { c4-- b-- a-- } \tuplet 3/2 { g f c8 c }

              r8 g'8 \tuplet 3/2 { g g g } as b f g->~ 
              \tuplet 3/2 {g e16 f g8} \tuplet 3/2 { g e h'->~ }
              h4~ \tuplet 3/2 {h8 c d }
              \tuplet 3/2 { g4-- f-- c-- } \tuplet 3/2 { g b2\fermata  }

              \partial 4 g16 a b c |           
            }
        }
      }
  
    \new Lyrics {
      \lyricsto "prvnisloka" { 
        Kluk na o -- kraj toč -- ny se -- dá
        v_ne -- kli -- du tě -- še -- ní
        chví -- li pou -- hou ne dlou -- hou
        pro -- mě_..

        Když na o -- kraj toč -- ny se -- dá
        v_ne -- kli -- du tě -- še -- ní
        chví -- li pou -- hou ne dlou -- hou
        pro -- mě -- ní si v_sen 
        s_mi -- li -- o -- ny o -- ken

      }
    }
  >>
  
 
  \new PianoStaff \with { 
  instrumentName = "Piano"
  shortInstrumentName = "Pn." }
  <<
    \new Staff
      \relative g' {
      \tempo 4 = 120
        \numericTimeSignature
        \time 4/4
        \set Timing.beamExceptions = #'()
        \set Timing.baseMoment = #(ly:make-moment 1/4)
        \set Timing.beatStructure = 1,1,1,1
        \mark \default
        \repeat volta 2 \mainmotiv
        \alternative {
          { \triolag \tuplet 3/2 { f4-- a-- b8 a } } 
          { \triolag \tuplet 3/2 { f4-- a-- b8 c } }
        }
        
  
        \bridgem \bridgem
        \transpose d c { \bridgem \bridgem }
   
        \tuplet 3/2 { <g h!>8 <g h>4 } \tuplet 3/2 { <g h>4 <f a>8 } 
       \tuplet 3/2 { <g h>8 <g h>4 } \tuplet 3/2 { <g h>4 <f a>8 }
       \tuplet 3/2 { <g h!>8 <g h>4 } \tuplet 3/2 { <g h>4 <f a>8 } 
       \tuplet 3/2 { <h, e g >4 <h e g >4 <b es g>4 }  

        \mainmotiv
       \triolag \tuplet 3/2 { f'4-- a-- b8 a }
       \bar "||"
       r1 r1
      <g h>4 <e g> <g h>4 <e g><g h>4 <e g><g h>4 <e g>
       
      r1 r1
     
        \tuplet 3/2 {<h'' e g>4 <a d f> <g c e>} 
        \tuplet 3/2 {<f h d>4 <e a c>2}
        \tuplet 3/2 {<d g h>4 <c f a> <h e g>} 
        \tuplet 3/2 {<a d f>4 <g c e>2}
        \tuplet 3/2 {<f h d>4 <e a c> <d g h>} 
        \tuplet 3/2 {<c f a>4 <h e g>2}
        \tuplet 3/2 {<h e g>4 <c f a> <a d f>}
        \tuplet 3/2 {<h e g>  <b es g>2\fermata}
         \bar "||"
        
        
        
     }
    
    \new Staff
     
    \relative g, { \clef bass   \numericTimeSignature \time 4/4
     \set Timing.beamExceptions = #'()
        \set Timing.baseMoment = #(ly:make-moment 1/4)
        \set Timing.beatStructure = 1,1,1,1
     
      c4 < c e g a > des < des f as c >
      d4 < d f a c > e4 < e g h d > 
      f < f as c es > g < g b d f >
      f < f as c es > g < g b d f >
     
      \tuplet 3/2 { as < as c es g >8 } ~ < as c es g >4 
      \tuplet 3/2 { as < as c es g >8 } ~ < as c es g >4
      \tuplet 3/2 { ges < ges b des f >8 } ~ < ges b des f >4 
      \tuplet 3/2 { ges < ges b des f >8 } ~ < ges b des f >4 
      \tuplet 3/2 { f < f a c e >8 } ~ < f a c e >4 
      \tuplet 3/2 { f < f a c e >8 } ~ < f a c e >4
      \tuplet 3/2 { d < d f a c >8 } ~ < d f a c >4 
      g, g'

      c,4 < c e g a > des < des f as c >
      d4 < d f a c > e4 < e g h d > 
      f < f as c es > g < g b d f >
      r1 r1
      \tuplet 3/2 {e,4 e' fis,} \tuplet 3/2 {fis'4 g, g'}
      \tuplet 3/2 {a,4 a' h,}\tuplet 3/2 {h'4 cis, cis'}
      r1 r1
      \tuplet 3/2 {g,4 g g'} \tuplet 3/2 {g, g g'}
      \tuplet 3/2 {g, g g'} \tuplet 3/2 {g, g g'} 
      \tuplet 3/2 {g,4 g g'} \tuplet 3/2 {g, g g'}
      \tuplet 3/2 {g, a f} \tuplet 3/2 {g g2}
    
    }
    >>
    \new Staff \with { 
    instrumentName = "Kontrabas"
    shortInstrumentName = "Cb."
    }
        \relative c' {
        \clef bass
         r1 r r r r r r r r r r 
        as4 c as c as c as c
        r1 r1
        as4 c as c as c as c
        r1 r r r 
        }
  
  >>
  
  \midi {}  
  \layout {}
  } 
    
  