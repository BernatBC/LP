-- 1. Generar la seqüència dels uns [1,1,1,1,1,1,1,1,…].
ones :: [Integer]
ones = repeat 1

-- 2. Generar la seqüència dels naturals [0,1,2,3,4,5,6,7…].
nats :: [Integer]
nats = iterate (+1) 0

-- 3. Generar la seqüència dels enters [0,1,−1,2,−2,3,−3,4…].
ints :: [Integer]
ints = iterate (integerGen) 0
    where
        integerGen :: Integer -> Integer
        integerGen n
            | n > 0 = -n
            | otherwise = -n + 1

-- 4. Generar la seqüència dels nombres triangulars: 0,1,3,6,10,15,21,28,…].
triangulars :: [Integer]
triangulars = scanl (+) 0 (iterate (+1) 1)

-- 5. Generar la seqüència dels nombres factorials: [1,1,2,6,24,120,720,5040,…].
factorials :: [Integer]
factorials = scanl (*) 1 (iterate (+1) 1)

-- 6. Generar la seqüència dels nombres de Fibonacci: [0,1,1,2,3,5,8,13,…].
fibs :: [Integer]
fibs = 0:1:(zipWith (+) fibs (tail fibs))

-- 7. Generar la seqüència dels nombres primers: [2,3,5,7,11,13,17,19,…].
primes :: [Integer]
primes = garabell (iterate (+1) 2)
    where
        garabell (x:xs) = x:garabell (filter (\y -> mod y x /= 0) xs)

-- 8. Generar la seqüència ordenada dels nombres de Hamming: [1,2,3,4,5,6,8,9,…]. Els nombres de Hamming són aquells que només tenen 2, 3 i 5 com a divisors primers.
hammings :: [Integer]
hammings = 1:fusion (map (*2) hammings) (fusion (map (*3) hammings) (map (*5) hammings))
    where
        fusion (x:xs) (y:ys)
            | x < y = x:fusion xs (y:ys)
            | x == y = x:fusion xs ys
            | otherwise = y:fusion (x:xs) ys

-- 9. Generar la seqüència mira i digues: [1,11,21,1211,111221,312211,13112221,1113213211,…].
lookNsay :: [Integer]
lookNsay = iterate (\x -> arrayToInteger (count (integerToArray x))) 1
    where
        integerToArray num
            | num == 0 = []
            | otherwise = integerToArray (div num 10) ++ [mod num 10]

        arrayToInteger list = foldl (\x y -> 10*x + y) 0 list

        count [] = []
        count (x:xs) = toInteger (1 + length (takeWhile (==x) xs)) : x : count (dropWhile (==x) xs)

-- 10. Generar la seqüència de les files del triangle de Tartaglia (també anomenat triangle de Pascal): [[1],[1,1],[1,2,1],[1,3,3,1],…].
tartaglia :: [[Integer]]
tartaglia = tart [1]
    where
        tart list = [list] ++ tart (zipWith (+) (0:list) (list++[0]))
