-- 1a.Feu una funció insert :: [Int] -> Int -> [Int] que, donada una llista ordenada i un element, insereixi ordenadament el nou element a la llista.
insert :: [Int] -> Int -> [Int]
insert [] num = [num] 
insert remaining num
    | x < num = [x] ++ insert (tail remaining) num
    | otherwise = [num] ++ remaining
    where
        x = head remaining

-- 1b. Feu una funció isort :: [Int] -> [Int] que implementi l’algorisme d’ordenació per inserció utilitzant la funció anterior.
isort :: [Int] -> [Int]
isort [] = []
isort remaining = insert (isort (tail remaining)) (head remaining)

-- 2a. Feu una funció remove :: [Int] -> Int -> [Int] que, donada una llista i un element x, elimini la primera ocurrència de x de la llista. Podeu assumir que l’element sempre és a la llista.
remove :: [Int] -> Int -> [Int]
remove [] _ = []
remove remaining num
    | x == num = tail remaining
    | otherwise = [x] ++ remove (tail remaining) num
    where
        x = head remaining

-- 2b. Feu una funció ssort :: [Int] -> [Int] que implementi l’algorisme d’ordenació per selecció utilitzant la funció anterior.
ssort :: [Int] -> [Int]
ssort [] = []
ssort remaining = [x] ++ ssort (remove remaining x)
    where
        x = minimum remaining

-- 3a. Feu una funció merge :: [Int] -> [Int] -> [Int] que, donades dues llistes ordenades, les fusioni per obtenir una llista amb tots els seus elements ordenats.
merge :: [Int] -> [Int] -> [Int]
merge part1 [] = part1
merge [] part2 = part2
merge part1 part2
    | (head part1) < (head part2) = [(head part1)] ++ merge (tail part1) part2
    | otherwise = [(head part2)] ++ merge part1 (tail part2)

-- 3b. Feu una funció msort :: [Int] -> [Int] que implementi l’algorisme d’ordenació per fusió utilitzant la funció anterior.
msort :: [Int] -> [Int]
msort list
    | length list <= 1 = list
    | otherwise = merge (msort (take half list)) (msort (drop half list))
    where
        half = div (length list) 2

-- 4. Feu una funció qsort :: [Int] -> [Int] que implementi l’algorisme d’ordenació ràpida.
qsort :: [Int] -> [Int]
qsort [] = []
qsort (p:xs) = (qsort menors) ++ [p] ++ (qsort majors)
    where
        menors = [x | x <- xs, x <  p]
        majors = [x | x <- xs, x >= p]

-- 5. Generalitzeu la funció anterior per fer ara una funció genQsort :: Ord a => [a] -> [a] que ordeni llistes de qualsevol tipus.
genQsort :: Ord a => [a] -> [a]
genQsort [] = []
genQsort (p:xs) = (genQsort menors) ++ [p] ++ (genQsort majors)
    where
        menors = [x | x <- xs, x <  p]
        majors = [x | x <- xs, x >= p]