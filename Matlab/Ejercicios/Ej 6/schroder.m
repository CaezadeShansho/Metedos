%Parametros de Entrada:
%
% fnc: Función a utilizar, tiene que ser syms 
% x0: Punto inicial a utilizar
% er: Error o tolerancia a someterse
%
% Variables de salida:
% c: cantidad de iteraciones
$ nt: Valor aproximado del cero de la función






function sf=schroder(fnc,x0,er)
    dfnc=diff(fnc);
    ddfnc=diff(dfnc);
    f=double(subs(fnc,x0));
    df=double(subs(dfnc,x0));
    ddf=double(subs(ddfnc,x0));
    xn=double(x0-f*df/(df^2-f*ddf));
    ab=double(abs(xn-x0)/abs(xn));
    c=1;
    while ab>er
        x0=xn;
        f=double(subs(fnc,x0));
        df=double(subs(dfnc,x0));
        ddf=double(subs(ddfnc,x0));
        xn=double(x0-f*df/(df^2-f*ddf));  
        ab=double(abs(xn-x0)/abs(xn));
        c=c+1;
    end
    c
    sf=xn
end

