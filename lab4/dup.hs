dup :: Eq a => [a] -> Bool
dup [] = False
dup [a] = False
dup (a:bs)
    | elem a bs == True = True
    | otherwise = dup(bs)
