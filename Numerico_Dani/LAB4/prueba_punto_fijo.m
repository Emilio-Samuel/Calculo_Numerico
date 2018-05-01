clear all
close all
clc

%% Ejercicio 5
% Aplicar el método del punto fijo a la función f = x^7 +11x -1

% Declaramos la funcion
f = @(x) x.^7 + 11.*x -1;

%% Hacemos una prueba
%g = @(x) x - f(x);
g = @(x) x - 0.01*(x.^7 + 11.*x -1);

x0 = 0.5; t = 1e-4; nmax = 1000;

[c, n] = punto_fijo(g, x0, t, nmax);

% Mostramos el resultado
c, n
% Fin del programa