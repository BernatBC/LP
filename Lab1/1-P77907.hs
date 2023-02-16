-- 1. Feu una funció absValue :: Int -> Int que, donat un enter, retorni el seu valor absolut.
absValue :: Int -> Int
absValue a
    | a < 0 = -a
    | otherwise = a

-- 2. Feu una funció power :: Int -> Int -> Int que, donats un enter x i un natural p, retorni x elevat a p, és a dir, xp.
power :: Int -> Int -> Int
power _ 0 = 1
power base exp = base * power base (exp - 1)

-- 3. Feu una funció isPrime :: Int -> Bool que, donat un natural, indiqui si aquest és primer o no.
isPrime :: Int -> Bool
isPrime num = isPrimeI num 2

isPrimeI :: Int -> Int -> Bool
isPrimeI num i
    | num <= 1 = False
    | num == 2 = True
    | mod num i == 0 = False
    | i * i > num = True
    | otherwise = isPrimeI num (i + 1)

-- 4. Feu una funció slowFib :: Int -> Int que retorni l’n-èsim element de la sèrie de Fibonacci tot utilitzant l’algorisme recursiu que la defineix (f(0)=0, f(1)=1, f(n)=f(n−1)+f(n−2) per n≥ 2).
slowFib :: Int -> Int
slowFib num
    | num <= 1 = num
    | otherwise = slowFib (num - 1) + slowFib (num - 2)

-- 5. Feu una funció quickFib :: Int -> Int que retorni l’n-èsim element de la sèrie de Fibonacci tot utilitzant un algorisme més eficient.
quickFib :: Int -> Int
quickFib 0 = 0
quickFib num = quickFibIt 0 1 (num - 1)

quickFibIt :: Int -> Int -> Int -> Int
quickFibIt pre pos i
    | i == 0 = pos
    | otherwise = quickFibIt pos (pre + pos) (i - 1)
