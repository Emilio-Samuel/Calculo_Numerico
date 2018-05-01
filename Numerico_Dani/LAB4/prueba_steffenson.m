clear all
close all
clc

%% Ejercicio 8
% Aplicar el método de Steffenson a la función f = x + Log(x)

% Declaramos la funcion
f = @(x) x + log(x);

%% Vamos a buscar primero un candidato a cero
x = 0.5:0.001:0.6;
y = f(x);
figure;
plot(x,y)

%% Hacemos una prueba
x0 = 0.5; t = 1e-4; nmax = 1000;

[c, n] = steffenson(f, x0, t, nmax);

% Mostramos el resultado
c, n
% Fin del programa