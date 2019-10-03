isTriangle :: Float -> Float -> Float -> Bool
isTriangle a b c 
   | (a + b) > c && (b + c) > a && (c + a) > b = True
   | otherwise = False

-- Calculate the area of a triangle
whatIsS :: Float -> Float -> Float -> Float
whatIsS a b c = (a + b + c) / 2.0

triangleArea :: Float -> Float -> Float -> Float
triangleArea a b c
   | isTriangle a b c == False = error "Not a triangle!"
   | otherwise = sqrt(s*(s-a)*(s-b)*(s-c))
      where s = whatIsS a b c