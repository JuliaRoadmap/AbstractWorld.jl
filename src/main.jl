using StaticArrays
abstract type Pos end
mutable struct 2DPos
	x::Int
	y::Int
end

abstract type Space end
mutable struct 2DInfSpace
	chunks::Dict{Complex{Int}, MMatrix{32, 32, Staic, 1024}}
	entities::Vector{Entity}
end

include("items.jl")
include("statics.jl")
include("entities.jl")
