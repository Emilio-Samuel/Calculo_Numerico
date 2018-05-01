%% Ejercicio
% Calculo del polinomio interpolador

function [p] = pol_interpolador(s, y, x)

    % Parametros de entrada:
    % s: array de nodos
    % y: valores de los nodos
    % x: punto sobre el que evaluar el polinomio
    
    t_max = 0;tic;
    
    l = ljota(s, x);
    p = dot(l,y);
    
    t_max = toc;
    
return;