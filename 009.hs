triangles :: [[Int]]
triangles = [ [a, b, (c a b)] | a <- [ 1 .. 400], b <- [ 2 .. 401 ]
	, a < b
	, ((c a b) ^ 2) == (a * a) + (b * b)
	]
	where
	c x y = (fromEnum $ sqrt $ fromIntegral ((x * x) + (y * y)))

product (filter (\x -> (sum x) == 1000) triangles !! 0)
