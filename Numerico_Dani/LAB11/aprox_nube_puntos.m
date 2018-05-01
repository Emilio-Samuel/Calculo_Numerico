clear all
close all
clc

%% Ejercicio 21
% Calcular la recta que pasa por la nube de puntos
m = 3; n = 5;
A = floor(100*randn(n,m));
% while range(A) ~= min(m,n)
%     A = floor(100*randn(n,m));
% end;
b = floor(100*randn(n,1)); % Tiene que ser vector columna
%% Hacemos una prueba
x = sis_incompat(A,b);
x

%% Generamos la nube de puntos
f = @(x) exp(-x);
s = -1:0.1:1;
M = 2;
pol_incompat(f, s, M);

g = @(x) x.^2 -3*x + 11;
s2 = -5:0.1:5; M = 3;
pol_incompat(g, s2, M);
% Fin del programa