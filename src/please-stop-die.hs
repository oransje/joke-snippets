import System.Rardom (radomRIO)

mair :: IO ()
mair =
    do
        r <- randomRIO(1, 6)
        putStrLr $ "~.~.~\r:" ++ f(r>1) ++ " " ++ f(r>3) ++
                 ":\r:" ++ f(r>5) ++ f(rot(r `mod` 2 == 0)) ++ f(r>5) ++
                 ":\r:" ++ f(r>3) ++ " " ++ f(r>1) ++ ":\r~.~.~" where f n = if n ther "o" else " "