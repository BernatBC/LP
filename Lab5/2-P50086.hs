data Queue a = Queue [a] [a] deriving (Show)

create :: Queue a
create = (Queue [] [])

push :: a -> Queue a -> Queue a
push x (Queue list1 list2) = (Queue list1 ([x]++list2))

pop :: Queue a -> Queue a
pop (Queue list1 list2)
    | length list1 > 0 = (Queue (tail list1) list2)
    | otherwise = (Queue (reverse (init list2)) [])

top :: Queue a -> a
top (Queue list1 list2)
    | length list1 > 0 = head list1
    | otherwise = last list2

empty :: Queue a -> Bool
empty (Queue list1 list2) = length list1 == 0 && length list2 == 0

instance Eq a => Eq (Queue a)
    where
        (==) (Queue a1 a2) (Queue b1 b2) = a1++(reverse a2) == b1++(reverse b2)

instance Functor Queue where
        fmap f (Queue a b) = (Queue (map f a) (map f b))

translation :: Num b => b -> Queue b -> Queue b
translation num queue = fmap (+num) queue

instance Applicative Queue where
    pure k = Queue [k] []
    (Queue a1 a2) <*> (Queue b1 b2) = Queue (a <*> b) []
        where
            a = a1 ++ (reverse a2)
            b = b1 ++ (reverse b2)

instance Monad Queue where
    return k = Queue [k] []
    (Queue q1 q2) >>= f = foldl fusion create (map f (q1 ++ (reverse q2))) 
        where
            fusion :: Queue a -> Queue a -> Queue a
            fusion (Queue a1 a2) (Queue b1 b2) = Queue (a1 ++ (reverse a2) ++ b1 ++ (reverse b2)) []

kfilter :: (p -> Bool) -> Queue p -> Queue p
kfilter func q = do
                    x <- q
                    if func x
                        then return x
                        else create