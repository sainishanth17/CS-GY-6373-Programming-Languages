# Test various mathematical functions in Julia
for x in [0.1, 0.5, 1.0, 1.5, 2.0]
    println("Timing for x = $x (Julia) = ")
    println()
    
    println("sqrt(x):")
    time_sqrt = @elapsed sqrt(x)
    println("Time elapsed: ", time_sqrt, " seconds")
    
    println("log(x):")
    time_log = @elapsed log(x)
    println("Time elapsed: ", time_log, " seconds")
    
    println("exp(x):")
    time_exp = @elapsed exp(x)
    println("Time elapsed: ", time_exp, " seconds")
    
    println("sin(x):")
    time_sin = @elapsed sin(x)
    println("Time elapsed: ", time_sin, " seconds")
    
    println()
end
