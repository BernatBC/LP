-- Problema 1. Expressió postfixa 1
eval1 :: String -> Int
eval1 exp = postfixEval (words exp) []

postfixEval :: [String] -> [Int] -> Int
postfixEval [] (x:xs) = x
postfixEval (x:exp) stack
    | x == "+" = postfixEval exp ((n2 + n1):s2)
    | x == "-" = postfixEval exp ((n2 - n1):s2)
    | x == "*" = postfixEval exp ((n2 * n1):s2)
    | x == "/" = postfixEval exp ((div n2 n1):s2)
    | otherwise = postfixEval exp ((read x):stack)
        where
            (n1:s1) = stack
            (n2:s2) = s1

-- Problema 2. Expressió postfixa 2
eval2 :: String -> Int
eval2 exp = head (foldl postfixEval2  [] (words exp))

postfixEval2 :: [Int] -> String -> [Int]
postfixEval2 stack x
    | x == "+" = (n2 + n1):s2
    | x == "-" = (n2 - n1):s2
    | x == "*" = (n2 * n1):s2
    | x == "/" = (div n2 n1):s2
    | otherwise = (read x):stack
        where
            (n1:s1) = stack
            (n2:s2) = s1

-- Problema 3. fsmap
fsmap :: a -> [a -> a] -> a
fsmap elem [] = elem
fsmap elem (f:fs) = fsmap (f elem) fs

-- Problema 4. Dividir i vèncer
divideNconquer :: (a -> Maybe b) -> (a -> (a, a)) -> (a -> (a, a) -> (b, b) -> b) -> a -> b
divideNconquer base divide conquer x = case base x of
    Just y -> y
    Nothing -> conquer x (a1, a2) (b1, b2)
        where
            (a1, a2) = divide x
            b1 = divideNconquer base divide conquer a1
            b2 = divideNconquer base divide conquer a2

quickSort :: [Int] -> [Int]
quickSort list = divideNconquer base divide conquer list
    where
        base :: [Int] -> Maybe [Int]
        base [] = Just []
        base [x] = Just [x]
        base _ = Nothing

        divide :: [Int] -> ([Int], [Int])
        divide (x:xs) = (y1, y2)
            where
                y1 = [y | y <- xs, y <= x]
                y2 = [y | y <- xs, y > x]

        conquer :: [Int] -> ([Int], [Int]) -> ([Int],[Int]) -> [Int]
        conquer (x:_) _ (y1, y2) = y1 ++ [x] ++ y2 


-- Problema 5. Racionals
data Racional = Racional Integer Integer
racional :: Integer -> Integer -> Racional
racional a b = Racional (div a n) (div b n)
    where
        n = gcd a b

numerador :: Racional -> Integer
numerador (Racional a _) = a

denominador :: Racional -> Integer
denominador (Racional _ a) = a

instance Eq Racional
    where
        (==) (Racional a1 b1) (Racional a2 b2) = (div a1 n1) == (div a2 n2) && (div b1 n1) == (div b2 n2)
            where
                n1 = gcd a1 b1
                n2 = gcd a2 b2

instance Show Racional
    where
        show (Racional a b) = show a ++ "/" ++ show b

-- Problema 6. Arbre de Calkin-Wilf
data Tree a = Node a (Tree a) (Tree a)
recXnivells :: Tree a -> [a]
recXnivells t = recXnivells' [t]
    where recXnivells' ((Node x fe fd):ts) = x:recXnivells' (ts ++ [fe, fd])

racionals :: [Racional]
racionals = recXnivells (createTree (Racional 1 1))
    where
        createTree :: Racional -> Tree Racional
        createTree (Racional a b) = (Node (Racional a b) (createTree r1) (createTree r2))
            where
                r1 = Racional a (a + b)
                r2 = Racional (a + b) b
