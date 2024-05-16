import time
from numba import jit

# numba needs to be installed for this to be run or else you will get errors!!!! 

@jit
def my_fact(n):
    fact = 1
    for i in range(1, n + 1):
        fact = fact * i
    return fact

for n in [10, 100, 1000, 10000, 100000]:
    start_time = time.time()
    my_fact(n)
    end_time = time.time()
    print(f"Time elapsed for n={n}: {end_time - start_time} seconds")