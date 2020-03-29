-- | A Lib module.
module Lib
    ( someFunc
      , square
      , ggT
      , check
    ) where

someFunc :: IO ()
someFunc = putStrLn "someFunc"

-- | Calculate the square of a number
square 
  :: Num a => a -- ^ the number
  -> a -- ^ the square
square n = n^2

-- | Check if numbers are greater than zero.
check :: Integer -> Integer -> Bool
check x y
      | x > 0  && y > 0  = True
      | otherwise        = False


-- | Get the greatest common divisor
ggT :: Integer -> Integer -> Integer
ggT x y 

--    | y == 0    = 0
--    | x == 0    = 0

    | x < y     = ggT x (y - x) 
    | x > y     = ggT (x - y) y
    | otherwise = x

  
