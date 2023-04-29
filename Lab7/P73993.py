from functools import reduce

# 1. Feu una funció evens_product(L) que multiplica tots el nombres parells d’una llista d’enters.
def evens_product(L):
    return reduce(lambda x,y: x*y, [k for k in L if k%2 == 0], 1) 

# 2. Feu una funció reverse(L) que inverteix els elements d’una llista usant la funció reduce.
def reverse(L):
    return reduce(lambda list,x: [x] + list, L, [])

# 3. Definiu una funció d’ordre superior zip_with(f, L1, L2) equivalent al ZipWith de Haskell.
def zip_with(f, L1, L2):
    return list(map(lambda x: apply(f,x), zip(L1, L2)))

def apply(f, t):
    (x,y) = t
    return f(x,y)

# 4. Feu una funció count_if (f, L) que, donada una propietat (funció que donat un element retorna un booleà) i una llista, ens retorna el nombre d’elements de la llista que satisfan la propietat. Noteu que aquesta funció d’ordre superior existeix en llenguatges de tractament de fulls de càlcul com ara EXCEL.
def count_if(f, L):
    return len(list(filter(f,L)))
