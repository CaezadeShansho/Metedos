% Parametros de entrada:
% real : Valor real 
% aprox : Valor estimado o aproximado
%
% Variables de salida:
%  a : Error obtenido

function a=mifuncion(real,aprox)
a=abs((real-aprox)/real);
end
