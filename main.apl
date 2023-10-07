MakeCode     ← {?4⍴8}
ExactMatches ← +/=
NearMatches ← {
    m ← ⍺≠⍵        ⍝ Mask
    c ← +/(⍳8)∘.=⊢ ⍝ Counter
    ⍺(+/⌊⍥(c m/⊢))⍵
}

Turn ← {
    ⍝ ⍵: code, g: guess
    ⎕ ← 'Please guess: ' ⋄ g ← ⍎⍞
    x ← ⍵ ExactMatches g
    n ← ⍵ NearMatches g
    ⎕ ← x n/'🔴⚪'
    g≡⍵:'Game over'
    ∇ ⍵
}

Main ← {
    c ← MakeCode ⍬
    Turn c
}
