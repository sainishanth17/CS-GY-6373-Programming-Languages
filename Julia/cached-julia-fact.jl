function my_fact(n, cache=Dict{Int, BigInt}())
    if n == 0 || n == 1
        return BigInt(1)
    end
    
    # Use iterative approach for large values of n
    if n > 1000
        fact = BigInt(1)
        for i in 2:n
            fact *= i
        end
        return fact
    end
    
    if !haskey(cache, n)
        cache[n] = n * my_fact(n - 1, cache)
    end
    
    return cache[n]
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
