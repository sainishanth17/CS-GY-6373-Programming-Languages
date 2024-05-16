import time

def my_fact(n):
    fact = 1
    for i in range(1, int(n) + 1):
        fact *= i
    return fact

# Test with integer values
print("Testing with integer values:")
for n in [10, 100, 1000, 10000, 100000]:
    start_time = time.time()
    my_fact(n)
    end_time = time.time()
    print(f"Time elapsed for n={n}: {end_time - start_time} seconds")

# Test with different floating-point values
print("\nTesting with floating-point values:")
for n in [10.00, 100.00, 1000.00, 10000.00, 100000.00]:
    start_time = time.time()
    my_fact(n)
    end_time = time.time()
    print(f"Time elapsed for n={n}: {end_time - start_time} seconds")
