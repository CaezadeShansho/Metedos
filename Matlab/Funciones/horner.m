function [y,z]=horner(n,coeff,x0)
	y=coeff(1);
	z=coeff(1);
    for i = 2:n-1
		y=x0*y+coeff(i);
		z=x0*z+y;
    end
	y=x0*y+coeff(n)
	z;
end
