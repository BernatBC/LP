-- 1. Llista infinita
multEq :: Int -> Int -> [Int]
multEq x y = iterate (*(x*y)) 1

-- 2. Selecció
selectFirst :: [Int] -> [Int] -> [Int] -> [Int]
selectFirst [] _ _ = []
selectFirst (x:l1) l2 l3
    | containsOffset x l2 l3 = x:(selectFirst l1 l2 l3)
    | otherwise = selectFirst l1 l2 l3
    where
        containsOffset :: Int -> [Int] -> [Int] -> Bool
        containsOffset _ [] _ = False
        containsOffset x l2 l3
            | y == (-1) = False
            | z == (-1) = True
            | z > y = True
            | otherwise = False
            where
                y = findPos x l2
                z = findPos x l3
        findPos :: Int -> [Int] -> Int
        findPos _ [] = (-1)
        findPos x (y:ys)
            | x == y = 0
            | res == (-1) = res
            | otherwise = (res + 1)
            where
                res = findPos x ys

-- 3. iterate amb scanl
myIterate :: (a -> a) -> a -> [a]
myIterate func elem = scanl (\x _ -> func x) elem [0..]

-- 4. Taula de símbols
type SymTab a = String -> Maybe a
empty :: SymTab a
empty = (\_ -> Nothing)

get :: SymTab a -> String -> Maybe a
get table s = table s

set :: SymTab a -> String -> a -> SymTab a
set table s n = (\x -> if (x == s) then (Just n) else (get table x))

-- 5. Expressions amb símbols
data Expr a
    = Val a
    | Var String
    | Sum (Expr a) (Expr a)
    | Sub (Expr a) (Expr a)
    | Mul (Expr a) (Expr a)
    deriving Show

eval :: (Num a) => SymTab a -> Expr a -> Maybe a
eval _ (Val x) = Just x
eval table (Var s) = get table s
eval table (Sum x y) = do
    a <- (eval table x)
    b <- (eval table y)
    return (a + b)
eval table (Sub x y) = do
    a <- (eval table x)
    b <- (eval table y)
    return (a - b)
eval table (Mul x y) = do
    a <- (eval table x)
    b <- (eval table y)
    return (a * b)