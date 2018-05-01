clear all
close all
clc

% Vamos a comprobar como evolciona la derivada segun el paso

fu = @(x) sin(x);
x0 = pi;

for k=1:60
    d(k) = deriv_finita(fu, x0, 2^-k);
end;

% En la siguiente figura vemos tres regiones:
% En la primera tiene sus valores y ya
% Despues se queda plana
% Por ultimo entra en oscilaciones gigantes por errores de calculo

plot(d)
% Fin del programa