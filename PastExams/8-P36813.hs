import Data.List

-- 1. Implementeu recursivament una funció degree :: Eq a => [(a, a)] -> a -> Int que calculi el grau d’un vèrtex donat.
degree :: Eq a => [(a, a)] -> a -> Int
degree [] _ = 0
degree (a:as) v
    | x == v || y == v = 1 + degree as v
    | otherwise = degree as v
    where
        (x,y) = a

-- 2. Implementeu sense recursivatat una funció degree’ :: Eq a => [(a, a)] -> a -> Int que calculi el grau d’un vèrtex donat.
degree' :: Eq a => [(a, a)] -> a -> Int
degree' arestes v = length $ filter (\x -> contains x v) arestes
    where
        contains :: Eq a => (a, a) -> a -> Bool
        contains (x,y) v = x == v || y == v

-- 3. Implementeu sense recursivitat una funció neighbors :: Ord a => [(a, a)] -> a -> [a] que retorni els veïns d’un vèrtex donat en ordre creixent. Per ordenar llistes, afegiu import Data.List al principi del vostre programa i utilitzeu la funció sort :: Ord a => [a] -> [a].
neighbors :: Ord a => [(a, a)] -> a -> [a]
neighbors arestes v = sort $ map (\x -> edgeToVertice x v) (filter (\x -> contains x v) arestes)
    where
        contains :: Ord a => (a, a) -> a -> Bool
        contains (x,y) v = x == v || y == v
        edgeToVertice :: Ord a => (a, a) -> a -> a
        edgeToVertice (x,y) v
            | x == v = y
            | otherwise = x