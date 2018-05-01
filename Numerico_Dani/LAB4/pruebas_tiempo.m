clear all
close all
clc

%% Ejercicio 9
% Medir el rendimiento de los metodos de punto fijo, Newton, secante y
% Steffenson

% Declaramos la funcion
f = @(x) x + log(x);
g = @(x) 1 + x.^-1;       % Para Newton
h = @(x) x - 0.01*(f(x)); % Para el punto fijo

%% Vamos a buscar primero un candidato a cero
x = 0.5:0.001:0.6;
y = f(x);
figure;
plot(x,y)

%% Calculo de tiempos
x0 = 0.5; x0_s = 0.7; x1_s = 0.6; t = 1e-4; nmax = 1000; iter = 100;

res_c = zeros(4, 100);
res_n = zeros(4, 100);
res_t = zeros(4, 100);

for i=1:iter
    [res_c(1,i), res_n(1,i), res_t(1,i)] = punto_fijo(h, x0, t, nmax);
    [res_c(2,i), res_n(2,i), res_t(2,i)] = newton(f, g, x0, t, nmax);
    [res_c(3,i), res_n(3,i), res_t(3,i)] = secante(f, x0_s, x1_s, t, nmax);
    [res_c(4,i), res_n(4,i), res_t(4,i)] = steffenson(f, x0, t, nmax);
end;

C = [sum(res_c(1,:)) sum(res_c(2,:)) sum(res_c(3,:)) sum(res_c(4,:))];
N = [sum(res_n(1,:)) sum(res_n(2,:)) sum(res_n(3,:)) sum(res_n(4,:))];
T = [sum(res_t(1,:)) sum(res_t(2,:)) sum(res_t(3,:)) sum(res_t(4,:))];

C = C/iter;
N = N/iter;
T = T/iter;

C,N,T
% Fin del programa