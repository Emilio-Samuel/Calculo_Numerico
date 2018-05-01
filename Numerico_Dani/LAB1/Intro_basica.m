clear all
close all
clc

%% Ejemplos basicos
% Cambios de formato para mejorar la precision
pi

format long g
pi

format long e
pi

format short

% Borrar variable
clear nombre_de_variable

%(2 - 2^(-52))*2^1023 - realmax

v = [1 2 3];
w = [1;2;3];
y = [1:2:10];
y(3) == 5;
y(2:4) == [3 5 7];

t = magic(2);
sum(sum(t));

norm(v);
%% Exponencial de pi
% Parametros de entrada
x = pi/10;
n = 5;
r = 0;

for k = 0:n
    % Calculamos la exponencial aproximada de x
    r = r + x^k/factorial(k);
end

a = exp(x) - r;
a - exp_casera(x, n)
% Fin del programa