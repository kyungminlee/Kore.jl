import Base: mod

function mod{D, T <: Integer}(i :: NTuple{D, T}, n ::NTuple{D, T}, offset ::Integer = 0)
  (mod(x - offset, y) + offset for (x, y) in zip(i, n))
end

function mod{T1 <: Integer, T2 <: Integer, T3 <: Integer}(i ::T1, n ::T2, offset ::T3 = 0)
  mod(i - offset, n) + offset
end

function within{D, I1 <: Integer, I2 <: Integer}(idx  :: NTuple{D, I1},
                                                 size :: NTuple{D, I2})
  for (i, n) in zip(idx, size)
    if !(1 <= i <= n)
      return false
    end
  end
  return true
end