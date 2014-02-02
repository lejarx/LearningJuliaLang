# In derivative.jl

function derivative(f)
    return function(x)
        # pick a small value of h
        h = 0.00001

        # evaluate f at x + h
        f1 = f(x + h)

        # evaluate f at x
        f0 = f(x)

        # divide the difference by h

        return (f1-f0)/h
    end
end
