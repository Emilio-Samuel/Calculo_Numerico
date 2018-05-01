%% Ejercicio
% Calculo del método de Gauss-Seidel

function [x, t_max, Err] = metodo_gseidel(A, b, tol_max, n_max)

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
    
    tic;   
    
    x0 = b;
    x = zeros(size(b));
    for i=1:sx(1)
        sum1 = 0;
        for j = 1:(i-1)
            sum1 = sum1 + A(i,j)*x(j);
        end;
        sum2 = 0;
        for j = (i+1):sx(1)
            sum2 = sum2 + A(i,j)*x0(j);
        end;
        x(i) = (b(i) - sum1 -sum2)/(A(i,i));
    end;
    iter = 1;
    
    while max(abs(x - x0)) > tol_max && n_max > iter
        x0 = x;
        for i=1:sx(1)
            sum1 = 0;
            for j = 1:(i-1)
                sum1 = sum1 + A(i,j)*x(j);
            end;
            sum2 = 0;
            for j = (i+1):sx(1)
                sum2 = sum2 + A(i,j)*x0(j);
            end;
            x(i) = (b(i) - sum1 -sum2)/(A(i,i));
        end;
        iter = 1 + iter;
    end;
    
    t_max = toc;
    
return;