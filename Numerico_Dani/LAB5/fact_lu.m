%% Ejercicio
% Calculo de la factorizacion LU

function [L, U, t_max, Err] = fact_lu(A)

    % Parametros de entrada:
    % A: matriz a la que aplicar el metodo
    Err = 0;
    t_max = 0;
    U = A; L = eye(size(A));
    
    sx = size(A);
    if (sx(1) ~= sx(2))
        Err = 1;
        return;
    end;
    
    n = sx(1);
    tic;
    
    for k=1:(n-1)
        if ismember(0,diag(U))
            Err = 1;
            return;
        end;
        for i=(k+1):n
            L(i,k)= U(i,k)./U(k,k);
            for j=(k+1):n
                U(i,j) = U(i,j)-L(i,k).*U(k,j);
            end;
        end;
    end;
    U = triu(U,0);
    t_max = toc;
    
return;