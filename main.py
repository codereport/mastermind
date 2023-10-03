#!/usr/bin/env python3

import random

seq = list[int]

def make_code() -> seq:
    return [random.randint(1, 8) for _ in range(4)]

def exact_matches(c: seq, g: seq) -> int:
    return sum(a == b for a, b in zip(c, g))

def misses(c: seq, g: seq):
    nc, ng = [], []
    for a, b in zip(c, g):
        if a != b:
            nc.append(a)
            ng.append(b)
    res = 0
    for a in ng:
        if a in nc:
            nc.remove(a)
            res += 1
    return res

def make_guess():
    s = input("Please guess: ")
    return [int(i) for i in s.split()]

def main():
    code = make_code()
    guess = ""
    while guess != code:
        guess = make_guess()
        print(exact_matches(code[:], guess[:]))
        print(misses(code[:], guess[:]))
        continue

main()
