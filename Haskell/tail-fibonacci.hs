fibonacciTail :: Integer -> Integer
fibonacciTail n = sub n 0 1
	where
		sub 0 a b = a
		sub n a b = sub (n - 1) b (a + b)

main = do
	putStrLn "Tail Recursive Fibonacci of 10 is : "
	print $ fibonacciTail 10
	putStrLn "Tail Recursive Fibonacci of 123456 is : "
	print $ fibonacciTail 123456
		