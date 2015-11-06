factors n = [x | x <- [1..n], n `mod` x == 0]
is_prime n = factors n == [1, n]

sum100 = sum [x ^ 2 | x <- [1..100]]

replicate' n a = [a | _ <- [1..n]]

pyths n = [(x, y, z) | x <- [1..n], y <- [x..n], z <- [y..n], x^2 + y^2 == z^2]

perfect1 n = [x | x <- [1..n], isPerfect x]
          where isPerfect num = sum (factors num) == num

-- works!
perfect2 n = [x | x <- [1..n], isPerfect x]
          where isPerfect num = sum (init (factors num)) == num

perfect3 n = [isPerfect x | x <- [1..n]]
         where isPerfect num = sum (init (factors num)) == num

--perfect4 n = [x | x <- [1..n], isPerfect x]
--         where isPerfect num = init (factors num) == num

find :: (Eq a) => a -> [(a,b)] -> [b]
find k t = [v | (k', v) <- t, k == k']

positions1 x xs = find x (zip xs [0..n])
    where n = length xs - 1
