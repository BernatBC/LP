hanoi :: Int -> String -> String -> String -> IO()
hanoi 0 _ _ _ = return ()
hanoi n start end aux = do
    (hanoi (n-1) start aux end) 
    putStrLn (start ++ " -> " ++ end)
    (hanoi (n-1) aux end start)


main = do
    l <- getLine
    let [disks, start, end, aux] = words l
    hanoi (read disks) start end aux