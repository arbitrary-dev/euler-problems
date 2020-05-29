module Problem6Spec (spec) where

import Test.Hspec
import Problem6

spec = describe "Sum square difference" $ do
  it ("finds the difference between the sum of the squares of the" ++
      "natural numbers and the square of the sum") $ do
    solve 10 `shouldBe` 2640
