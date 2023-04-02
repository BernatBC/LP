import Data.List (unfoldr)
-- 1. Definiu recursivament una funció myUnfoldr :: (b -> Maybe (a, b)) -> b -> [a] que funcioni com unfoldr.
myUnfoldr :: (b -> Maybe (a, b)) -> b -> [a]
myUnfoldr func elem = case func elem of
    Nothing -> []
    Just (m, n) -> m:(myUnfoldr func n)

-- 2. Definiu, utilitzant myUnfoldr, una funció myReplicate :: a -> Int -> [a] de manera que myReplicate x n retorni una llista amb n cops el valor x.
myReplicate :: a -> Int -> [a]
myReplicate element n = myUnfoldr func 0
    where
        func x
            | x == n = Nothing
            | otherwise = Just (element, x + 1)

-- 3. Definiu, utilitzant myUnfoldr, una funció myIterate :: (a -> a) -> a -> [a] que funcioni com iterate.
myIterate :: (a -> a) -> a -> [a] 
myIterate func elem = myUnfoldr (\x -> Just (x, (func x))) elem

-- 4. Definiu, utilitzant myUnfoldr, una funció myMap :: (a -> b) -> [a] -> [b] que funcioni com map
myMap :: (a -> b) -> [a] -> [b]
myMap func array = myUnfoldr func2 array
    where
        func2 [] = Nothing
        func2 (x:xs) = Just (func x, xs)

-- 5. Considereu la definició següent del tipus Bst per arbres binaris de cerca, juntament amb una funció add que hi afegeix valors. Feu que els arbres binaris de cerca siguin instància de Show, mostrant-se segons els exemples.
data Bst a = Empty | Node a (Bst a) (Bst a)
add :: Ord a => a -> (Bst a) -> (Bst a)
add x Empty = Node x Empty Empty
add x (Node y l r)
    | x < y          = Node y (add x l) r
    | x > y          = Node y l (add x r)
    | otherwise = Node y l r

instance Show a => Show (Bst a)
    where
        show Empty = "."
        show (Node n l r) = "(" ++ (show n) ++ " " ++ (show l) ++ " " ++ (show r) ++ ")" 

-- 6. Definiu una funció adder :: Ord a => (Bst a, [a]) -> Maybe (Bst a, (Bst a, [a])) de manera que myUnfoldr adder (t, xs) retorni una llista que mostri, pas a pas, la construcció d’un arbre binari de cerca inserint seqüencialment els valors de xs en t. Vegeu l’exemple.
adder :: Ord a => (Bst a, [a]) -> Maybe (Bst a, (Bst a, [a]))
adder (_, []) = Nothing
adder (tree, (x:xs)) = Just (tree2, (tree2, xs))
    where
        tree2 = add x tree