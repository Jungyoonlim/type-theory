module Main where

import Domain.Units
import Domain.Validation
import Domain.Intent
import Interpreter

main :: IO ()
main = do
  putStrLn (showF (cToF (Celsius 25)))
  putStrLn (render (sanitize " hello "))
  mapM_ putStrLn (plan (WriteEmail "alice@example.com" "hello" "let's meet"))
