# In main.jl

# main.jl v1.0
# include("hello.jl")

# main.jl v1.1

function is_divisible(n, i)
    return n % i == 0
end

function is_prime(n::Int32)
    if n <=3
        return true
    end
    if is_divisible(n, 2)
        return false
    end

    # intialize a counter variable
    i = 3
    while i <= sqrt(n)
        if is_divisible(n, i)
            return false
        end
        i += 2
    end
    return true
end

# Prints the output of our function, when called with 100
println("Is ", 17 , " prime? ", is_prime(17))
println("Is ", 18 , " prime? ", is_prime(18))
println("Is ", 19 , " prime? ", is_prime(19))

# main v1.2
include("quadratic.jl")
