elemSorted :: Ord a => a -> [a] -> Bool
elemSorted a [] = False
elemSorted a (h:ht)
          | (a == h) = True
          | (a < h) = False
          | otherwise = elemSorted a ht
