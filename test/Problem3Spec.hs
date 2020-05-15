module Problem3Spec (spec) where

import Test.Hspec
import Problem3

spec = describe "Largest prime factor" $ do
  it "finds the largest prime factor of the number" $ do
    solve 13195 `shouldBe` 29
