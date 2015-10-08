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

drink :: (Fractional a, Ord a) => String -> a -> String
drink sex n
    | bac < soberLimit      = "You're sober"
    | bac < drivingLimit    = "You can drive but it's a bad idea"
    | bac < thinkingLimit   = "You can't think"
    | otherwise             = "Quit drinking now!"
    where   bac = n * if sex == "male" then 0.025 else 0.035
            soberLimit      = 0.03
            drivingLimit    = 0.08
            thinkingLimit   = 0.10
