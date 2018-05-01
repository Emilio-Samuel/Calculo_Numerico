%% Ejercicio
% Calculo del metodo de Newton

function [c_final, n_final, tiempo] = newton(f, g, x0, t, nmax)

    % Parametros de entrada:
    % f: funcion a la que aplicar el metodo
    % g: derivada analitica de la funcion f
    % x0: Valor inicial del metodo de Newton
    % t: Cota para la diferencia entre pasos
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
        x = x0 - (f(x0)/g(x0));
        Err = abs(x-x0);
        x0 = x;
        n = n+1;
    end;
    tiempo = toc;
    n_final = n;
    c_final = x;
    
return;