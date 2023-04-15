data Tree a = Empty | Node a (Tree a) (Tree a) deriving (Show)

-- 1. Feu que Tree sigui una instància de Foldable. Per fer-ho, implementeu la funció foldr aplicant una funció als elements de l’arbre tot seguint un recorregut en preordre.
instance Foldable Tree where
    foldr _ current Empty = current
    foldr operation current (Node n t1 t2) = operation n val_right
        where
            val_left = foldr operation current t2
            val_right = foldr operation val_left t1

-- 2. Definiu una funció avg :: Tree Int -> Double per calcular la mitjana dels elements d’un arbre d’enters no buit. Useu fromIntegral per convertir d’enter a real.
avg :: Tree Int -> Double
avg t = fromIntegral $ div (sum t) (length t)

-- 3. Definiu una funció cat :: Tree String -> String per concatenar amb espais tots els nodes d’un arbre de textos.
cat :: Tree String -> String
cat Empty = ""
cat (Node n Empty Empty) = n
cat (Node n Empty t) = n ++ " " ++ (cat t)
cat (Node n t Empty) = n ++ " " ++ (cat t)
cat (Node n t1 t2) = n ++ " " ++ (cat t1) ++ " " ++ (cat t2)