main = do
    line <- getLine
    if (line == "*") then return ()
    else do
        let input = words line
            ibm = calcIbm (input !! 1) (input !! 2)
        putStr (input !! 0)
        if ibm < 18 then putStrLn ": magror"
        else if ibm < 25 then putStrLn ": corpulencia normal"
        else if ibm < 30 then putStrLn ": sobrepes"
        else if ibm < 40 then putStrLn ": obesitat"
        else putStrLn ": obesitat morbida"
        main
    

calcIbm:: String -> String -> Float
calcIbm weight height = w/(h*h)
    where
        w = read weight :: Float
        h = read height :: Float