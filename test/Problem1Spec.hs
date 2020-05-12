module Problem1Spec (spec) where

import Test.Hspec
import Problem1

spec = describe "Multiples of 3 and 5" $ do
  it "finds the sum of 3 & 5 multiples below 10" $ do
    solve 10 `shouldBe` 23
