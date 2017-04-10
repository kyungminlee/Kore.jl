
function chopzero!{T<:Real,D}(arr ::Array{Complex{T},D};
                              rtol::Real=sqrt(eps), atol::Real=0)
    for i in eachindex(arr)
        if isapprox(real(arr[i]), 0, rtol, atol)
            arr[i] = 1im * imag(arr[i])
        end
        if isapprox(imag(arr[i]), 0, rtol, atol)
            arr[i] = real(arr[i])
        end
    end
    arr
end


function chopzero!{T<:Real,D}(arr ::Array{T, D};
                              rtol::Real=sqrt(eps), atol::Real=0)
    for i in eachindex(arr)
        if isapprox(arr[i], 0, rtol, atol)
            arr[i] = 0
        end
    end
    arr
end


function chopzero{T<:Real,D}(arr_in ::Array{Complex{T},D};
                             rtol::Real=sqrt(eps), atol::Real=0)
    arr = copy(arr_in)
    for i in eachindex(arr)
        if isapprox(real(arr[i]), 0, rtol, atol)
            arr[i] = 1im * imag(arr[i])
        end
        if isapprox(imag(arr[i]), 0, rtol, atol)
            arr[i] = real(arr[i])
        end
    end
    arr
end


function chopzero{T<:Real,D}(arr_in :: Array{T, D};
                             rtol::Real=sqrt(eps), atol::Real=0)
    arr = copy(arr_in)
    for i in eachindex(arr)
        if isapprox(arr[i], 0, rtol, atol)
            arr[i] = 0
        end
    end
    arr
end
