-- Escriviu un programa complet en Haskell que llegeixi una seqüència d’enters i escrigui la seva suma. Procureu que l’E/S estigui tan desacoplada com sigui possible de la lògica. Us poden anar bé les funcions words, show, read i les accions getContents i putStrLn.
main = do
    line <- getContents
    let list = words line
    let num = addition list
    putStrLn $ show $ num
    return ()

addition :: [String] -> Int
addition [] = 0
addition (x:xs) = (read x) + addition xs