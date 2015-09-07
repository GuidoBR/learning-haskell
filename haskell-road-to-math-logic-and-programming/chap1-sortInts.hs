removeFst :: Int -> [Int] -> [Int]
removeFst _ [] = []
removeFst i (x:xs) | i == x = xs
                   | otherwise = x : removeFst i xs 

minIntL :: [Int] -> Int
minIntL []     = error "empty list"
minIntL [x]    = x
minIntL (x:xs) = min x (minIntL xs)

sortInts :: [Int] -> [Int]
sortInts [] = []
sortInts xs = m : (sortInts (removeFst m xs)) where m = minIntL xs
