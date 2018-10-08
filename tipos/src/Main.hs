module Main where

type Coord = (Double, Double)
data Dir = Norte | Sul | Leste | Oeste

para :: Dir -> Coord -> Coord
para Norte (x, y) = (x, y + 1.0)
para Sul (x, y) = (x, y - 1.0)
para Leste (x, y) = (x + 1, y)
para Oeste (x, y) = (x - 1, y)

main :: IO ()
main = do
  putStrLn "hello world"
