abstract type Static end
struct Void <: Static end
struct SolidItem <: Static
	wrap::Item
end
update(::Static, ::Space, ::Pos) = nothing

struct MovingStatic <: Static
	v::Pos
end
function update(st::MovingStatic, sp::Space, pos::Pos)
	sp[pos]=Void()
	sp[pos+st.v]=st
end
