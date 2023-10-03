#!/usr/bin/env python3

import random
from collections import Counter

seq = list[int]

def make_code() -> seq:
    return [random.randint(1, 8) for _ in range(4)]

def exact_matches(c: seq, g: seq) -> int:
    return sum(a == b for a, b in zip(c, g))

def near_matches(c: seq, g: seq):
    nc, ng = Counter(), Counter()
    for a, b in zip(c, g):
        if a != b:
            nc[a] += 1
            ng[b] += 1
    return sum((nc & ng).values())

def make_guess():
    s = input("Please guess: ")
    return [int(i) for i in s.split()]

def main():
    code = make_code()
    guess = ""
    while guess != code:
        guess = make_guess()
        print(exact_matches(code[:], guess[:]))
        print(near_matches(code[:], guess[:]))

main()
