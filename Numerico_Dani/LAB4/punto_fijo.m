%% Ejercicio
% Calculo del metodo del punto fijo

function [c_final, n_final, tiempo] = punto_fijo(f, x0, t, n_max)

    % Parametros de entrada:
    % f: funcion a la que aplicar el metodo
    % x0: Valor inicial del punto fijo
    % t: Cota para la diferencia entre pasos
    % n_max: numero maximo de iteraciones
    
    Err = 1; n = 0;
    tic;
    while Err > t && n < n_max
        x = f(x0);
        Err = abs(x-x0);
        x0 = x;
        n = n+1;
    end;
    tiempo = toc;
    n_final = n;
    c_final = x;
return;