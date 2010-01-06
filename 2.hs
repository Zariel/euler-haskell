fibs :: [Int]
fibs = 0 : 1 : [ a + b | (a, b) <- zip fibs (tail fibs)]

fibSum :: Int -> Int
fibSum x = sum (takeWhile ( < x ) [ p | p <- fibs, snd (p `divMod` 2) == 0 ])
