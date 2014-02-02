# In quadratic.jl

function quadratic(f)
    # compute the first derivative of f
    f1 = derivative(f)

    # get the y intercept
    c = f(0,0)

    # get the y intercept of the first derivative
    b = f1(0,0)
    a = f(1.0) - b - c

    return (-b + sqrt(b^2 -4a*c + 0im)) / 2a, (-b - sqrt(b^2 -4a*c + 0im)) / 2a
end
