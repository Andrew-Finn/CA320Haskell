sumPoly :: [Int] -> [Int] -> [Int]
sumPoly aa [] = aa
sumPoly [] bb = bb
sumPoly (a: aa) (b: bb) = a + b : sumPoly aa bb


evalPoly :: Int -> [Int] -> Int
evalPoly a [] = 0
evalPoly b (a:aa) = a + b * (evalPoly b aa)
