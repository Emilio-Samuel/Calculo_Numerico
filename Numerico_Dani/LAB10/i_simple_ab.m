%% Ejercicio
% Calculo de una formula de cuadratura simple en [a,b]

function [ I ] = i_simple_ab( f, a, b, w, x )
    % Parametros de entrada:
    % f: funcion a la que calcular la integral
    % a: extremo inferior de la integral
    % b: extremo superior de la integral
    % w: pesos de la formula de cuadratura en [-1,1] 
    % x: nodos de la formula de cuadratura en [-1,1]
    
    t_nuevos = (((b-a).*x(:)) + b + a)./2;
    I = dot(w,f(t_nuevos))*((b-a)/2);
end

