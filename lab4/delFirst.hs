delFirst :: Eq a => a -> [a] -> [a]
delFirst _ [] = []
delFirst a (h:ht) | a == h = ht
                  | otherwise = h : delFirst a ht
