%% Ejercicio
% Calculo de una formula de cuadratura compuesta en [a,b]

function [ I ] = i_compuesta_ab( f, a, w, x )
    % Parametros de entrada:
    % f: funcion a la que calcular la integral
    % a: array de extremos de la particion [a,b]
    % w: pesos de la formula de cuadratura en [-1,1] 
    % x: nodos de la formula de cuadratura en [-1,1]
    
    [~, n] = size(a);
    I_parciales = zeros(1,n);
    for i = 1:n-1
        I_parciales(i) = i_simple_ab( f, a(i), a(i+1), w, x );
    end
    
    I = sum(I_parciales);
end

