% Parametros de Entrada :
%
% funcion : Tiene que ser una funcion evaluada como inline
% x0 : Valor mínimo de el intervalo
% x1 : Valor máximo de el intervalo
% tol : Tolerancia o error al cual quiere someterse
%
% Variables de Salida:
%
% c : Valor aproximado del cero de la función
%

function c=FalsaPosicion(func,x0,x1,tol)
% siendo x0 < x1 y tol el error relativo
% func tiene que ser enviada como inline() para evaluar
cont=0
    c = ( x0 * func(x1)- x1 * func(x0) )/ ( func(x1)-func(x0) )
    while  abs(func(c)) > tol 
        if(func(x0)*func(c)<0)
            x1=c
        else
            x0=c
        end
        c = ( x0 * func(x1)- x1 * func(x0) ) / ( func(x1)-func(x0) )
        cont=cont+1
        
    end
    
end