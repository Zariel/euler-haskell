triangle :: Int -> Int
--triangle = [ sum [ 1 .. x ] | x <- [ 1 .. ] ]
triangle n
	| n == 1 = 1
	| otherwise = triangle (n - 1) + n

divisors :: Int -> Int
--divisors x = 1 : [ p | p <- [ 2 .. div x 2 ], x `mod` p == 0 ] ++ [x]
divisors 1 = 1
divisors x = 2 + (length [ p | p <- [ 2 .. (fromEnum $ sqrt $ fromIntegral x) ], x `mod` p == 0 ]) * 2

e12 = head $ filter (\x -> (divisors x) > 500) [ triangle p | p <- [ 1 .. ] ]
