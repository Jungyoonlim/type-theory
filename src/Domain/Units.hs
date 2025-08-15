module Domain.Units where

newtype Celsius    = Celsius Double
newtype Fahrenheit = Fahrenheit Double


cTof :: Celsius -> Fahrenheit
cTof (Celsius c) = Fahrenheit (c * 9/5 + 32)

showF :: Fahrenheit -> String
showF (Fahrenheit f) = show ++ " °F"