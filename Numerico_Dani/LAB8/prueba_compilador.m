clear all
close all
clc

%% Ejercicio 16
% Calcular el polinomio interpolador de un conjunto de nodos

x = [1, 2, 3, 4, 5];
y = x.^2;
x0 = 6;
n = size(x);

%% Hacemos una prueba

A = ljota(x, x0)

for i = 1:n(2)
    ljota(x, x(i))
end

B = pol_interpolador(x, y, x0)

for i = 1:n(2)
    pol_interpolador(x, y, x(i))
end

% Fin del programa