MakeCode     ← ?4⍴8
ExactMatches ← +/=
NearMatches ← {
    m ← ⍺≠⍵       ⍝ Mask
    c ← +/(⍳8)∘.=⊢ ⍝ Counter
    ⍺(+/⌊⍥(c m/⊢))⍵
}

∇ Turn c;g
    g←''
    :While ~g≡c
        ⎕ ← 'Please guess: ' ⋄ g ← ⍎⍞
        ⎕ ← c ExactMatches g
        ⎕ ← c NearMatches g
    :EndWhile
∇

Main ← {
    c ← MakeCode
    Turn c
}
