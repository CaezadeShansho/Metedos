
% Parametros de entrada:
% f : Vector de funciones escritas con variables simbólicas
% x0 : Vector de intervalos (debe ser congruente con el vector f)
function [sol,i]=NewtonVariables(f,x0)
    i=0;
    jac = jacobian(f);    
    vars =symvar(f);
    deltaX=x0;
    norm(deltaX);
    while  true
        %Evaluamos las variables en x0
        fx0=subs(f,vars,x0');
        %Evaluamos las variables en el jacobiano
        dfx0=subs(jac,vars,x0');
        %Resolvemos sistema jac * Delta = - F
        deltaX= mldivide(dfx0,-fx0);
        fprintf('deltaX es : %.10f \n ', deltaX)
        %Ahora cambiamos a Xn+1
        error = mifuncion(double(x0+deltaX),double(x0));
        fprintf(' error  : %.10f \n ', error)
        if(mifuncion(double(x0+deltaX),double(x0))<=10^-6)
            return
        end
        x0=x0+deltaX;
        i=i+1
        sol=x0;
        sol = double(sol)
    end
end