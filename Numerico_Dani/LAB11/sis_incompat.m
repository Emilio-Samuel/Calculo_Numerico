%% Ejercicio
% Hallar el vector para calcular la recta de una nube de puntos

function [ x ] = sis_incompat(A,b)

    % Parametros de entrada:
    % A: matriz a la que aplicar el metodo
    % b: vector del sistema Ax=b
    
    n = min(size(A));
    
    [Q, R, ~] = fact_QR(A);
    x = conj(Q')*b;
    x = x./diag(R);
    for i=(n-1):-1:1
        x(i) = x(i)-R(i,(i+1):n)*x((i+1):n)/R(i,i);
    end;

end

