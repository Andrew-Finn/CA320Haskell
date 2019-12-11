numSorted :: Ord a => a -> [a] -> Int
numSorted a [] = 0
numSorted a (h:ht) | (a == h) && (a <= h) = 1 + (numSorted a ht)
    | otherwise = numSorted a ht