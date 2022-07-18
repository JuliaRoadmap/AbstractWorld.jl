abstract type Item end
struct EmptyItem <: Item end
struct Knife
	piece::Material
	handle::Material
end
