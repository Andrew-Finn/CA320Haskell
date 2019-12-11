repAll :: Eq a => a -> a -> [a] ->[a]
repAll a b [] =[]
repAll a b (h:ht)
    | (h == a) = b : repAll a b ht
    | otherwise = h : repAll a b ht