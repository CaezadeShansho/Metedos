function c=biseccionI(funcion,diferencial,x0,x1)
    if(diferencial(x0)*diferencial(x1)<0)
        return 
    end
     c=(x0+x1)/2;
    while mifuncion(funcion(x0),funcion(x1)) > 0.01
        if funcion(x0)* funcion(c)<0
            x1=c
        end  
        if funcion(c)* funcion(x1)<0  
            x0=c
        end
        c=(x0+x1)/2;
    end
 %F(a)*F(b)<0 para saber que tiene ceros la funcion
 %F'(a) * F'(b)<0 para asegurar que tenga solo una 
end