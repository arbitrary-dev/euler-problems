module Problem7Spec (spec) where

import Test.Hspec
import Problem7

spec = describe "10001st prime" $ do
  it ("finds the 5th prime number") $ do
    solve 5 `shouldBe` 11
  it ("finds the 6th prime number") $ do
    solve 6 `shouldBe` 13
