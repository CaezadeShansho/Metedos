
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
function c=biseccion(funcion,x0,x1,tol)
    cont = 0
     c=(x0+x1)/2;
    while abs(funcion(c)) > tol
        if funcion(x0)* funcion(c)<0
            x1=c 
        else
            x0=c
        end
        c=(x0+x1)/2
        cont = cont+1
    end    
 %F'(a)*F'(b)<0 para asegurar que tenga solo una 
 
end