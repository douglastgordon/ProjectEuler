import Helpers
import Data.List

problemFour :: Int
problemFour = takeFirst (reverse (sort threeDigitProducts)) (\a -> isPalindromicNumber a)

threeDigitProducts :: [Int]
threeDigitProducts = allProductsInRange 100 999

allPairsInRange :: Int -> Int -> [(Int,Int)]
allPairsInRange i j |
  i == j = [(i, j)]
allPairsInRange i j = (zip (repeat i) [i..j]) ++ (allPairsInRange (i + 1) j)

allProductsInRange :: Int -> Int -> [Int]
allProductsInRange i j = [fst x * snd x | x <- allPairsInRange i j]
