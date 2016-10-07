% Parámetros de Entrada :
%
% n : Grado del polinomio.
% coeff : Vector que contiene todas las constantes que acompañan a x.
% x0 : Punto a ser evaluado en la función.
%
% Variables de Salida:
%
% y : Punto x0 evaluado en f(x), es decir f(x0).
% z : Punto x0 evaluado en f'(x), es decir f'(x0)


function [y,z]=horner(n,coeff,x0)
	y=coeff(1);
	z=coeff(1);
    for i = 2:n-1
		y=x0*y+coeff(i);
		z=x0*z+y;
    end
	y=x0*y+coeff(n);
	z;
end
