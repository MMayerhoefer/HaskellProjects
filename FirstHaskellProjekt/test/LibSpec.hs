{-# LANGUAGE ScopedTypeVariables #-}
module LibSpec (spec) where

import    Lib              (square, ggT, check)
import    Test.Hspec
import    Test.QuickCheck


spec :: Spec
spec = do
    describe "square" $ do
        it "calculates the square of 5.3" $
            square 5.3 `shouldBe` 28.09
        it "calculates the square of an arbitrary integer" $
            property $ \(n :: Integer) -> square n == n * n
        it "calculates the square of an arbitrary double" $
            property $ \(n :: Double) -> square n == n * n
    describe "ggT" $ do
        it "calculates the ggT of 35 and 25" $
            ggT 35 25 `shouldBe` 5
        it "calculates the ggT of two random Integers" $
            property $ \a b -> (check a b) ==> (ggT a b) == (gcd a b)
