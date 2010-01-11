import List
import Maybe

fibs :: [ Integer ]
fibs = 1 : 1 : zipWith (+) fibs (tail fibs)

-- Length of a number n is, floor $ log 10 n + 1
len :: (Show a) => a -> Int
len x = length $ show x

e25 = (fromJust $ elemIndex q fibs) + 1
	where
	q = head $ filter (\x -> len x == 1000) fibs
