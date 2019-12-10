dupSorted :: Eq a => [a] -> Bool
dupSorted [] = False
dupSorted [a] = False
dupSorted (a:h:ht)
        | a == h = True
        | otherwise = dupSorted (h:ht)