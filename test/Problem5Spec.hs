module Problem5Spec (spec) where

import Test.Hspec
import Problem5

spec = describe "Smallest multiple" $ do
  it ("finds the smallest positive number that is evenly divisible " ++
      "by natural numbers up to 10") $ do
    solve 10 `shouldBe` 2520
