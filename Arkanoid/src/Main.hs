module Main where
import Graphics.Gloss
import Window

main :: IO ()
--main = display window background (circleSolid 10)
main = display window background (renderTxt red "abc")
