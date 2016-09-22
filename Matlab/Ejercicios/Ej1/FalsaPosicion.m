function FalsaPosicion(func,x0,x1,tol)
% siendo x0 < x1 y tol el error relativo
% func tiene que ser enviada como inline() para evaluar
    c = ( x0 * func(x1)- x1 * func(x0) )/ ( func(x1)-func(x0) )
    while  mifuncion(x0,x1) <= tol 
        if(func(x0)*func(c)<0)
            disp('lado izquierdo')
            x1=c
        else
            disp('lado derecho')
            x0=c
        end
        c = ( x0 * func(x0)- x1 * func(x1) )/ ( func()-func() )
    end
    
end