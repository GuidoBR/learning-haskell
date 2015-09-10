average :: [Integer] -> Float
average [] = error "Empty List"
average xs = fromIntegral (sum' xs) / fromIntegral (length' xs)

sum' :: [Integer] -> Integer
sum' [] = 0
sum' (x:xs) = x + sum' xs

length' ::  [a] -> Integer
length' [] = 0
length' (x:xs) = 1 + length' xs
