function ans=horner(n,coeff,x0)
	y=coeff(1)
	z=coeff(1)
	for i from 2 to n-1 do
		y=x0*y+coeff(i);
		z=x0*z+y;
	end_for
	y=x0*y+coeff(n)
	return (y,z)
end