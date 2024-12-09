# Sum of multiples of 3 and 5 < 1000
const multiples = Set{Int}()
function getMults(factor, N)
    for f ∈ factor:factor:N-1
        push!(multiples, f)
    end
end
N = 1000
empty!(multiples)
getMults(3, N)
getMults(5, N)
sum(multiples)