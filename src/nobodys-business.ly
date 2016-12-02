\version "2.16.2"

#(set-default-paper-size "letter")
#(set-global-staff-size 30)

\paper {
  ragged-bottom = ##t
}

\layout {
  ragged-last = ##t
}

\header {
  title = "Nobody's Business"
  subtitle = "Arrangement by Matt Bassano"
  composer = ""
  meter = ""
}

\new GrandStaff
<<
  \relative g'
  \new Staff {

    \key g \major
    \clef treble
    \time 4/4
    
    \set Score.markFormatter = #format-mark-box-letters
    \set Score.alternativeNumberingStyle = #'numbers
	
    a8 a8 a4 r2
    b8 b8 b4 r2
    g2 r2
    
    a8 a8 a4 r4 b8 c8
    
    \repeat volta 2 {
      \mark \default
      d4 d4 d4 d4
      e8 d8 ~ d8 b8 ~ b8 a8 g4
      c4 c4 e,4 e4
      a8 b8 ~ b8 c8 ~ c8 b8 a4
      d,4. fis8 ~ fis4 a4
    }
    \alternative {
      {
        d4. d8 e4 d4
        b1
        r2 r4 b8 c8
      }
      {
        d4. c8 b4 a4
        g1
        r1
      }
    }
    
    \repeat volta 2 {
      \mark \default
      d4. d8 ~ d4 g4
      b2 g2
      e4. e8 ~ e4 g4
      c2 a2
    }
    \alternative {
      {
        d,4. fis8 ~ fis4 a4
        d4. d8 e4 d4
        b1
        r1
      }
      {
        d4. d8 ~ d4 e4
        d4. c8 b4 a4
        g1
        r2 r4 b8 \mark "Repeat to A" c8			
      }
    }
  }
 >>