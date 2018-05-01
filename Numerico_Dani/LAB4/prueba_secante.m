clear all
close all
clc

%% Ejercicio 7
% Aplicar el método de la secante a la función f = x + Log(x)

% Declaramos la funcion
f = @(x) x + log(x);

%% Vamos a buscar primero un candidato a cero
x = 0.5:0.001:0.6;
y = f(x);
figure;
plot(x,y)

%% Hacemos una prueba
x0 = 0.7; x1 = 0.6; t = 1e-4; nmax = 1000;

[c, n] = secante(f, x0, x1, t, nmax);

% Mostramos el resultado
c, n
% Fin del programa