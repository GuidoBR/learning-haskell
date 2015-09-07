maxIntL :: [Integer] -> Integer
maxIntL [] = error "Empty List"
maxIntL [x] = x
maxIntL (x:xs) = max' x (maxIntL xs)

max' :: Integer -> Integer -> Integer
max' a b | a >= b    = a
         | otherwise = b
