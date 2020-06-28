module Problem8Spec (spec) where

import Test.Hspec
import Problem8

spec = describe "Largest product in a series" $ do
  it ("finds the largest product of 4 adjacent digits") $ do
    solve 4 `shouldReturn` 5832
