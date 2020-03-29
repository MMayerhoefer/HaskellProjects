module Main where

import System.IO (BufferMode (NoBuffering), hSetBuffering, stdout)
import Lib (someFunc, square, ggT)

main :: IO ()
main = do
  hSetBuffering stdout NoBuffering
  putStr "Geben Sie bitte die erste Zahl ein: (0 für Ende) "
  x <- readLn :: IO Integer
  if x == 0
    then putStrLn "Ciao"
  else do 
    putStr "Geben Sie bitte die zweite Zahl ein: "
    y <- readLn :: IO Integer

    putStrLn ("ggT(" ++ show x ++ ", " ++ show y ++ ") = " ++ show (ggT x y))
    main
  


