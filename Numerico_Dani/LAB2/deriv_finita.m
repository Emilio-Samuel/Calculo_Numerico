%% Ejercicio
% Dada f perteneciente a C¹((x0-h,x0+h)), calcular la mejor aproximación
% numérica de f'(1)=Lim__h->0((f(x0+h) - f(x0-h))/2h)

function [derivada] = deriv_finita(f, x0, h)

    % Parametros de entrada:
    % f: funcion a derivar
    % x0: punto sobre el que calcular la derivada
    % h: radio del intervalo en el que vamos a calcular
    
    % Dice el profe que si haces lo siguiente, h mejora
    % temp = x0 + h;
    % h = temp - x0;

    derivada = (f(x0+h)-f(x0-h))./(2.*h);
return;