# 1. Feu una funció absValue(x) que, donat un nombre, retorni el seu valor absolut.
def absValue(x):
    if x < 0: return -x
    else: return x

# 2. Feu una funció power(x, p) que, donats un nombre x i un natural p, retorni x elevat a p, és a dir, xp.
def power(x, y):
    return x**y

def isPrime(x):
    if x <= 1: return False
    i = 2
    while i < x:
        if x%i == 0: return False
        i += 1
    return True

# 3. Feu una funció isPrime(x) que, donat un natural, retorni un booleà indicant si aquest és primer o no.
def slowFib(x):
    if x < 2: return x
    return slowFib(x - 1) + slowFib(x - 2)

# 4. Feu una funció slowFib(n) que retorni l’n-èsim element de la sèrie de Fibonacci tot utilitzant l’algorisme recursiu que la defineix (f(0)=0, f(1)=1, f(n)=f(n−1)+f(n−2) per n≥ 2).
def quickFib(x):
    return iterativeFib(x, 0, 1)

# 5. Feu una funció quickFib(n) que retorni l’n-èsim element de la sèrie de Fibonacci tot utilitzant un algorisme més eficient.
def iterativeFib(x, ant, pos):
    if x == 0: return ant
    return iterativeFib(x - 1, pos, ant + pos)