# Computation
ExactMatches ← +´=
FreqCount    ← +´˘(1+↕8)=⌜⊢
NearMatches  ← +´(≠/⊣)⌊○FreqCount≠/⊢

# Input / Output
Parse    ← •BQN˘1↕(¬' '⊸=)⊸/
MakeCode ← 1+·•rand.Range¨4⥊8⌊⊢
Turn     ← {
    F code:
    •Out "Please guess: "
    g ← Parse •GetLine@
    x ← 𝕩 ExactMatches 4↑g
    n ← 𝕩 NearMatches 4↑g
    { 𝕩≡code ? •Out "Game done"; 
      4≠≠𝕩   ? •Out "Guess must be 4 integers" ⋄ F code ;
      8<⌈´𝕩  ? •Out "Integers must be ≤ 8"     ⋄ F code ;
      1>⌊´𝕩  ? •Out "Integers must be ≥ 1"     ⋄ F code
             ; •Out x‿n/"🔴⚪"                 ⋄ F code } g
}

Main ← Turn MakeCode
Main ∞
