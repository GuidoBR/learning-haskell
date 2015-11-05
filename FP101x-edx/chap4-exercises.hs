sum1001 = sum [[x * x] | x <- [1..100]]
sum1002 = sum [[x ^ 2] | x <- [1..100]]
sum1003 = sum [const 2 x | x <- [1..100]]
sum1004 = foldl (+) (1) [x ^ 2 | x <- [1..100]]

scalarproduct xs ys sum [x * y | (x, y) <- xs `zip` ys]
