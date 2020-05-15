module Problem3 (solve) where

-- | Largest prime factor
--
-- Finds the largest prime factor of the number.
solve :: Integer -> Integer
solve num = find 2 (limitFor num) num

limitFor :: Integer -> Integer
limitFor = truncate . sqrt . fromInteger

find :: Integer -> Integer -> Integer -> Integer
find curr limit num
  | curr >= limit =
      num
  | num `rem` curr == 0 =
      let next = num `div` curr
      in  find curr (limitFor next) next
  | otherwise =
      find (curr + 1) limit num
