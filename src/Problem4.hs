module Problem4 (solve) where

-- | Largest palindrome product
--
-- Finds the largest palindrome made from the product of two n-digit numbers.
solve :: Integer -> Integer
solve n =
  let
    start = 10^n - 1
    limit = 10^(n - 1)
  in
    go start start limit Nothing

isPalindrome :: Integer -> Bool
isPalindrome n =
  let s = show n
  in  reverse s == s

go :: Integer -> Integer -> Integer -> Maybe Integer -> Integer

go a b limit found@(Just palindrome)
  | a < limit =
      if b < limit
        then -1
        else go (b - 1) (b - 1) limit found
  | a * b <= palindrome =
      if a == b
        then palindrome
        else go (b - 1) (b - 1) limit found
  | isPalindrome (a * b) =
      go (b - 1) (b - 1) limit $ Just (a * b)
  | otherwise =
      go (a - 1) b limit found

go a b limit Nothing
  | a < limit =
      if b < limit
        then -1
        else go (b - 1) (b - 1) limit Nothing
  | isPalindrome (a * b) =
      go (b - 1) (b - 1) limit $ Just (a * b)
  | otherwise =
      go (a - 1) b limit Nothing
