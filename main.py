#!/usr/bin/env python3

import random
from collections import Counter

def make_code():
    return [random.randint(1, 8) for _ in range(4)]

def exact_matches(c, g) -> int:
    return sum(a == b for a, b in zip(c, g))

def near_matches(c, g):
    nc = Counter(a for a, b in zip(c, g) if a != b)
    ng = Counter(b for a, b in zip(c, g) if a != b)
    return sum((nc & ng).values())

def make_guess():
    s = input("Please guess: ")
    return [int(i) for i in s.split()]

def main():
    code, guess = make_code(), ""
    while guess != code:
        guess = make_guess()
        x = exact_matches(code[:], guess[:])
        n = near_matches(code[:], guess[:])
        print("🔴" * x + "⚪" * n)

main()
