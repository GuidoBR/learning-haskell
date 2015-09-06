-- divides returns True if the remainder of division between n and d is 0
divides d n = rem n d == 0 

ldf k n | divides k n = k
        | k^2 > n     = n
        | otherwise   = ldf (k+1) n

-- least divisor between 2 and n (1 will always be the least divisor)
ld n = ldf 2 n

-- a number is prime if it's divisors are 1 and it self
isprime n | n < 1     = error "not a positive integer"
          | n == 1    = False
          | otherwise = ld n == n
