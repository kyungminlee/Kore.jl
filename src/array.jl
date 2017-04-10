import Base: linspace

# Multidimensional Linspace
function linspace{D, T}(start ::NTuple{D, T}, stop ::NTuple{D, T}, n=50)
    zip([linspace(start[d], stop[d], n+1)[1:n] for d in 1:D]...)
end

function flatten{T}(a :: Array{T})
    return reshape(a, prod(size(a)))
end


import Iterators

function linpath{D, T <: Number}(points ::Vector{NTuple{D, T}}, n=50)
    segments = []
    for ip in 2:length(points)
        push!(segments, linspace(points[ip-1], points[ip], n))
    end
    Iterators.chain(segments...)
end
