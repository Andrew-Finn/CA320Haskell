-- Calculate the number at a given position in the fibonacci sequence
fibonacci :: Int -> Int
fibonacci a 
   | a == 1 = 0
   | a == 2 = 1
   | otherwise = fibonacci(a-1) + fibonacci(a-2) 