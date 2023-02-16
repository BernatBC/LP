absValue :: Int -> Int
absValue a
    | a < 0 = -a
    | otherwise = a

power :: Int -> Int -> Int
power _ 0 = 1
power base exp = base * power base (exp - 1)

isPrime :: Int -> Bool
isPrime num = isPrimeI num 2

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
quickFib num = quickFibIt 0 1 (num - 1)

quickFibIt :: Int -> Int -> Int -> Int
quickFibIt pre pos i
    | i == 0 = pos
    | otherwise = quickFibIt pos (pre + pos) (i - 1)
