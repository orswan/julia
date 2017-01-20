# paint.jl
# Painted potentials in Julia

Sr461 = dict("lambda"=>460.86218,"f"=>650.503499,"Gamma"=>2.01e8)
Sr689 = dict("lambda"=>689.44867,"f"=>434.829264,"Gamma"=>4.69e4)
amu = 1.66053904e-27					# kg
MSr = 88.*amu							# 88Sr mass

unitize(x) = x/norm(x)

type brush
	U::Function
	xrange::Array
	yrange::Array
	theta::Number
	phi::Number
	roll::Number
	xyz::Array
	offset::Array
	rtn::Array