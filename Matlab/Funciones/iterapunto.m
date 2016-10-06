% Parametros de Entrada :
%
% función : Tiene que ser una función declarada como inline
% p0= Es el punto fijo tomado para cada caso.

% k: Numero de iteraciones.
%



function punto=iterapunto(fn,p0,k)

k=0; % inicio para meterme en el ciclo
while k<12
    pnew=f(p0); % funciòn declarada como inline
    p0=pnew;
    punto=p0
    k=k+1;
    itera= k % contador para ir mostrando iteración y su valor.
   
end 


end
