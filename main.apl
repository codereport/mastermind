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
    ⎕ ← ⍵ ExactMatches g
    ⎕ ← ⍵ NearMatches g
    g≡⍵:'Game over'
    ∇ ⍵
}

Main ← {
    c ← MakeCode ⍬
    Turn c
}
