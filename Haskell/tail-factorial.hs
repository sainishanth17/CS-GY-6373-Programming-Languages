factorialTail :: Integer -> Integer
factorialTail n = sub n 1
	where
		sub 0 result = result
		sub n result = sub (n-1) (n * result)


main = do
	putStrLn "Factorial of 5 using tail recursive form : "
	print $ factorialTail 5
	putStrLn "Factorial of 123456 using tail recursive form : "
	print $ factorialTail 123456