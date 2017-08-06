problemSix :: Int
problemSix = abs ((sumOfSquares 100) - (squareOfSums 100))

sumOfSquares :: Int -> Int
sumOfSquares n = sum [x * x | x <- [1..n]]

squareOfSums :: Int -> Int
squareOfSums n = (sum [1..n]) ^ 2
