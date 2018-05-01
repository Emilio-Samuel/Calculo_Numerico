clear all
close all
clc

%% Ejercicio 15
% Resolver un sistema con el método de Gauss - Seidel
A = floor(10*randn(47));
A = dom_matrix(A);
%A = A + 2000*eye(47);

% Vamos a hacer un vector fila. Si el usuario quiere pasar un vector
% columna, es su problema, va a fallar en el calculo de y
b = floor(100*randn(47,1));
tol_max = 1e-4; n_max = 1000;

%% Hacemos una prueba
[x, tiempo, Err] = metodo_gseidel(A, b, tol_max, n_max);

tiempo
err = max(abs(A*x -b))
% Fin del programa