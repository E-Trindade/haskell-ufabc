module Main where
import Graphics.Gloss
import Window

main :: IO ()
--main = display window background (circleSolid 10)
main = display window background (translate (-100) 10 $ color cyan $ circleSolid 10)
