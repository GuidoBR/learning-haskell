quicksort :: (Ord a) => [a] => [a]
quicksort []     = []
quicksort (x:xs) = smallerSorted ++ [x] ++ biggerSorted
    where smallerSorted = quicksort [y | y <- xs, y <= x]
          biggerSorted  = quicksort [y | y <- xs, y > x]
