function my_fact(n)
    fact = BigInt(1)  # Use BigInt type to avoid overflow
    for i in 1:n
        fact *= i
    end
    return fact
end

for n in [10, 100, 1000, 10000, 100000]
    println("Timing for n = $n = ")
    println()
    @time begin
        result = my_fact(n)
    end
    println()
    #println("Factorial for n = $n: ", result) value(OUTPUT)
    println()
end
