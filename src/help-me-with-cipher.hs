{-# LANGUAGE MultiWayIf #-}
import Data.Char (ord, chr)

text :: String
text = "Lu0s z q0tm0uƒ€q~x ƒ40t ‚uy~t (~ 0†w|q~„mPe}q(†ytq(q‚q‚i0…}0uy~…„w0y‚‚m|u†qv„uPeu0q„qy…u0tm0 † (u}0†é‚yqƒ(s ‚u{0u0„i}q~xwƒPTqvt 0ri|qƒ0m0sywi‚‚ ƒ(u0sqz ~qƒ(q0uƒ|‚q~xwƒPSqz‚ ƒ0wƒƒ 0lyŠu~l 0ƒyuP_0ƒq~q|0o‚y„qvt 0~ë PTu~u0ƒuz0yƒƒw0 …u(sxq}i}0tu(‚uƒƒ}‚uy÷ë PPSi€y„qt0Y~ykyq|PZuƒƒ…z‚uy÷ë"

decipher :: (Int, Char) -> Char
decipher (i, c)
    | (i `mod` 5 == 0) = chr $ ord c - 8
    | otherwise        = chr $ ord c - 16

charIndexTuple :: String -> [(Int, Char)]
charIndexTuple s = zip [0..] s

decipherTotal :: String -> String
decipherTotal s = map(decipher) (charIndexTuple s)

substituteAt :: String -> String
substituteAt s = map (\c -> if
                            | c == '@'  -> '\n'
                            | otherwise -> c) s

main :: IO ()
main = putStrLn $ substituteAt $ decipherTotal $ text