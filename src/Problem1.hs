module Problem1 (problem1) where

problem1 :: Int -> Int
problem1 a =
  let f i = i `rem` 3 == 0 || i `rem` 5 == 0
  in  sum $ filter f [3 .. a - 1]
