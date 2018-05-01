%% Ejercicio
% Calculo de la factorizacion QR

function [Q, R, t_max] = fact_QR(A)

    % Parametros de entrada:
    % A: matriz a la que aplicar el metodo

    m = min(size(A)); R = zeros(m);
    Q = zeros(size(A));
    tic;
    
    R(1,1) = norm(A(:,1));
    Q(:,1) = A(:,1)./R(1,1);
    for k=2:m
        v = A(:,k);
        for j= 1:(k-1)
            R(j,k) = Q(:,j)'*A(:,k);
            v = v - R(j,k)*Q(:,j);
        end;
        R(k,k) = norm(v);
        Q(:,k) = v./R(k,k);
    end;
    t_max = toc;
    
return;

