repFirst :: Eq a => a -> a -> [a] -> [a]
repFirst a b [] = []
repFirst a b (h:ht)
       | (h == a) = b:ht
       | otherwise = h : repFirst a b ht
