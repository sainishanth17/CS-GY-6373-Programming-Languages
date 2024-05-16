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

# Test with integer values
for n in [10, 100, 1000, 10000, 100000]
    println("Timing for n = $n (Integer) = ")
    println()
    @time begin
        result = my_fact(n)
    end
    println()
end

# Test with real values
for n in [10.0, 100.0, 1000.0, 10000.0, 100000.0]
    println("Timing for n = $n (Real) = ")
    println()
    @time begin
        result = my_fact(n)
    end
    println()
end
