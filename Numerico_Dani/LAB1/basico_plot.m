clear all
close all
clc

% Calculamos la exponencial en el intervalo -5,5
x = -5:0.1:5;
y = exp(-x.^2);
plot(x,y)

% Calculamos la exponencial en el intervalo -5,5 con menos precision
figure();
x = -5:0.5:5;
y = exp(-x.^2);
plot(x,y)

% Hacemos que no imprima las lineas, solo los puntos
figure();
plot(x,y,'*');

% Fin del programa