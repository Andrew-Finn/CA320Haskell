delAll :: Eq a => a -> [a] -> [a]
delAll _ [] = []
delAll a (h:ht) | a == h = delAll a ht
    | otherwise = h : delAll a ht