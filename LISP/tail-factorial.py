def tailfact(n, accumulator=1):
    if n == 0:
        return accumulator
    else:
        return tailfact(n - 1, n * accumulator)

print(tailfact(5))
print(tailfact(6))
print(tailfact(120))
print(tailfact(123456))