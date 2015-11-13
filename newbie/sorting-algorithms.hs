qsort :: (Ord a) => [a] -> [a]
qsort [] = []
qsort (x:xs) = qsort less ++ [x] ++ qsort more
  where less = filter (<x) xs
            more =filter (>=x) xs

merge :: Ord a => [a] -> [a] -> [a]
merge [] ys = ys
merge xs [] = xs
merge (x : xs) (y : ys)
    = if x <= y then x : merge xs (y : ys) else y : merge (x : xs) ys

halve :: [a] -> ([a], [a])
halve xs = splitAt (length xs `div` 2) xs

msort :: Ord a => [a] -> [a]
msort [] = []
msort [x] = [x]
msort xs = merge (msort ys) (msort zs)
    where (ys, zs) = halve xs

