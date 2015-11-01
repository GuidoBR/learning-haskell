abs'   :: Int -> Int
abs' n = if n >= 0 then n else -n

abs''   :: Int -> Int
abs'' n | n >= 0    = n
        | otherwise = -n

not'       :: Bool -> Bool
not' False = True
not' True = False

e9 [x, y] = (x, True)
e10 (x, y) = [x, y]
