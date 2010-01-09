import Char

fish :: Int
fish = sum [ digitToInt p | p <- show (2^1000) ]
