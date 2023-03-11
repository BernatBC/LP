data Tree a = Node a (Tree a) (Tree a) | Empty deriving (Show)

-- 1. Feu una funció size :: Tree a -> Int que, donat un arbre, retorni la seva talla, és a dir, el nombre de nodes que conté.
size :: Tree a -> Int
size Empty = 0
size (Node n tree1 tree2) = 1 + size tree1 + size tree2

-- 2. Feu una funció height :: Tree a -> Int que, donat un arbre, retorni la seva alçada, assumint que els arbres buits tenen alçada zero.
height :: Tree a -> Int
height Empty = 0
height (Node n tree1 tree2) = 1 + max (height tree1) (height tree2)

-- 3. Feu una funció equal :: Eq a => Tree a -> Tree a -> Bool que, donat dos arbres, indiqui si són el mateix.
equal :: Eq a => Tree a -> Tree a -> Bool
equal Empty Empty = True
equal Empty _ = False
equal _ Empty = False
equal (Node n1 a1 a2) (Node n2 b1 b2) = (n1 == n2) && (equal a1 b1) && (equal a2 b2) 

-- 4. Feu una funció isomorphic :: Eq a => Tree a -> Tree a -> Bool que, donat un arbres, indiqui si són el isomorfs, és a dir, si es pot obtenir l’un de l’altre tot girant algun dels seus fills.
isomorphic :: Eq a => Tree a -> Tree a -> Bool
isomorphic Empty Empty = True
isomorphic Empty _ = False
isomorphic _ Empty = False
isomorphic (Node n1 a1 a2) (Node n2 b1 b2) = (n1 == n2) && ((isomorphic a1 b1) && (isomorphic a2 b2) || (isomorphic a1 b2) && (isomorphic a2 b1))

-- 5. Feu una funció preOrder :: Tree a -> [a] que, donat un arbre, retorni el seu recorregut en pre-ordre.
preOrder :: Tree a -> [a] 
preOrder Empty = []
preOrder (Node n tree1 tree2) = [n]++(preOrder tree1)++(preOrder tree2)

-- 6. Feu una funció postOrder :: Tree a -> [a] que, donat un arbre, retorni el seu recorregut en post-ordre.
postOrder :: Tree a -> [a]
postOrder Empty = []
postOrder (Node n tree1 tree2) = (postOrder tree1)++(postOrder tree2)++[n]

-- 7. Feu una funció inOrder :: Tree a -> [a] que, donat un arbre, retorni el seu recorregut en in-ordre.
inOrder :: Tree a -> [a]
inOrder Empty = []
inOrder (Node n tree1 tree2) = (inOrder tree1)++[n]++(inOrder tree2)

-- 8. Feu una funció breadthFirst :: Tree a -> [a] que, donat un arbre, retorni el seu recorregut per nivells.
breadthFirst :: Tree a -> [a]
breadthFirst tree = concat (breadth tree)
    where
        breadth :: Tree a -> [[a]]
        breadth Empty = [[]]
        breadth (Node n tree1 tree2) = [[n]] ++ (merge (breadth tree1) (breadth tree2))
        merge :: [[a]] -> [[a]] -> [[a]]
        merge [[]] list2 = list2
        merge list1 [[]] = list1
        merge (l1:l1s) (l2:l2s) = [l1++l2] ++ (merge l1s l2s)


-- 9. Feu una funció build :: Eq a => [a] -> [a] -> Tree a que, donat el recorregut en pre-ordre d’un arbre i el recorregut en in-ordre del mateix arbre, retorni l’arbre original. Assumiu que l’arbre no té elements repetits.
build :: Eq a => [a] -> [a] -> Tree a
build [] [] = Empty
build (l:ls) list2 = (Node l (build a1 b1) (build a2 b2))
    where
        b1 = takeWhile (/= l) list2
        b2 = drop 1 (dropWhile (/= l) list2)
        a1 = [x | x <- ls, y <- b1, x == y]
        a2 = [x | x <- ls, y <- b2, x == y]

-- 10. Feu una funció overlap :: (a -> a -> a) -> Tree a -> Tree a -> Tree a que, donats dos arbres, retorni la seva superposició utilitzant una funció. Superposar dos arbres amb una funció consisteix en posar els dos arbres l’un damunt de l’altre i combinar els nodes doble resultants amb la funció donada o deixant els nodes simples tal qual.
overlap :: (a -> a -> a) -> Tree a -> Tree a -> Tree a
overlap _ Empty tree2 = tree2
overlap _ tree1 Empty = tree1
overlap func (Node n1 a1 a2) (Node n2 b1 b2) = (Node (func n1 n2) (overlap func a1 b1) (overlap func a2 b2))
