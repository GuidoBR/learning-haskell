cylinder :: (RealFloat a) => a -> a -> a
cylinder r h =
    let sideArea    = 2 * pi * r * h
        topArea     = pi * r^2
    in sideArea + 2 * topArea

[let square x = x * x in (square 5, square 3, square 2)]

(let a = 100; b = 200; c = 300 in a*b*c, let foo="Hey "; bar = "there!" in foo ++ bar)

calcBmis :: (RealFloat a) => [(a, a)] -> [a]
calcBmis xs = [bmi | (w, h) <- xs, let bmi = w / h ^ 2]

calcBmis :: (RealFloat a) => [(a, a)] -> [a]
calcBmis xs = [bmi | (w, h) <- xs, let bmi = w / h ^ 2, bmi >= 25.0]
