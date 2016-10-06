% Parametros de Entrada :
%
% función : Tiene que ser una función declarada en función creada f(x)
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
    itera= k % contador para ir mostrando iteración y su valor.
   
end 


end