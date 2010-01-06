findSum :: Int
findSum = sum [ p | p <- [ 1 .. 1000 ], q p ]
	where
	q x = (x `div` 3) == 0) || (x `div` 5) == 0)
