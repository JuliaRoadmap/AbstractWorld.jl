abstract type Entity end
struct ItemEnity <: Entity
	wrap::Item
	pos::Pos
	v::Pos
end

mutable struct Rabbit <: Entity
	mem::Vector
	health::Health
end

struct Observer <: Entity
	bind::Interact
end
