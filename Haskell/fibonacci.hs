fibonacci :: Integer -> Integer
fibonacci 0 = 0
fibonacci 1 = 1
fibonacci n = fibonacci (n - 1) + fibonacci (n - 2)

main = do
	putStrLn "Fibonacci of 10 using normal fibonacci recursion : "
	print $ fibonacci 10
	putStrLn "Fibonacci of 123456 using normal fibonacci recursion : "
	print $ fibonacci 123456