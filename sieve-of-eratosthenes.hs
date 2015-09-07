filterPrime(p:xs) = p : filterPrime [x | x <- xs, x `mod` p /= 0]
primes = filterPrime[2..100]
