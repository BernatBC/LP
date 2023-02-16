-- 1. Feu una funció myLength :: [Int] -> Int que, donada una llista d’enters, calculi la seva llargada.
myLength :: [Int] -> Int
myLength [] = 0
myLength list = 1 + myLength (tail list)

-- 2. Feu una funció myMaximum :: [Int] -> Int que, donada una llista d’enters no buida, calculi el seu màxim.
myMaximum :: [Int] -> Int
myMaximum list
    | length list == 1 = head list
    | head list > last list = myMaximum (init list)
    | otherwise = myMaximum (tail list)

-- 3. Feu una funció average :: [Int] -> Float que, donada una llista d’enters no buida, calculi la seva mitjana.
average :: [Int] -> Float
average list = addition list (length list)

addition :: [Int] -> Int-> Float
addition [] _ = 0
addition list num = ((fromIntegral (head list))/(fromIntegral num)) + (addition (tail list) num)

-- 4. Feu una funció buildPalindrome :: [Int] -> [Int] que, donada una llista, retorni el palíndrom que comença amb la llista invertida.
buildPalindrome :: [Int] -> [Int] 
buildPalindrome list = (reverse list) ++ list

-- 5. Feu una funció remove :: [Int] -> [Int] -> [Int] que donada una llista d’enters x i una llista d’enters y, retorna la llista x havent eliminat totes les ocurrències dels elements en y.
remove :: [Int] -> [Int] -> [Int]
remove list toRemove = addOnly list toRemove []

addOnly :: [Int] -> [Int] -> [Int] -> [Int]
addOnly list toRemove newList
    | list == [] = newList
    | containsInt toRemove (head list) = addOnly (tail list) toRemove (newList)
    | otherwise = addOnly (tail list) toRemove (newList ++ [(head list)])

containsInt :: [Int] -> Int -> Bool
containsInt [] _ = False
containsInt list num
    | (head list) == num = True
    | otherwise = containsInt (tail list) num

-- 6. Feu una funció flatten :: [[Int]] -> [Int] que aplana una llista de llistes produint una llista d’elements.
flatten :: [[Int]] -> [Int]
flatten listlist = addList listlist []

addList :: [[Int]] -> [Int] -> [Int]
addList [] newList = newList
addList listlist newList = addList (tail listlist) (newList ++ (head listlist))

-- 7. Feu una funció oddsNevens :: [Int] -> ([Int],[Int]) que, donada una llista d’enters, retorni dues llistes, una que conté els parells i una que conté els senars, en el mateix ordre relatiu que a l’original.
oddsNevens :: [Int] -> ([Int],[Int])
oddsNevens list = divide list ([],[])

divide :: [Int] -> ([Int],[Int]) -> ([Int],[Int])
divide [] tuple = tuple
divide list (odds, evens)
    | mod x 2 == 0 = divide (tail list) (odds, (evens ++ [x]))
    | otherwise = divide (tail list) ((odds ++ [x]), evens)
    where
        x = (head list)

-- 8. Feu una funció primeDivisors :: Int -> [Int] que retorni la llista de divisors primers d’un enter estrictament positiu.
primeDivisors :: Int -> [Int]
primeDivisors 1 = []
primeDivisors x = primer 2
    where
        primer :: Int -> [Int]
        primer div
            | div > x = []
            | (mod x div == 0) && isPrime div = (div:(primer(div+1)))
            | True = primer(div+1)

isPrime :: Int -> Bool
isPrime num = isPrimeI num 2

isPrimeI :: Int -> Int -> Bool
isPrimeI num i
    | num <= 1 = False
    | num == 2 = True
    | mod num i == 0 = False
    | i * i > num = True
    | otherwise = isPrimeI num (i + 1)