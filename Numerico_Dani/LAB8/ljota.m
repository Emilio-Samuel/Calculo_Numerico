%% Ejercicio
% Funcion auxiliar para el calculo del productorio del polinomio
% interpolador

function [l] = ljota(s, x)

    % Parametros de entrada:
    % s: array de nodos
    % x: punto sobre el que evaluar el polinomio
    
    tic;
    n = size(s);
    l = ones(1,n(2));
    
    for i=1:n(2)
        for j=1:n(2)
            if j~=i
                l(i) = l(i)*((x-s(j))/(s(i)-s(j)));
            end
        end
    end
    t_max = toc;
    
return;