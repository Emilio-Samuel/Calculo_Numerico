%% Ejercicio
% Calculo de la factorizacion LU (modificado sin un for)

function [L, U, t_max, Err] = fact_lu2(A)

    % Parametros de entrada:
    % A: matriz a la que aplicar el metodo
    Err = 0;
    t_max = 0;
    U = A; L = eye(size(A));
    
    sx = size(A);
    if (sx(1) ~= sx(2))
        Err = 1;
        disp('Here be dragons')
        return;
    end;

    n = sx(1);
    tic;
    
    for k=1:(n-1)
        if ismember(0,diag(U))
            Err = 1;
            disp('Diagonal mal')
            return;
        end;
        for i=(k+1):n
            L(i,k)= U(i,k)./U(k,k);
            U(i,(k+1):n) = U(i,(k+1):n)-L(i,k).*U(k,(k+1):n);
        end;
    end;
    U = triu(U,0);
    t_max = toc;
    
return;