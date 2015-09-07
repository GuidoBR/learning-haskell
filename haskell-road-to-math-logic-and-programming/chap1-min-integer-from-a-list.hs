minIntL :: [Integer] -> Integer
minIntL []     = error "empty list"
minIntL [x]    = x
minIntL (x:xs) = min' x (minIntL xs)

min' :: Integer -> Integer -> Integer
min' a b | x <= y    = x
         | otherwise = y
