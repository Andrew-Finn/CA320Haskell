num :: Eq a => a -> [a] -> Int
num a [] = 0
num a (h:ht) | a == h = 1 + (num a ht)
             | otherwise = num a ht
