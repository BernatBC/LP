-- 1. Escriviu una funció divisors :: Int -> [Int] que retorni la llista de tots els divisors d’un nombre. No utilitzeu recursivitat.
divisors :: Int -> [Int]
divisors n = [k | k <- [1 .. n], mod n k == 0]

-- 2. Escriviu una funció nbDivisors :: Int -> Int que retorni el nombre de divisors d’un nombre. La vostra solució no pot usar paràmetres (ha de ser point free).
nbDivisors :: Int -> Int
nbDivisors = length . divisors

-- 3. Escriviu una funció moltCompost :: Int -> Bool que indiqui si un nombre donat és molt compost utilitzant llistes per comprensió.
moltCompost :: Int -> Bool
moltCompost n =  and $ map ( < nbDivisors n) list
    where
        list = [nbDivisors k | k <- [1 .. (n - 1)]]