module Main where
import Graphics.Gloss
import Window
import Ball
import Blocks

main :: IO ()
main = display window background (pictures [walls, ball (0, 0)])
