%% Ejercicio
% Calculo de una integral en una particion de [a,b] para varias formulas de
% cuadratura

function [ I_medio, I_trapecio, I_simpson, I_gauss2, I_gauss3 ] = integracion( f, a )
    % Parametros de entrada:
    % f: funcion a la que calcular la integral
    % a: array de extremos de la particion [a,b]
    
    w_medio = 2;
    w_trapecio = [1 1];
    w_simpson = [1/3 2/3 1/3];
    w_gauss2 = [1 1];
    w_gauss3 = [5/9 8/9 5/9];
    
    x_medio = 0;
    x_trapecio = [-1 1];
    x_simpson = [-1 0 1];
    x_gauss2 = [(-1/sqrt(3)) (1/sqrt(3))];
    x_gauss3 = [-sqrt(3/5) 0 sqrt(3/5)];
    
    I_medio = i_compuesta_ab( f, a, w_medio, x_medio );
    I_trapecio = i_compuesta_ab( f, a, w_trapecio, x_trapecio );
    I_simpson = i_compuesta_ab( f, a, w_simpson, x_simpson );
    I_gauss2 = i_compuesta_ab( f, a, w_gauss2, x_gauss2 );
    I_gauss3 = i_compuesta_ab( f, a, w_gauss3, x_gauss3 );

end

