#!/usr/bin/env python
# coding: utf-8

def is_odd(n):
    if n % 2 == 0:
        return True
    else:
        return False

def fibo(n):
    if n == 1:
        return 1
    elif n == 2:
        return 2
    else:
        return fibo(n - 1) + fibo(n - 2)

def proc():  
    p1 = 1
    p2 = 2
    t = 2
    while True:
        v = p1 + p2
        if v > 4000000:
            break
        if is_odd(v):
            t += v
        p1 = p2
        p2 = v
    print t

if __name__ == "__main__":
    proc()
