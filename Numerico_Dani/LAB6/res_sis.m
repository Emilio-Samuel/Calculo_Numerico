%% Ejercicio
% Resolucion de un sistema con la factorizacion LU

function [x, t_max, Err] = res_sis(L, U, b)

    % Parametros de entrada:
    % L: matriz a la que aplicar el metodo
    % U: matriz a la que aplicar el metodo
    % b: termino independiente
    Err = 0;
    if(U(end,end) == 0)
        Err = 1; t_max = 0; x = b;
        return;
    end;
        
    tic;
    y = b; sx = size(L); n = sx(1); 
    for i=2:n
        y(i) = y(i)-L(i,1:(i-1))*y(1:(i-1));
    end;
    x = y./diag(U);
    for i=(n-1):-1:1
        x(i) = x(i)-U(i,(i+1):n)*x((i+1):n)/U(i,i);
    end;
    
    t_max = toc;
return;