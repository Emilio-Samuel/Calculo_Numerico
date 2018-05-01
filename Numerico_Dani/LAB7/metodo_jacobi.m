%% Ejercicio
% Calculo del método de Jacobi

function [x, t_max, Err] = metodo_jacobi(A, b, tol_max, n_max)

    % Parametros de entrada:
    % A: matriz a la que aplicar el metodo
    % b: resultado del sistema
    Err = 0;
    t_max = 0;
    
    sx = size(A);
    if (sx(1) ~= sx(2))
        Err = 1;
        return;
    end;
    
    x0 = b;
    
    B = (diag(1./diag(A)))*(diag(diag(A)) - A);
    v = b./diag(A);
    
    tic;
    x = B*x0 + v;
    iter = 1;
    
    while max(abs(x - x0)) > tol_max && n_max > iter
        x0 = x;
        x = B*x0 + v;
        iter = 1 + iter;
    end;
    
    t_max = toc;
    
return;