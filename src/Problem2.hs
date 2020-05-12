module Problem2 (solve) where

-- | Even Fibonacci numbers
--
-- Finds the sum of even Fibonacci numbers,
-- that doesn't exceed the provided one.
solve :: Int -> Int
solve limit = sum $ takeWhile (<= limit) $ filter even fibs

fibs :: [Int]
fibs = 0 : scanl (+) 1 fibs
