fibs :: [ Double ]
fibs = 0.0 : 1.0 : zipWith (+) fibs (tail fibs)

-- Length of a number n is, floor $ log 10 n + 1

len :: (Floating a, RealFrac a, Integral b) => a -> b
len x = (fromIntegral $ floor $ logBase 10 x) + 1

--f :: (Enum a, Floating a, RealFrac a, Num b, Integral b) => [ a ] -> [ b ]
--f xs = [ len x | x <- xs ]

filter (\x -> len x == 1000) fibs
