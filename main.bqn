# Computation
ExactMatches ← +´=
FreqCount    ← +´˘(1+↕8)=⌜⊢
NearMatches  ← +´(≠/⊣)⌊○FreqCount≠/⊢

# Input/Output
Parse    ← •BQN˘1↕(¬' '⊸=)⊸/
MakeCode ← 1+·•rand.Range¨4⥊8⌊⊢
Turn     ← {
    •Out "Please guess: "
    g ← Parse •GetLine@
    x ← 𝕩 ExactMatches g
    n ← 𝕩 NearMatches g
    •Out x‿n/"🔴⚪"
    g≡𝕩 ? •Out "Game done"; 𝕊𝕩
}

Main ← Turn MakeCode
Main ∞
