factorial :: Integer -> Integer
factorial 0 = 1
factorial n = n * factorial (n - 1)

main = do
	putStrLn "Factorial of 5 : "
	print $ factorial 5
	putStrLn "Factorial of 123456 : "
	print $ factorial 123456
	
