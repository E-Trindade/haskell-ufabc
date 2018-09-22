module Main where

lista = [1..10]

--idx :: Int -> [a] -> a
--idx i xs = head(drop i xs)


fact n = product [1..n]

--length [] = 0
--length _:xs = 1 + length tail(xs)


tk :: (Ord t, Num t, Eq a) => t -> [a] -> [a]
tk i xs 
        | i <= 0     = [] 
        | xs == []   = []
        | otherwise  = head(xs) : tk (i-1) (tail xs)

main :: IO ()
main = do
  putStrLn "hello world"
