pyth :: Int -> [(Int, Int)]
pyth lim = q [ (a, b) | a <- [ 1 .. lim - 1 ], b <- [ 2 .. lim ] ]
	where
	q ((a, b):xs) = [ (a', b') | a' <- a, b' <- b, a < b]
	square a = (\x -> x - fromInteger (floor x)) (sqrt a) == 0.0
