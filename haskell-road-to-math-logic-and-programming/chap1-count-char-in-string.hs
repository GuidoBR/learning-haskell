count :: Char -> String -> Int
count c text = sum [1 | x <- text, x == c]
