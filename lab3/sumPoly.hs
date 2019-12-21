sumPoly :: [Int] -> [Int] -> [Int]
sumPoly aa [] = aa
sumPoly [] bb = bb
sumPoly (a:aa) (b:bb) = a + b : sumPoly aa bb
