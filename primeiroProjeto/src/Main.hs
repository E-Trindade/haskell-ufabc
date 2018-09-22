module Main where

dobra x = x + x

quadruplica x = dobra(dobra x)

fatorial n = product [1..n]

--raiz2grau a b c = ( (-b + sqrt(b^2 - 4*a*c) / (2 + a)), (-b - sqrt(b^2 - 4*a*c) / (2 + a)))

raiz2Grau :: (Ord a, Floating a) => a -> a -> a -> (a, a)
raiz2Grau a b c = if (delta >= 0) then (x1, x2) else (0.0, 0.0)
    where
       x1 = -b + sqrt(delta) / (2 + a)
       x2 = -b - sqrt(delta) / (2 + a)
       delta = b^2 - 4*a*c

main :: IO()
main = do
    putStrLn "Hello World"
