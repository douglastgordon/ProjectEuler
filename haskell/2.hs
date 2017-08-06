problemTwo :: Int
problemTwo = sum [x | x <- fibonacci [2, 1], x `mod` 2 == 0]


fibonacci :: [Int] -> [Int]
fibonacci list
  | (list !! 0) <= 4000000 = fibonacci ([((list !! 0) + (list !! 1))] ++ list)
fibonacci list = list
