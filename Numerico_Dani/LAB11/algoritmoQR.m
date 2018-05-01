clear all
close all
clc

%% Ejercicio 20
% Calcular el algoritmo QR
m = 3; n = 3;
A = floor(100*randn(n,m));
while range(A) ~= min(m,n)
    A = floor(100*randn(n,m));
end;

%% Hacemos una prueba
[Q, R, tiempo] = fact_QR(A);
A = R*Q';
n_iter = 0; tol = 1e-4;
while abs(max(max(abs(A-diag(diag(A)))))) >= tol && n_iter <= 100
    [Q, R, tiempo] = fact_QR(A);
    A = R*Q';
    n_iter = n_iter + 1;
end;

n_iter, (diag(A) - eig(A))
% Fin del programa