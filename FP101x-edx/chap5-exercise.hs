-- Exercise 0

m `exp1` 0 = 0
m `exp1` n = m * m ^ (n -1)

-- Right
m `exp2` 0 = 1 
m `exp2` n = m * m ^ (n -1)

m `exp3` 0 = 1 
m `exp3` n = m * m ^ n -1

m `exp4` 0 = 1 
m `exp4` n = n * n ^ (m -1)

-- Right
m `exp5` 0 = 1 
m `exp5` n = m * (^) m (n -1)

m `exp6` 0 = 1 
m `exp6` n = m * m * m ^ (n - 2)

m `exp7` 0 = 1 
m `exp7` n = (m * m) ^ (n - 1)

m `exp8` 1 = m 
m `exp8` n = m * m ^ (n - 1)

-- Exercise 3
init' :: [a] -> [a]
init' [_] = [] -- not the real init function because here it shouldn't return the empty list here
init' (x : xs) = x : init' xs

-- Exercise 4
-- Right 
and1 :: [Bool] -> Bool
and1 [] = True
and1 (b : bs) = b && and bs

-- Right 
and2 :: [Bool] -> Bool
and2 [] = True
and2 (b : bs)
    | b = and bs
    | otherwise = False
and3 :: [Bool] -> Bool
and3 [] = False
and3 (b: bs) = b && and bs

and4 :: [Bool] -> Bool
and4 [] = False
and4 (b : bs) = b || and bs

-- Right 
and5 :: [Bool] -> Bool
and5 [] = True
and5 (b : bs)
    | b == False = False
    | otherwise = and bs

and6 :: [Bool] -> Bool
and6 [] = True
and6 (b : bs) = b || and bs

-- Right 
and7 :: [Bool] -> Bool
and7 [] = True
and7 (b : bs) = and bs && b

and8 :: [Bool] -> Bool
and8 [] = True
and8 (b : bs)
    | b = b
    | otherwise = and bs

-- Exercise 5
--concat1 :: [[a]] -> [a]
--concat1 [] = []
--concat1 (xs : xss) = xs : concat1 xss

-- Right
concat2 :: [[a]] -> [a]
concat2 [] = []
concat2 (xs : xss) = xs ++ concat2 xss

--concat3 :: [[a]] -> [a]
--concat3 [] = [[]]
--concat3 (xs : xss) = xs ++ concat3 xss

concat4 :: [[a]] -> [a]
concat4 [[]] = []
concat4 (xs : xss) = xs ++ concat4 xss

-- Exercise 6
replicate4 :: Int -> a -> [a]
replicate4 0 _ = []
replicate4 n x = x : replicate4 (n - 1) x

-- Exercise 9
merge :: Ord a => [a] -> [a] -> [a]
merge [] ys = ys
merge xs [] = xs
merge (x : xs) (y : ys)
    = if x <= y then x : merge xs (y : ys) else y : merge (x : xs) ys

-- Exercise 10 
halve :: [a] -> ([a], [a])
halve xs = splitAt (length xs `div` 2) xs

msort :: Ord a => [a] -> [a]
msort [] = []
msort [x] = [x]
msort xs = merge (msort ys) (msort zs)
    where (ys, zs) = halve xs

