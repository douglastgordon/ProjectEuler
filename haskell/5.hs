-- absolute max is 20 factorial
import Helpers

problemFive :: Int
problemFive = takeFirst [20, 40..(factorial 20)] (\a -> isDivisibleByNumbersBelow20 a)

isDivisibleByNumbersBelow20 :: Int -> Bool
isDivisibleByNumbersBelow20 n = divisibleUpTo n 20

divisibleUpTo :: Int -> Int -> Bool
divisibleUpTo _ 1 = True
divisibleUpTo n divisor = if (n `mod` divisor /= 0) then False else divisibleUpTo n (divisor - 1)
