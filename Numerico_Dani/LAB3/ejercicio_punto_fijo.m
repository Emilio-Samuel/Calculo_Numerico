clear all
close all
clc

%% Ejercicio 4
% Aplicar el método del punto fijo a la función f = x^7 +11x -1

% Declaramos la funcion
f = @(x) x.^7 + 11.*x -1;

%% Vamos a buscar primero un candidato a cero
x = -1:0.001:1;
y = f(x);
figure;
plot(x,y)
% El "cero" ronda c = 0 (0.0909... según Wolfram)

%% Hacemos una prueba
%g = @(x) x - f(x);

% Esta funcion tal cual no converge porque su derivada siempre es >10
%g = @(x) -x.^7 - 10.*x +1;
g = @(x,lambda) x - lambda*(x.^7 + 11.*x -1);

%g'_lambda = 1-lambda*(7x^6+11)

x0 = 0.5; Err = 1; lambda = 0.01;
tol = 1e-4; n = 0; nmax = 1000;

while Err > tol && n < nmax
    x = g(x0, lambda);
    Err = abs(x-x0);
    x0 = x;
    n = n+1;
end;

% Mostramos el resultado
x0, Err, n
% Fin del programa