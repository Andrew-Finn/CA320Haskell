numSorted :: Ord a => a -> [a] -> Int
numSorted a [] = 0
numSorted a (h:t) | (a == h) = 1 + (numSorted a t)
    | a < h = 0
    | otherwise = numSorted a t
