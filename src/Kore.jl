__precompile__(true)
module Kore

include("integer.jl")
include("array.jl")
include("float.jl")

include("function.jl")
include("graphic.jl")

export flatten
export chopzero, chopzero!
export funcplus, functimes
export linpath

end
