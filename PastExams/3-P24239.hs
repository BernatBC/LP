-- 1. Nombres romans (amb recursivitat)
roman2int :: String -> Int
roman2int roman = additionSub (map letterToInt roman)
    where
        additionSub :: [Int] -> Int
        additionSub [] = 0
        additionSub (x:xs)
            | xs == [] || x >= head xs = additionSub xs + x
            | otherwise = additionSub xs - x
        

letterToInt :: Char -> Int
letterToInt 'I' = 1
letterToInt 'V' = 5
letterToInt 'X' = 10
letterToInt 'L' = 50
letterToInt 'C' = 100
letterToInt 'D' = 500
letterToInt 'M' = 1000

-- 2. Nombres romans (sense recursivitat)
roman2int' :: String -> Int
roman2int' roman = additionSub2 (map letterToInt roman)
    where
        additionSub2 :: [Int] -> Int
        additionSub2 nums = sum (zipWith negate nums ((tail nums) ++ [0]))
            where
                negate :: Int -> Int -> Int
                negate x y
                    | x >= y = x
                    | otherwise = -x


-- 3. Arrels
arrels :: Float -> [Float]
arrels x = taylorSeq x (-1)
    where
        taylorSeq :: Float -> Float -> [Float]
        taylorSeq x (-1) = (x:(taylorSeq x x))
        taylorSeq x fn1 = (fn:(taylorSeq x fn))
            where
                fn = 0.5 * (fn1 + x / fn1)

-- 4. Més arrels
arrel :: Float -> Float -> Float
arrel x e = calcArrel (arrels x) e
    where
        calcArrel :: [Float] -> Float -> Float
        calcArrel (x:(y:list)) e
            | abs (x - y) <= e = y
            | otherwise = calcArrel (y:list) e

-- 5. Escriptura d’arbres
data LTree a = Leaf a | Node (LTree a) (LTree a)

instance Show a => Show (LTree a)
    where
        show (Leaf k) = "{" ++ show k ++ "}"
        show (Node tree1 tree2) = "<" ++ (show tree1) ++ "," ++ (show tree2) ++ ">"

-- 6. Creació d’arbres equilibrats
build :: [a] -> LTree a
build [x] = (Leaf x)
build list = (Node (build part1) (build part2))
    where
        part1 = take (div ((length list) + 1) 2) list
        part2 = drop (div ((length list) + 1) 2) list

-- 7. Mònades i arbres
zipLTrees :: LTree a -> LTree b -> Maybe (LTree (a,b))
zipLTrees (Node tree1 tree2) (Node tree3 tree4) = do
    treeA <- zipLTrees tree1 tree3
    treeB <- zipLTrees tree2 tree4
    return (Node treeA treeB)
zipLTrees (Leaf leaf1) (Leaf leaf2) = Just (Leaf (leaf1, leaf2))
zipLTrees _ _ = Nothing