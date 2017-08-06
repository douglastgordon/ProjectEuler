module Helpers
( factors,
  eratosthenes,
  primeFactors,
  isPalindrome,
  isPalindromicNumber,
  takeFirst,
  factorial,
  isPrime,
  digitSum
) where

isPrime :: Integral a => a -> Bool
isPrime n
  | (n == 2 || n == 3 || n == 5 || n == 7) = True
  | (n <= 1) || (n `mod` 2 == 0)  = False
isPrime n = foldl (\acc x -> if n `mod` x == 0 then False else acc) True [2,3..floor ((sqrt (fromIntegral n)))]


factors :: Int -> [Int]
factors n = [x | x <- [1..n], n `mod` x == 0]

primeFactors :: Int -> [Int]
primeFactors n = [x | x <- eratosthenes (flrt n), n `mod` x == 0]

eratosthenes :: Int -> [Int]
eratosthenes n = sieve [2..n]

sieve :: [Int] -> [Int]
sieve [] = []
sieve [a] = [a]
sieve (first:rest) = [first] ++ sieve [x | x <- rest, x `mod` first /= 0]

flrt :: Int -> Int
flrt = floor . sqrt . fromIntegral

isPalindromicNumber :: Int -> Bool
isPalindromicNumber n = isPalindrome (show n)

isPalindrome :: [Char] -> Bool
isPalindrome a = a == (reverse a)

takeFirst :: [a] -> (a -> Bool) -> a
takeFirst (first:rest) func
  | func first = first
takeFirst (first:rest) func = takeFirst rest func

factorial :: Int -> Int
factorial 1 = 1
factorial n = n * factorial (n - 1)

digitSum :: [Char] -> Int
digitSum n |
  length n == 1 = read n :: Int
digitSum n = ((read (take 1 n)) :: Int) + (digitSum (drop 1 n))

bigFactorial :: Int -> Integer
bigFactorial 1 = 1
bigFactorial n = n * bigFactorial (n - 1)
