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