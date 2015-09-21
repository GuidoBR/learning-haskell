-- List legnth without using bultin function
len :: [a] -> Int
len lst = sum [1 | x <- lst]
