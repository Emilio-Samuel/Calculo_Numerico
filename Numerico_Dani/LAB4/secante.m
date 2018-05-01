%% Ejercicio
% Calculo del metodo de la secante

function [c_final, n_final, tiempo] = secante(f, x0, x1, t, nmax)

    % Parametros de entrada:
    % f: funcion a la que aplicar el metodo
    % x0: pegundo valor inicial para calcular la secante
    % x1: segundo valor inicial para calcular la secante
    % t: cota para la diferencia entre pasos
    % nmax: numero maximo de iteraciones
    
    if nargin < 4
        t = 1e-4;
    end;
    
    if nargin < 5
        nmax = 100;
    end;
    
    Err = 1; n = 0;
    tic;
    while Err > t && n < nmax
        x = x1 - f(x1)*((x1-x0)/(f(x1) - f(x0)));
        Err = abs(x-x0);
        x0 = x1;
        x1 = x;
        n = n+1;
    end;
    tiempo = toc;
    n_final = n;
    c_final = x;
    
return;