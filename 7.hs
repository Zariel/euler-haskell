primes :: Int -> Int
primes x = (2 : sieve [ 3, 5 .. ]) !! x
   where
    sieve (p:xs) = p : sieve [x | x<-xs, x `mod` p /= 0]
