module Domain.Intent where

data Intent
  = WriteEmail { to :: String, subject :: String, body :: String }
  | Schedule   { participants :: [String], time :: String }
  deriving Show
