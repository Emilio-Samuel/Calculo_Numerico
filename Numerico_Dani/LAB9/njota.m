%% Ejercicio
% Funcion auxiliar para el calculo del productorio del polinomio
% interpolador

function [N] = njota(s, fs)

    % Parametros de entrada:
    % s: array de nodos
    % f: funcion para el calculo de coeficientes
    
    tic;
    [~, n] = size(s);
    N = zeros(n,n);
    N(1,:) = fs(:);
    for j = 1:n
        for i=1:n-j
            N(i+j,j) = s(i+j) - s(i);
        end
    end
        
    for i=2:n
        for j=i:n
            N(i,j) = (N(i-1,j)-N(i-1,j-1))/N(j,i-1);
        end
        N(i,i:n);
    end
    t_max = toc;
    
return;