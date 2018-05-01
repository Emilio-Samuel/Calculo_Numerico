clear all
close all
clc

%% Ejercicio 13
% Resolver un sistema con la factorizacion LU y pivotaje de una matriz A
A = floor(100*randn(47));

% Vamos a hacer un vector fila. Si el usuario quiere pasar un vector
% columna, es su problema, va a fallar en el calculo de y
b = floor(100*randn(47,1));

%% Hacemos una prueba
[L, U, tiempo, Err] = fact_lu2(A);

[x, tiempo2] = res_sis(L, U, b);

bb = A*x;
E = b-bb;

tiempo, tiempo2
err = max(abs(E))
%% Hacemos una prueba
disp('Prueba con pivotaje')
[P, L, U, tiempo, Err] = fact_lu_pivot(A);

[x, tiempo2] = res_sis_pivot(P, L, U, b);

bb = A*x;
E = b-bb;
err = max(abs(E))
% Fin del programa