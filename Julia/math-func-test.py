import math
import time

# Test various mathematical functions in Python
print("Testing various mathematical functions in Python:")
for x in [0.1, 0.5, 1.0, 1.5, 2.0]:
    print(f"\nTiming for x={x}:")

    print("\nsqrt(x):")
    start_time_sqrt = time.time()
    math.sqrt(x)
    end_time_sqrt = time.time()
    print(f"Time elapsed: {end_time_sqrt - start_time_sqrt} seconds")

    print("\nlog(x):")
    start_time_log = time.time()
    math.log(x)
    end_time_log = time.time()
    print(f"Time elapsed: {end_time_log - start_time_log} seconds")

    print("\nexp(x):")
    start_time_exp = time.time()
    math.exp(x)
    end_time_exp = time.time()
    print(f"Time elapsed: {end_time_exp - start_time_exp} seconds")

    print("\nsin(x):")
    start_time_sin = time.time()
    math.sin(x)
    end_time_sin = time.time()
    print(f"Time elapsed: {end_time_sin - start_time_sin} seconds")
