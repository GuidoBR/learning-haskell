numberSize :: (Ord a, Fractional a) => a -> String
numberSize x
    | x < 0.1   = "Small"
    | x < 1   = "Small-ish"
    | x < 10   = "Okay"
    | x < 100   = "Large"
    | otherwise   = "Huge"

max' :: Ord a => a -> a -> a
max' x y
    | x <= y    = y
    | otherwise = x

min' :: Ord a => a -> a -> a
min' x y
    | x <= y    = x
    | otherwise = y
