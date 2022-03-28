\language deutsch
\header {
  title = "Radosti rotující ratolesti"
  composer = "Srnčí a kočičí"}

\score {
  \relative g' {
    
\numericTimeSignature
\time 4/4
 \set Timing.beamExceptions = #'()
  \set Timing.baseMoment = #(ly:make-moment 1/4)
  \set Timing.beatStructure = 1,1,1,1
    \repeat volta 2
    {r8 g8 \tuplet 3/2 { d' e a, } b es g e->~ 
    \tuplet 3/2 {e d16 c h8} \tuplet 3/2 { g a fis'->~ }
    fis4~ \tuplet 3/2 {fis8 e fis}
     }
    
    \alternative {
     {\tuplet 3/2 { g4-- d-- g,-- } \tuplet 3/2 { f-- a-- b8 a }} 
     { \tuplet 3/2 { g'4-- d-- g,-- } \tuplet 3/2 { f-- a-- b8 c }}
    }
\break
    \tuplet 3/2 { d8 d4 } \tuplet 3/2 { d4 c8 } 
    \tuplet 3/2 { d8 d4 } \tuplet 3/2 { d4 c8 }
    
    \tuplet 3/2 { c8 c4 } \tuplet 3/2 { c4 b8 } 
    \tuplet 3/2 { c8 c4 } \tuplet 3/2 { c4 b8 }
    
    \tuplet 3/2 { <g h!>8 <g h>4 } \tuplet 3/2 { <g h>4 <f a>8 } 
    \tuplet 3/2 { <g h>8 <g h>4 } \tuplet 3/2 { <g h>4 <f a>8 }
     \tuplet 3/2 { <g h!>8 <g h>4 } \tuplet 3/2 { <g h>4 <f a>8 } 
      <h, e g >4 <b es g>4  

    r8 g'8 \tuplet 3/2 { d' e a, } b es g e->~ 
    \tuplet 3/2 {e d16 c h8} \tuplet 3/2 { g a fis'->~ }
    fis4~ \tuplet 3/2 {fis8 e fis}
    \tuplet 3/2 { g4-- d-- g,-- } \tuplet 3/2 { f-- a-- b8 a }
      
  }

  \layout {}
  \midi {}
}