clear all
close all
clc

%% Ejercicio 19
% Calcular la factorizcion QR de una matriz m<=n
m = 3; n = 5;
A = floor(100*randn(n,m));
while range(A) ~= min(m,n)
    A = floor(100*randn(n,m));
end;

%% Hacemos una prueba
A
[Q, R, tiempo] = fact_QR(A);

Q, R, tiempo
conj(Q')*Q

max(max(Q*R -A))
% Fin del programa