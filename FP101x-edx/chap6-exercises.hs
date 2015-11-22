uncurry f = \ (x, y) -> f x y

curry f = \ x y -> f (x, y)
