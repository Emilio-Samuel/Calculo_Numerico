%% Ejercicio
% Calcular una matriz dominada por su diagonal

function [B] = dom_matrix(A)

    % Parametros de entrada:
    % A: matriz a la transformar en dominada por su diagonal
    % b: resultado del sistema
    
    sx = size(A);
    if (sx(1) ~= sx(2))
        disp('No es cuadrada');
        return;
    end;
    x = zeros(1,sx(1));
    
    for i=1:sx(1)
        x(i) = sum(abs(A(i,:)));
    end;
    x = (x - abs(diag(A))) + 1;
    B = A - diag(diag(A)) + diag(diag(x));
return;