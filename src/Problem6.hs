module Problem6 (solve) where

-- | Sum square difference
--
-- Find the difference between the sum of the squares
-- of the first N natural numbers and the square of the sum.
solve :: Integer -> Integer
solve n =
  let ns = [1..n]
      sm = sum $ map (^ 2) ns
      sq = sum ns ^ 2
  in  sq - sm
