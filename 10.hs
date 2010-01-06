primes :: Int -> [Int]
primes limit = 2 : [ p | p <- [ 3, 5 .. limit ], isPrime p ]
	where
	isPrime x = not (any (\d -> x `mod` d == 0) (2 : [ 3, 5 .. ceiling (sqrt (fromIntegral x)) ]))
