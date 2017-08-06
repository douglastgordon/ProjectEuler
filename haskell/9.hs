problemNine :: Int
problemNine = [[[a * b * c | a <- [1..]] b | b <- [a..]] c | c <- [b..], a + b + c == 1000]
