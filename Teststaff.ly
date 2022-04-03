\header {
  title = "Test staves"
  composer = "Composer"
}

\score {
  <<
    \new Staff \relative c'' {
      c1 | c | c | c | c \break d e f g f e d c 
    }
     \relative c'' {
      \new Staff {
        c1 | c | d
        <<
          {
            c1 | d | e
          }
          \new Staff {
            
            c1 | b c b a
          }
        >>
        c1
      }
    }
  >>
}