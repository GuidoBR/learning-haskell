last1 xs = drop (length xs - 1) xs
last2 xs = head (drop (length xs - 1) xs) -- Works!
last3 xs = tail (reverse xs)
last4 xs = reverse (head xs)
last5 xs = xs !! (length xs - 1) -- Works !
last6 xs = head (drop (length xs) xs)
last7 xs = head (reverse xs) -- Works !
last8 xs = reverse xs !! (length xs - 1)
