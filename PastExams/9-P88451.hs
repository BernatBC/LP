data Tree a = Empty | Node a (Tree a) (Tree a)
data Forest a = Forest [Tree a] deriving (Show)

-- 1. Feu que els arbres genèrics siguins instàncies de la classe Show i s’escriguin a través del recorregut en inordre dels seus elements, seguint el format dels exemples.
instance Show a => Show (Tree a) where
    show Empty = "()"
    show (Node n t1 t2) = "(" ++ (show t1) ++ "," ++ (show n) ++ "," ++ (show t2) ++ ")"

-- 2. Feu que els arbres siguin instància de la classe Functor i implementeu una funció doubleT :: Num a => Tree a -> Tree a que dobli els valors dels nodes d’un arbre, tot utilitzant el functor d’arbres.
instance Functor (Tree) where
    fmap _ Empty = Empty
    fmap func (Node n t1 t2) = (Node (func n) (fmap func t1) (fmap func t2))

doubleT :: Num a => Tree a -> Tree a
doubleT tree = fmap (*2) tree

-- 3. Feu que els boscos d’arbres siguin instància de la classe Functor i implementeu una funció doubleF :: Num a => Forest a -> Forest a que dobli els valors dels nodes dels arbres d’un bosc, tot utilitzant el functor de boscos.
instance Functor (Forest) where
    fmap func (Forest forest) = Forest [fmap func x | x <- forest]

doubleF :: Num a => Forest a -> Forest a
doubleF forest = fmap (*2) forest