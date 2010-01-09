primes :: Float -> [ Float ]
primes limit = (2.0 : [ p | p <- [ 3.0, 5.0 .. limit ], isPrime (p) ])
	where
	isPrime x = not ((any (\d -> fromEnum (x) `mod` d == 0)) ([ 3, 5 .. fromEnum (sqrt (x)) ]))
