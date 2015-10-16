init1 xs = tail (reverse xs)
init2 xs = reverse (head (reverse xs))
init3 xs = reverse (tail xs)
init4 xs = take (length xs) xs
init5 xs = reverse (tail (reverse xs)) -- Works!
init6 xs = take (length xs - 1) (tail xs)
init7 xs = drop (length xs -1) xs
