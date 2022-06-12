\language deutsch
\header {
  title = "Radosti rotujÃ­cÃ­ ratolesti"
  subtitle = "(2022)"
  composer = "Srnčí a kočičí"}
\layout {
  \context {
    \Staff
    \RemoveEmptyStaves
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
        \relative c' { r1 r r r r r r r r r r2 r4 \tuplet 3/2 {r8 g'8 as8}
        \tuplet 3/2 {b4 c d} \tuplet 3/2 {es f g} \tuplet 3/2 {as b c} \tuplet 3/2 {d es f}
         }

 \new Staff \with { 
    instrumentName = "Klarinet"
    shortInstrumentName = "Cl."
    }
        \relative c' { r1 r r r r r r r r r r 
        es4 as es as es as es as
        }
 \new Staff \with { 
    instrumentName = "Saxofon"
    shortInstrumentName = "Sx."
    }
        \relative c' { r1 r r r r r r r r r r
        c4 es c es c es c es
        }
         
 

   \new Staff \with { 
    instrumentName = "Zpěv"
    shortInstrumentName = "Zp."
    }
        \relative c' { r1 r r r r r r r r r r }
  
    
 
  \new PianoStaff \with { instrumentName = "Piano" }
  <<
    \new Staff
      \relative g' {
        \numericTimeSignature
        \time 4/4
        \set Timing.beamExceptions = #'()
        \set Timing.baseMoment = #(ly:make-moment 1/4)
        \set Timing.beatStructure = 1,1,1,1
    
        \repeat volta 2 \mainmotiv
        \alternative {
          { \triolag \tuplet 3/2 { f4-- a-- b8 a } } 
          { \triolag \tuplet 3/2 { f4-- a-- b8 c } }
        }
        \break
  
        \bridgem \bridgem
        \transpose d c { \bridgem \bridgem }
   
        \tuplet 3/2 { <g h!>8 <g h>4 } \tuplet 3/2 { <g h>4 <f a>8 } 
       \tuplet 3/2 { <g h>8 <g h>4 } \tuplet 3/2 { <g h>4 <f a>8 }
       \tuplet 3/2 { <g h!>8 <g h>4 } \tuplet 3/2 { <g h>4 <f a>8 } 
       \tuplet 3/2 { <h, e g >4 <h e g >4 <b es g>4 }  

        \mainmotiv
       \triolag \tuplet 3/2 { f'4-- a-- b8 a }
       r1 r1
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
    }
    >>
    \new Staff \with { 
    instrumentName = "Kontrabas"
    shortInstrumentName = "Cb."
    }
        \relative c' { r1 r r r r r r r r r r 
        as4 c as c as c as c
        }
  
  >>
  } 
    
    
  \layout {}
  \midi {}