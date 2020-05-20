module Problem4Spec (spec) where

import Test.Hspec
import Problem4

spec = describe "Largest palindrome product" $ do
  it "finds the largest palindrome made from the product of two numbers" $ do
    solve 2 `shouldBe` 9009
