-- 1. Feu una funció sumMultiples35 :: Integer -> Integer que, donat un natural n, retorni la suma de tots els múltiples de 3 o de 5 per sota de n.
sumMultiples35 :: Integer -> Integer
sumMultiples35 n = addition 3 + addition 5 - addition 15
    where
        addition :: Integer -> Integer
        addition p = p * (limit p) * ((limit p) + 1) `div` 2
        limit :: Integer -> Integer
        limit p = div (n - 1) p

-- 2. Feu una funció fibonacci :: Int -> Integer que, donat un natural n, retorni l’n-èsim elements de la sèrie de Fibonacci.
fibonacci :: Int -> Integer
fibonacci k = fib 0 1 k

fib :: Integer -> Integer -> Int -> Integer
fib elem _ 0 = elem
fib elem1 elem2 k = fib elem2 (elem1 + elem2) (k - 1) 

-- 3. Feu una funció sumEvenFibonaccis :: Integer -> Integer que, donat un natural n, retorni la suma de tots els elements parells inferiors a n de la sèrie de Fibonacci.
sumEvenFibonaccis :: Integer -> Integer
sumEvenFibonaccis val = foldl (+) 0 evenFibs
    where
        allFibs = takeWhile (<val) fibs
        evenFibs = [k | k <- allFibs, mod k 2 == 0]

fibs :: [Integer]
fibs = (0:(fibonaccis 0 1))

fibonaccis :: Integer -> Integer -> [Integer]
fibonaccis elem1 elem2 = (elem2:(fibonaccis elem2 (elem1 + elem2)))

-- 4. Feu una funció largestPrimeFactor :: Int -> Int que, donat un natural n≥1, retorna el factor primer més gran de n.
largestPrimeFactor :: Int -> Int
largestPrimeFactor n = last primeFactors
    where
        primeFactors = [k | k <- (takeWhile (<=n) (1:primes)), mod n k == 0]
        primes :: [Int]
        primes = garabell (iterate (+1) 2)
            where
                garabell (x:xs) = x:garabell (filter (\y -> mod y x /= 0) xs)

-- 5. Feu una funció isPalindromic :: Integer -> Bool que, donat un natural n, retorni si n és palindròmic, és a dir, si n es llegeix igual del dret que del revés.
isPalindromic :: Integer -> Bool
isPalindromic n = k == reverse k
    where
        k = show n