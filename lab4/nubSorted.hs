nubSorted :: Ord a => [a] -> [a]
nubSorted [] = []
nubSorted [a] = [a]
nubSorted (a:h:t)
        | a == h = nubSorted(h:t)
        | otherwise = a:nubSorted(h:t)
