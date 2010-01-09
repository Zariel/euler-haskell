import Data.Int

primes :: Int64 -> Int64
primes limit = sum (2 : [ p | p <- [ 3, 5 .. limit ], isPrime p ])
	where
	isPrime x = not ((any (\d -> fromEnum (x) `mod` d == 0)) ([ 3, 5 .. fromEnum (sqrt (x)) ]))
