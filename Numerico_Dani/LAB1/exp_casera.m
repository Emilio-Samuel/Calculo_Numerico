% Funcion para el calculo del error de la exponencial
function [ret] = exp_casera(x, n)

% Parametros de entrada
% x: numero que ira en el exponente
% n: numero de terminos de la aproximacion

r = 0;
for k = 0:n
    % Calculamos la exponencial aproximada de x
    r = r + x^k/factorial(k);
end

% Devolvemos el error
ret = exp(x) - r;
return;