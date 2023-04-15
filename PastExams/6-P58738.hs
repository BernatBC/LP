data STree a = Nil | Node Int a (STree a) (STree a) deriving Show

-- 1. Escriviu una funció isOk :: STree a -> Bool que indiqui si les talles dels nodes d’un arbre amb talles són correctes.
isOk :: STree a -> Bool
isOk Nil = True
isOk (Node talla _ t1 t2) = (isOk t1) && (isOk t2) && (talla == (n_nodes t1) + (n_nodes t2) + 1)
    where
        n_nodes :: STree a -> Int
        n_nodes Nil = 0
        n_nodes (Node _ _ t1 t2) = 1 + (n_nodes t1) + (n_nodes t2)

-- 2. Escriviu una funció nthElement :: STree a -> Int -> Maybe a que retorni l’n-èsim element en inordre (començant per 1) d’un arbre amb talla correcte, o Nothing si no existeix. El cost ha de ser O(h) on h és l’alçada de l’arbre.
nthElement :: STree a -> Int -> Maybe a
nthElement Nil _ = Nothing
nthElement (Node talla val t1 t2) n
    | n > talla = Nothing
    | n <= talla1 = nthElement t1 n
    | n == talla1 + 1 = (Just val)
    | otherwise = nthElement t2 (n - talla1 - 1)
        where
            talla1 = n_nodes t1
            n_nodes :: STree a -> Int
            n_nodes Nil = 0
            n_nodes (Node talla _ _ _) = talla

-- 3. Escriviu una funció mapToElements :: (a -> b) -> STree a -> [Int] -> [Maybe b] que aplica (potser) una funció a una llista d’elements d’un arbre amb talla correcte (identificats per la seva posició en inordre).
mapToElements :: (a -> b) -> STree a -> [Int] -> [Maybe b] 
mapToElements func t val = map (\x -> operate func t x) val
    where
        operate :: (a -> b) -> STree a -> Int -> Maybe b
        operate func t n = case k of
            Nothing -> Nothing
            Just a -> (Just (func a))
            where
                k = nthElement t n

-- 4. Feu que STree sigui un functor.
instance Functor (STree) where
    fmap f Nil = Nil
    fmap f (Node talla val t1 t2) = (Node talla (f val) (fmap f t1) (fmap f t2))