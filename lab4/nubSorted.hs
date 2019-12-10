nubSorted :: Eq a => [a] -> [a]
nubSorted [] = []
nubSorted [a] = [a]
nubsorted (a:h:ht)
        | a == h = nubsorted(h:ht)
        | otherwise = a:nubsorted(h:ht)
