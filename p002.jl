# Sum of even Fibonacci numbers < 4,000,000
using Memoization
N = 4_000_000
# Cute little practical experience since I've just been reading about this package
@memoize function fib(n)
    if n < 2
        return 1
    else
        return fib(n-1) + fib(n-2)
    end
end

@time begin
    fibs = [1]
    n = 2
    while fib(n) < N
        push!(fibs, fib(n))
        n += 1
    end
    sum(fibs[fibs .% 2 .== 0])
end