-- Curried Functions
-- add' takes an integer x and returns a function add' x.
-- In turn, this function takes an integer y and returns the result x+y
-- Functions that takes arguments one by one is called Curried Functions.
add'	:: Int -> (Int -> Int)
-- add'	:: Int -> Int -> Int
add' x y = x + y
