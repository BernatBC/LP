# 1. Escriviu un generador fibs() per als nombres de la sèrie de Fibonacci.
def fibs():
    a = 0
    b = 1
    while True:
        yield a
        a,b = b,a+b

# 2. Escriviu un generador roots(x) per als nombres del desenvolupament de Taylor per calcular l’arrel quadrada d’un real x≥0:
def roots(x):
    fn = x
    while True:
        yield fn
        fn = 1/2*(fn + x/fn)

# 3. Escriviu un generador primes() per als nombres primers.
def primes():
    i = 2
    while True:
        if isPrime(i): yield i
        i += 1

def isPrime(x):
    if x <= 1: return False
    i = 2
    while i < x:
        if x%i == 0: return False
        i += 1
    return True

# 4. Escriviu un generador hammings() per als nombres de Hamming. Els nombres de Hamming són aquells que només tenen 2, 3 i 5 com a divisors primers.
def hammings():
    i = 1
    while True:
        if isHamming(i): yield i
        i += 1

def isHamming(x):
    if x == 1: return True
    if x%2 == 0: return isHamming(x/2)
    if x%3 == 0: return isHamming(x/3)
    if x%5 == 0: return isHamming(x/5)
    return False