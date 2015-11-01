-- Exercise 7
remove1 n xs = take n xs ++ drop n xs
remove2 n xs = drop n xs ++ take n xs
remove3 n xs = take (n + 1) xs ++ drop n xs
remove4 n xs = take n xs ++ drop (n + 1) xs


exercise8 :: Int -> [a] -> [a]
exercise8 x xs = take (x + 1) xs ++ drop x xs
-- exercise8 3 [1, 2, 3, 4, 5, 6, 7]
-- [1,2,3,4,4,5,6,7]
