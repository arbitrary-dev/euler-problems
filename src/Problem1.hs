module Problem1 (solve) where

-- | Multiples of 3 and 5
--
-- Finds the sum of all the multiples of 3 & 5 below the specified one.
solve :: Int -> Int
solve a =
  let f i = i `rem` 3 == 0 || i `rem` 5 == 0
  in  sum $ filter f [3 .. a - 1]
