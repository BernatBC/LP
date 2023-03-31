main = do
    nom <- getLine
    if femeni nom then putStrLn "Bye!"
    else putStrLn "Hello!"

femeni:: String -> Bool
femeni (x:xs)
    | x == 'A' || x == 'a' = False
    | otherwise = True
