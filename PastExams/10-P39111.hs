import Data.List (sort)
type Pos = (Int, Int)       -- la casella inferior esquerra és (1,1)

-- 1. Definiu una funció dins :: Pos -> Bool que, donada una posició d’un cavall, retorni si aquesta és dins del tauler. 
dins :: Pos -> Bool
dins (f, c) = f > 0 && f < 9 && c > 0 && c < 9

-- 2. Definiu una funció moviments :: Pos -> [Pos] que, donada una posició d’un cavall dins del tauler, retorni la llista de posicions dins del tauler on es pot trobar després d’un salt. L’ordre de la llista no és important: Els jocs de proves ja l’ordenen amb sort. Però heu d’escriure import Data.List (sort) al principi del vostre programa.
moviments :: Pos -> [Pos]
moviments (f, c) = m1 ++ m2 ++ m3 ++ m4 ++ m5 ++ m6 ++ m7 ++ m8
    where
        m1 = mov ((f + 1), (c + 2))
        m2 = mov ((f - 1), (c + 2))
        m3 = mov ((f + 1), (c - 2))
        m4 = mov ((f - 1), (c - 2))
        m5 = mov ((f + 2), (c + 1))
        m6 = mov ((f - 2), (c + 1))
        m7 = mov ((f + 2), (c - 1))
        m8 = mov ((f - 2), (c - 1))

mov :: Pos -> [Pos]
mov p
    | dins p = [p]
    | otherwise = []

-- 3. Definiu una funció potAnar3 :: Pos -> Pos -> Bool que, donada una posició inicial p dins del tauler i una posició final q, digui si un cavall pot anar de p a q en (exactament) tres salts. 
potAnar3 :: Pos -> Pos -> Bool
potAnar3 m0 m3 = contains m3 m3b
    where
        m1 = moviments m0
        m2 = concat $ map moviments m1
        m3b = concat $ map moviments m2

contains :: Pos -> [Pos] -> Bool
contains _ [] = False
contains pos (x:xs)
    | pos == x = True
    | otherwise = contains pos xs

-- 4. Definiu ara una funció potAnar3’ :: Pos -> Pos -> Bool que faci el mateix que potAnar3 però trient partit del fet que les llistes són instància de Monad.
potAnar3' :: Pos -> Pos -> Bool
potAnar3' m0 m3 = contains m3 (concat m3b)
    where
    m3b = do
        m1 <- moviments m0
        m2 <- moviments m1
        return (moviments m2)