reversePal :: [a] -> [a]
reversePal [] = []
reversePal (head:tail) = reversePal tail ++ [head]

isPalindrome :: Eq a => [a] -> Bool
isPalindrome a 
            | a == reversePal a = True
            | otherwise = False