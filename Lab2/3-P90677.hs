myFoldl :: (a -> b -> a) -> a -> [b] -> a
myFoldl _ num [] = num
myFoldl operation num (x:xs) = myFoldl operation (operation num x) xs

myFoldr :: (a -> b -> b) -> b -> [a] -> b
myFoldr _ num [] = num
myFoldr operation num (x:xs)
    | otherwise = operation x (myFoldr operation num xs)

myIterate :: (a -> a) -> a -> [a]
myIterate operation num = [num] ++ (myIterate operation (operation num))

myUntil :: (a -> Bool) -> (a -> a) -> a -> a
myUntil cond operation num
    | cond num = num
    | otherwise = myUntil cond operation (operation num)

myMap :: (a -> b) -> [a] -> [b]
myMap func list = [func x | x <- list, True]

myFilter :: (a -> Bool) -> [a] -> [a]
myFilter cond list = [x | x <- list, cond x]

myAll :: (a -> Bool) -> [a] -> Bool
myAll con list = foldr (&&) True (map con list)

myAny :: (a -> Bool) -> [a] -> Bool
myAny con list = foldr (||) False (map con list)

myZip :: [a] -> [b] -> [(a, b)]
myZip [] _ = []
myZip _ [] = []
myZip (x:xs) (y:ys) = [(x, y)] ++ myZip xs ys

myZipWith :: (a -> b -> c) -> [a] -> [b] -> [c]
myZipWith func list1 list2 = map (\(x, y) -> func x y) (zip list1 list2)
