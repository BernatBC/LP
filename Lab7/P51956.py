# 1. Feu una funció myLength(L) que, donada una llista, retorni la seva llargada.
def myLength(L):
    n = 0
    for _ in L:
        n += 1
    return n

# 2. Feu una funció myMaximum(L) que, donada una llista no buida, retorni el seu màxim.
def myMaximum(L):
    max = L[0]
    for k in L:
        if k > max: max = k
    return max

# 3. Feu una funció average(L) que, donada una llista de nombres no buida, retorni la seva mitjana.
def average(L):
    sum = 0
    for k in L:
        sum += k
    return sum/len(L)

# 4. Feu una funció buildPalindrome(L) que, donada una llista, retorni el palíndrom que comença amb la llista invertida.
def buildPalindrome(L):
    L2 = L.copy()
    L2.reverse()
    return L2 + L

# 5. Feu una funció remove(L1, L2) que donada una llista L1 i una llista L2, retorna la llista L1 havent eliminat totes les ocurrències dels elements en L2.
def remove(L1, L2):
    L = []
    for k in L1:
        if L2.count(k) == 0: L += [k]
    return L

# 6. Feu una funció flatten(L) que aplana recursivament una llista d’elements que també poden ser llistes amb diferents nivells. Pista: feu-la recursiva usant isinstance(x, list).
def flatten(L):
    L2 = []
    for k in L:
        if isinstance(k, list): L2 += flatten(k)
        else: L2 += [k]
    return L2

# 7. Feu una funció oddsNevens(L) que, donada una llista d’enters, retorni dues llistes, una que conté els senars i una que conté els parells, en el mateix ordre relatiu que a l’original.
def oddsNevens(L):
    odds = []
    evens = []
    for k in L:
        if k%2 == 0: evens.append(k)
        else: odds.append(k)
    return (odds, evens)

# 8. Feu una funció primeDivisors(n) que retorni la llista de divisors primers d’un enter estrictament positiu.
def primeDivisors(n):
    return [k for k in range(1, n + 1) if isPrime(k) and n%k == 0]

def isPrime(x):
    if x <= 1: return False
    i = 2
    while i < x:
        if x%i == 0: return False
        i += 1
    return True