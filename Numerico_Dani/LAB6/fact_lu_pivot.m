%% Ejercicio
% Calculo de la factorizacion LU con pivotaje

function [P, L, U, t_max, Err] = fact_lu_pivot(A)

    % Parametros de entrada:
    % A: matriz a la que aplicar el metodo
    Err = 0;
    t_max = 0;
    U = A; L = eye(size(A)); P = eye(size(A));
    
    sx = size(A);
    if (sx(1) ~= sx(2))
        Err = 1;
        disp('Here be dragons')
        return;
    end;

    n = sx(1);
    aux = zeros(n,1);
    tic;
    
    for k=1:(n-1)
        [~, posicion] = max(abs(U(k:n,k)));
        if posicion ~= 1
            r = posicion + (k-1);
            aux = U(k,k:n);
            U(k,k:n) = U(r,k:n);
            U(r,k:n) = aux;
            aux = L(k,1:(k-1));
            L(k,1:(k-1)) = L(r,1:(k-1));
            L(r,1:(k-1)) = aux;
            aux = P(k,:);
            P(k,:) = P(r,:);
            P(r,:) = aux;
        end;
        if ismember(0,diag(U))
            disp('Diagonal mal')
            Err = 1;
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