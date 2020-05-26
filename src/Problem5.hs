module Problem5 (solve) where

-- | Smallest multiple
--
-- Finds the smallest positive number evenly divisible
-- by natural numbers up to n.
solve :: Integer -> Integer
solve n = head $ filter (evenlyDivisibleBy [2..n-1]) $ fmap (* n) [1..]

evenlyDivisibleBy :: [Integer] -> Integer -> Bool
evenlyDivisibleBy ds x = all (\d -> x `rem` d == 0) $ reverse ds
