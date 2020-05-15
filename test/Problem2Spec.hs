module Problem2Spec (spec) where

import Test.Hspec
import Problem2

spec = describe "Even Fibonacci numbers" $ do
  it "finds the sum of even Fibonacci numers not exceeding the number" $ do
    solve 89 `shouldBe` 44
