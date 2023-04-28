def absValue(x):
    if x < 0: return -x
    else: return x

def power(x, y):
    return x**y

def isPrime(x):
    if x <= 1: return False
    i = 2
    while i < x:
        if x%i == 0: return False
        i += 1
    return True

def slowFib(x):
    if x < 2: return x
    return slowFib(x - 1) + slowFib(x - 2)

def quickFib(x):
    return iterativeFib(x, 0, 1)

def iterativeFib(x, ant, pos):
    if x == 0: return ant
    return iterativeFib(x - 1, pos, ant + pos)