-- 1. Feu una funció countIf :: (Int -> Bool) -> [Int] -> Int que, donat un predicat sobre els enters i una llista d’enters, retorna el nombre d’elements de la llista que satisfan el predicat.
-- Nota: Aquesta funció d’ordre superior existeix en llenguatges de tractament de fulls de càlcul com ara EXCEL.
countIf :: (Int -> Bool) -> [Int] -> Int
countIf cond list = length (filter cond list)

-- 2. Feu una funció pam :: [Int] -> [Int -> Int] -> [[Int]] que, donada una llista d’enters i una llista de funcions d’enters a enters, retorna la llista de llistes resultant d’aplicar cada una de les funcions de la segona llista als elements de la primera llista.
pam :: [Int] -> [Int -> Int] -> [[Int]]
pam list functions = map (\x -> map x list) functions

-- 3. Feu una funció pam2 :: [Int] -> [Int -> Int] -> [[Int]] que, donada una llista d’enters i una llista de funcions d’enters a enters, retorna la llista de llistes on cada llista és el resultat d’aplicar successivament les funcions de la segona llista a cada element de la primera llista.
-- Nota: Qualsevol semblança amb La parte contratante de la primera parte será considerada como la parte contratante de la primera parte és pura casualitat.
pam2 :: [Int] -> [Int -> Int] -> [[Int]]
pam2 list funcs = map (\x -> map (\y -> y x) funcs) list

-- 4. Feu una funció filterFoldl :: (Int -> Bool) -> (Int -> Int -> Int) -> Int -> [Int] -> Int que fa el plegat dels elements que satisfan la propietat donada.
filterFoldl :: (Int -> Bool) -> (Int -> Int -> Int) -> Int -> [Int] -> Int
filterFoldl condition operation numCarried list = foldl operation numCarried (filter condition list)

-- 5a. Feu una funció insert :: (Int -> Int -> Bool) -> [Int] -> Int -> [Int] que donada una relació entre enters, una llista i un element, ens retorna la llista amb l’element inserit segons la relació.
insert :: (Int -> Int -> Bool) -> [Int] -> Int -> [Int]
insert relation list num = (filter (\x -> relation x num) list) ++ [num] ++ (filter (\x -> not (relation x num)) list)

-- 5b. Utilitzant la funció insert, feu una funció insertionSort :: (Int -> Int -> Bool) -> [Int] -> [Int] que ordeni la llista per inserció segons la relació donada.
insertionSort :: (Int -> Int -> Bool) -> [Int] -> [Int]
insertionSort relation list = foldl (insert relation) [] list