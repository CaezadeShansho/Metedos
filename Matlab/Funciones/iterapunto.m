% Parametros de Entrada :
%
% funci�n : Tiene que ser una funci�n declarada en funci�n creada f(x)
% p0= Es el punto fijo tomado para cada caso.(fijado en comando)

% k: Numero de iteraciones fijado en comando.
%



function punto=iterapunto(p0,k)

k=0; % inicio para meterme en el ciclo
while k<12
    pnew=f(p0);
    p0=pnew;
    punto=p0
    k=k+1;
    itera= k % contador para ir mostrando iteraci�n y su valor.
   
end 


end