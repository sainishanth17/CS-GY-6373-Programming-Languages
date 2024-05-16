import time

factorial_memo = {}

def my_fact(n):
    if n in factorial_memo:
        return factorial_memo[n]

    factorial = 1
    for i in range(2, n + 1):
        factorial *= i
        factorial_memo[i] = factorial
    
    return factorial

for n in [10, 100, 1000, 10000, 100000]:
    start_time = time.time()
    my_fact(n)
    end_time = time.time()
    print(f"Time elapsed for n={n}: {end_time - start_time} seconds")
