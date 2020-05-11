import Test.Hspec
import Problem1

main :: IO ()
main = hspec $ do
  describe "Problem 1" $ do
    it "finds the sum of 3 & 5 multiples below 10" $ do
      problem1 10 `shouldBe` 23
