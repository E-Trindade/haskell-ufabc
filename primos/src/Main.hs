module Main where

divisores n = [x | x <- [1..n], n `mod` x == 0]

primo x = divisores x == [1, x]

-- Todo primo exceto 2 e 3 pode ser expresso na forma 6*k-1 ou 6*k+1
todosPrimos = 2:3: [n | k <- [1..],
                        n <- [6 * k - 1, 6 * k + 1],
                        primo n]

z :: Integer
z = 0

f :: Integer -> Integer -> Integer
f x y = x + y

fib :: [Integer]
fib = zipWith (f) a b
    where
        a = 1 : scanl1 (+) [1,2..]
        b = 0 : scanl1 (+) [0,1..]
{--
--}
fibs = 1 : (zipWith (+) fibs (0:fibs))

--qsort :: (Foldable t) => t a -> t a
--
--

dobra = (2*)
somaUm = (1+)

impares = 1 : map (somaUm . dobra) [1..]

impares' = map somaUm $ map dobra [1..100]

qsort [] = []
qsort (x:xs) = qsort menores ++ [x] ++ qsort maiores
    where
        menores = [a | a <- xs, a < x]
        maiores = [a | a <- xs, a >= x]

main :: IO ()
main = do
  putStrLn "hello world"
