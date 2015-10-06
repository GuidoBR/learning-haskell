-- Body Mass Index
bmiTell :: (RealFloat a) => a -> a -> String
bmiTell weight height
    | bmi <= 18.5   = "You're underweight, you emo, you!"
    | bmi <= 25.0   = "You're suposely normal. Pff, I bet you're ugly!"
    | bmi <= 30.0   = "You're fat, lose some weigth!"
    | otherwise     = "You're a whale"
    where bmi = weight / height
-- The names we define in the where section of a function are only visible to that function.
