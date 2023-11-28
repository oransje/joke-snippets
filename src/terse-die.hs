import System.Random (randomRIO)

ball :: Bool -> [Char]
ball b = if b then "o" else " "

diceResult :: Int -> String
diceResult n = "~.~.~\n:" ++ ball(n>1) ++ " " ++ ball(n>3) ++
               ":\n:" ++ ball(n>5) ++ ball(not(n `mod` 2 == 0)) ++ ball(n>5) ++
               ":\n:" ++ ball(n>3) ++ " " ++ ball(n>1) ++ ":\n~.~.~"

main :: IO ()
main =
    do
        r <- randomRIO(1, 6)
        putStrLn $ diceResult $ r