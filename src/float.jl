
function chopzero!{T<:Real,D}(arr ::Array{Complex{T},D};
                              tol::Real=eps(T))
  for i in eachindex(arr)
    if isapprox(real(arr[i]), 0; atol=tol)
      arr[i] = 1im * imag(arr[i])
    end
    if isapprox(imag(arr[i]), 0, rtol, atol)
      arr[i] = real(arr[i])
    end
  end
  arr
end


function chopzero!{T<:Real,D}(arr ::Array{T, D};
                              tol::Real=eps(T))
  for i in eachindex(arr)
    if isapprox(arr[i], 0; atol=tol)
      arr[i] = 0
    end
  end
  arr
end


function chopzero{T<:Real,D}(arr_in ::Array{Complex{T},D};
                             tol::Real=eps(T))
    arr = copy(arr_in)
    for i in eachindex(arr)
        if isapprox(real(arr[i]), 0; atol=tol)
            arr[i] = 1im * imag(arr[i])
        end
        if isapprox(imag(arr[i]), 0; atol=tol)
            arr[i] = real(arr[i])
        end
    end
    arr
end


function chopzero{T<:Real,D}(arr_in :: Array{T, D};
                             tol::Real=eps(T))
  arr = copy(arr_in)
  for i in eachindex(arr)
    if isapprox(arr[i], 0; atol=tol)
      arr[i] = 0
    end
  end
  arr
end
