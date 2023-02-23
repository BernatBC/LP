-- 1. Feu una funció eql :: [Int] -> [Int] -> Bool que indiqui si dues llistes d’enters són iguals.
eql :: [Int] -> [Int] -> Bool
eql a b
    | length a /= length b = False
    | otherwise = length [x | x<-(zipWith (-) a b), x /= 0] == 0

-- 2. Feu una funció prod :: [Int] -> Int que calculi el producte dels elements d’una llista d’enters.
prod :: [Int] -> Int
prod list = foldl (*) 1 list
-- 3. Feu una funció prodOfEvens :: [Int] -> Int que multiplica tots el nombres parells d’una llista d’enters.
prodOfEvens :: [Int] -> Int
prodOfEvens list = prod (filter even list)

-- 4. Feu una funció powersOf2 :: [Int] que generi la llista de totes les potències de 2.
powersOf2 :: [Int]
powersOf2 = iterate (2*) 1

-- 5. Feu una funció scalarProduct :: [Float] -> [Float] -> Float que calculi el producte escalar de dues llistes de reals de la mateixa mida.
scalarProduct :: [Float] -> [Float] -> Float
scalarProduct a b = foldl (+) 0 (zipWith (*) a b)
