findSum :: Int
findSum = sum [ p | p <- [ 1 .. 1000 ], q p ]
	where
	q x = (snd (x `divMod` 3) == 0) || (snd (x `divMod` 5) == 0)
