Em ← +´=            # Exact Matches
Fc ← +´˘(1+↕8)=⌜⊢   # Frequency Count
Nm ← +´(≠/⊣)⌊○Fc≠/⊢ # Near Matches

Parse    ← { •BQN˘1↕(¬' '⊸=)⊸/𝕩 }
MakeCode ← { 1 + •rand.Range ¨ 4⥊8⌊𝕩 }
Turn     ← {
    •Out "Please guess: "
    g ← Parse •GetLine@
    •Show 𝕩 Em g
    •Show 𝕩 Nm g
     g≡𝕩 ? •Out "Game done"; 𝕊𝕩
}

Main ← {
    c ← MakeCode 𝕩
    Turn c
}

Main ∞
