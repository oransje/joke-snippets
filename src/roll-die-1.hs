import System.Random (randomRIO)

diceArt :: String
diceArt = "    .........                      \n\
            \  :~, *   * ~,                   \n\
            \  : ~, *   * ~.                  \n\
            \  :  ~........~                  \n\
            \  : *:         :      ~'~,       \n\
            \  :  :         :    ~' *  ~,     \n\
            \  ~* :    *    : ,~' *    * ~,   \n\
            \   ~,:         :.~,*    *  ,~ :  \n\
            \    ~:.........::  ~, *  ,~   :  \n\
            \                : *  ~,,~  *  :  \n\
            \                :* * * :  *   :  \n\
            \                 ~, *  : *  ,~   \n\
            \                   ~,  :  ,~     \n\
            \                     ~,:,~        "


diceResult :: Int -> String
diceResult n = case n of
                 1 -> "~.~.~\n:   :\n: o :\n:   :\n~.~.~"
                 2 -> "~.~.~\n:o  :\n:   :\n:  o:\n~.~.~"
                 3 -> "~.~.~\n:o  :\n: o :\n:  o:\n~.~.~"
                 4 -> "~.~.~\n:o o:\n:   :\n:o o:\n~.~.~"
                 5 -> "~.~.~\n:o o:\n: o :\n:o o:\n~.~.~"
                 6 -> "~.~.~\n:o o:\n:o o:\n:o o:\n~.~.~"


main :: IO ()
main =
    do
        putStrLn "WELCOME TO THE DICE ROLLER"
        putStrLn diceArt
        putStrLn "YOU ROLL THE DICE"
        putStrLn "THE RESULT WAS"
        r <- randomRIO(1, 6)
        putStrLn $ diceResult $ r