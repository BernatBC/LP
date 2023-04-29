# 1. Escriviu una funció my_map(f, L) que correspongui a una nova definició de la funció estàndard map tot usant llistes per comprensió.
def my_map(f,L):
    return [f(k) for k in L]

# 2. Escriviu una funció my_filter(f, L) que correspongui a una nova definició de la funció estàndard filter tot usant llistes per comprensió.
def my_filter(f, L):
    return [k for k in L if f(k)]

# 3. Escriviu una funció factors(n) que, donat un enter estrictament positiu, retorni la llista amb els seus factors (no necessàriament primers).
def factors(n):
    return [k for k in range(1, n + 1) if n%k == 0]

# 4. Escriviu una funció triplets(n) que, donat un enter estrictament positiu n, retorni una llista de totes les tripletes pitagòriques de n, és a dir, tripletes (a, b, c) on a2 + b2 = c2 amb 1≤ a, b, c ≤ n.
def triplets(n):
    return [(i,j,k) for i in range(1, n + 1) for j in range(1, n + 1) for k in range(j, n + 1) if i*i + j*j == k*k]