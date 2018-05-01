%% Ejercicio
% Calculo del polinomio interpolador con Newton

function [p] = n_pol_interpolador(s, fs, x0)

    % Parametros de entrada:
    % s: array de nodos
    % y: valores de los nodos
    % x: punto sobre el que evaluar el polinomio
    
    tic;
    
    N = njota(s, fs);
    [~, n] = size(s);
    njota_pol = ones(1,n);
    for i = 2:n
        njota_pol(i) = njota_pol(i-1)*(x0-s(i-1));
    end
    p = dot(diag(N),njota_pol);
    t_max = toc;
    
return;