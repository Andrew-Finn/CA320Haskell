-- Boolean value if any two numbers are equal the other
isSum :: Int -> Int -> Int -> Bool
isSum a b c 
   | a + b == c = True
   | b + c == a = True
   | c + a == b = True
   | otherwise = False