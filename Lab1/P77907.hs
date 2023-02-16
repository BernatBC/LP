absValue :: Int -> Int
absValue a
    | a < 0 = -a
    | otherwise = a

power :: Int -> Int -> Int
power _ 0 = 1
power base exp
    | True = base * power base (exp - 1)

isPrime :: Int -> Bool
isPrime num
    | True = isPrimeI num 2

isPrimeI :: Int -> Int -> Bool
isPrimeI num i
    | num <= 1 = False
    | num == 2 = True
    | mod num i == 0 = False
    | i * i > num = True
    | otherwise = isPrimeI num (i + 1)

slowFib :: Int -> Int
slowFib num
    | num <= 1 = num
    | otherwise = slowFib (num - 1) + slowFib (num - 2)

quickFib :: Int -> Int
quickFib 0 = 0
quickFib num
    | True = quickFibIt 0 1 1 num

quickFibIt :: Int -> Int -> Int -> Int -> Int
quickFibIt pre pos i n
    | i == n = pos
    | otherwise = quickFibIt pos (pre + pos) (i + 1) n
