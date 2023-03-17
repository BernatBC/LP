data Expr = Val Int | Add Expr Expr | Sub Expr Expr | Mul Expr Expr | Div Expr Expr

eval1 :: Expr -> Int
eval1 (Val k) = k
eval1 (Add ex1 ex2) = (eval1 ex1) + (eval1 ex2)
eval1 (Sub ex1 ex2) = (eval1 ex1) - (eval1 ex2)
eval1 (Mul ex1 ex2) = (eval1 ex1) * (eval1 ex2)
eval1 (Div ex1 ex2) = div (eval1 ex1) (eval1 ex2)

eval2 :: Expr -> Maybe Int
eval2 (Val k) = Just k
eval2 (Add ex1 ex2) = do
                        x <- eval2 ex1
                        y <- eval2 ex2
                        return (x + y)
eval2 (Sub ex1 ex2) = do
                        x <- eval2 ex1
                        y <- eval2 ex2
                        return (x - y)
eval2 (Mul ex1 ex2) = do
                        x <- eval2 ex1
                        y <- eval2 ex2
                        return (x * y)
eval2 (Div ex1 ex2) = do
                        x <- eval2 ex1
                        y <- eval2 ex2
                        if (y == 0)
                            then Nothing
                            else return (div x y)

eval3 :: Expr -> Either String Int
eval3 (Val k) = Right k
eval3 (Add ex1 ex2) = do
                        x <- eval3 ex1
                        y <- eval3 ex2
                        return(x + y)
eval3 (Sub ex1 ex2) = do
                        x <- eval3 ex1
                        y <- eval3 ex2
                        return(x - y)
eval3 (Mul ex1 ex2) = do
                        x <- eval3 ex1
                        y <- eval3 ex2
                        return(x * y)
eval3 (Div ex1 ex2) = do
                        x <- eval3 ex1
                        y <- eval3 ex2
                        if (y == 0)
                            then Left "div0"
                            else return (div x y)
