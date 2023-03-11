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