clear all
close all
clc

%% Ejercicio 12
% Calcular la factorizacion LU de una matriz A
A = floor(100*randn(47));

%% Hacemos una prueba
[L, U, tiempo, Err] = fact_lu2(A);

% Comprobamos el nivel de error
E = A - L*U;
max(max(abs(E))), tiempo, Err

%% Hacemos una prueba con pivotaje
[P, L, U, tiempo, Err] = fact_lu_pivot(A);

% Comprobamos el nivel de error
E = P*A - L*U;
max(max(abs(E))), tiempo, Err
% Fin del programa