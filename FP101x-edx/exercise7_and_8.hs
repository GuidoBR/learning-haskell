qsort [] = []
qsort (x:xs) = qsort smaller ++ [x] ++ qsort larger
	where 	smaller = [a | a <- xs, a < x]
		larger	= [b | b <- xs, b > x]


qsort1 [] = []
qsort1 (x:xs) = qsort larger ++ [x] ++ qsort smaller
	where 	smaller = [a | a <- xs, a <=x]
		larger	= [b | b <- xs, b > x]

qsort2 [] = []
qsort2 (x:xs) = qsort larger ++ [x] ++ qsort smaller
	where 	larger	= [a | a <- xs, a > x || a == x]
		smaller = [b | b <- xs, b <=x]

qsort3 [] = []
qsort3 (x:xs)
	= reverse
		(reverse (qsort smaller) ++ [x] ++ reverse (qsort larger))
	where   smaller = [a | a <- xs, a <= x]
		larger = [b | b <- xs, b > x]
