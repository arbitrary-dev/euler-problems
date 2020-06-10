module Problem7 (solve) where

-- | 10001st prime
--
-- Finds the Nth prime number
solve :: Integer -> Integer
solve n = primes !! (fromIntegral n - 1)

primes = sieve (2 : [3, 5..])

sieve (y:xs) = y : sieve (filter (\x -> x `rem` y /= 0) xs)
