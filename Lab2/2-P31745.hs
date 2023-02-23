-- 1. Feu una funció flatten :: [[Int]] -> [Int] que aplana una llista de llistes d’enters en una llista d’enters.
flatten :: [[Int]] -> [Int]
flatten list = foldl (++) [] list

-- 2. Feu una funció myLength :: String -> Int que retorna la llargada d’una cadena de caràcters.
myLength :: String -> Int
myLength list = foldl (+) 0 (map (const 1) list)

-- 3. Feu una funció myReverse :: [Int] -> [Int] que inverteix els elements d’una llista d’enters.
myReverse :: [Int] -> [Int]
myReverse list = foldl (\x list -> list:x) [] list

-- 4. Feu una funció countIn :: [[Int]] -> Int -> [Int] que, donada una llista de llistes d’elements ℓ i un element x ens torna la llista que indica quants cops apareix x en cada llista de ℓ.
countIn :: [[Int]] -> Int -> [Int]
countIn list n = map (\x -> countSingle x n) list

countSingle :: [Int] -> Int -> Int
countSingle list n = foldl (+) 0 (map (const 1) [y | y <- list, y == n])

-- 5. Feu una funció firstWord :: String -> String que, donat un string amb blancs i caràcacters alfabètics), en retorna la primera paraula.
firstWord :: String -> String
firstWord list = takeWhile (\x -> x /= ' ') (dropWhile (\x -> x == ' ') list)

