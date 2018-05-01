%% Ejercicio
% Calculo del metodo de Steffenson

function [c_final, n_final, tiempo] = steffenson(f, x0, t, nmax)

    % Parametros de entrada:
    % f: funcion a la que aplicar el metodo
    % x0: Valor inicial del metodo de Steffenson
    % t: Cota para la diferencia entre pasos
    % nmax: numero maximo de iteraciones
    
    if nargin < 3
        t = 1e-4;
    end;
    
    if nargin < 4
        nmax = 100;
    end;
    
    Err = 1; n = 0;
    
    % Calculamos la funcion auxiliar
    tic;
    g = @(f, x) (f(x + f(x)) - f(x))./f(x);
    
    while Err > t && n < nmax
        x = x0 - (f(x0)/g(f,x0));
        Err = abs(x-x0);
        x0 = x;
        n = n+1;
    end;
    tiempo = toc;
    n_final = n;
    c_final = x;
    
return;