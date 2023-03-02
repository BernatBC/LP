-- 1. Feu una funció myMap :: (a -> b) -> [a] -> [b] que emuli el map usant llistes per comprensió.
myMap :: (a -> b) -> [a] -> [b]
myMap func list = [func x | x <- list]

-- 2. Feu una funció myFilter :: (a -> Bool) -> [a] -> [a] que emuli el filter usant llistes per comprensió.
myFilter :: (a -> Bool) -> [a] -> [a]
myFilter cond list = [x | x <- list, cond x]

-- 3. Feu una funció myZipWith :: (a -> b -> c) -> [a] -> [b] -> [c] que que emuli el zipWith usant llistes per comprensió i zip.
myZipWith :: (a -> b -> c) -> [a] -> [b] -> [c]
myZipWith func list1 list2 = [func x y | (x, y) <- zip list1 list2]

-- 4. Feu una funció thingify :: [Int] -> [Int] -> [(Int, Int)] que, donades dues llistes d’enters, genera la llista que aparella els elements si l’element de la segona llista divideix al de la primera.
thingify :: [Int] -> [Int] -> [(Int, Int)]
thingify list1 list2 = [(x, y) | x <- list1, y <- list2, mod x y == 0]

-- 5. Feu una funció factors :: Int -> [Int] que, donat un natural no nul, genera la llista ordenada amb els seus factors (no necessàriament primers).
factors :: Int -> [Int]
factors n = [x | x <- [1 .. n], mod n x == 0]