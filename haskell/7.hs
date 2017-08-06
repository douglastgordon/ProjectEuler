import Helpers

problemSeven :: Int
problemSeven = nthPrime 10001

nthPrime :: Int -> Int
nthPrime n = last (xPrimes n [2])

xPrimes :: Int -> [Int] -> [Int]
xPrimes n primes
  | (length primes) == n = primes
xPrimes n primes = xPrimes n (primes ++ [nextPrime (last primes)])

nextPrime :: Int -> Int
nextPrime n = takeFirst [(n + 1)..] (\a -> isPrime a)
