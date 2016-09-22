function c=FalsaPosicion(func,x0,x1,tol)
% siendo x0 < x1 y tol el error relativo
% func tiene que ser enviada como inline() para evaluar
cont=0
    c = ( x0 * func(x1)- x1 * func(x0) )/ ( func(x1)-func(x0) )
    while  error(x0,x1) >= tol 
        if(func(x0)*func(c)<0)
            x1=c;
        else
            x0=c;
        end
        c = ( x0 * func(x1)- x1 * func(x0) ) / ( func(x1)-func(x0) )
        cont=cont+1
    end
    
end