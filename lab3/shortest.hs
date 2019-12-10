shortest :: [[a]] -> [a]
shortest [] = []
shortest [x] = x
shortest (x:xs:list)
    | length x > length xs = shortest(xs:list)
    | otherwise = shortest(x:list)