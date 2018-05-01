%% Ejercicio
% Calculo del metodo de la biseccion

function [c, Err, n] = biseccion(f, a, b, t1, t2, n_max)

    % Parametros de entrada:
    % f: funcion a la que aplicar el metodo
    % a: extremo inferior del entorno del punto buscado
    % b: extremo superior del entorno del punto buscado
    % t1: limite de parada para la norma de la imagen
    % t2: limite de parada para la diferencia entre los resultados
    % n_max: numero maximo de iteraciones
    
    n=0;Err=1;
    if f(a)*f(b) > 0
        Err = 1; c = 0;
        return;
    end;
    
    if f(a) == 0
        c = a;
        return;
    elseif f(b) == 0
        c = b;
        return;
    end;
    
    c = (a+b)/2; n=0;
    
    while abs(f(c)) > t1 && abs(b-a) > 2*t2 && n < n_max
        if f(a)*f(c) < 0
            b=c;
        elseif f(c)*f(b) < 0
            a=c;
        end;
        c = (a+b)/2; n = n+1;
    end;
    Err = 0;
return;