-- Calculate the number at a given position in the fibonacci sequence
fibonacci :: Int -> Int
fibonacci 1 = 0
fibonacci 2 = 1
fibonacci a = fibonacci(a-1) + fibonacci(a-2)