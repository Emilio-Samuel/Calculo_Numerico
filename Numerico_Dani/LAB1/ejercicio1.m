clear all
close all
clc

%% Ejercicio 1

% Generar una figura con el plot del error en funcion de n
% (ERR(n)) por x = (pi/10) con n entre [1,12]

x = pi/10;
err = zeros(1,12);  % Con un numero te la da cuadrada, ojo y usar size(err)

for n = 1:12
    err(n) = exp_casera(x, n);
end

x = 1:12;
plot(x, err, '*')

%% Version del profe

x = pi/10;
E = zeros(1,12);

for n = 1:12
    % La version del profe devuelve [exponencial, error]
    [~, E(n)] = exp_casera(x, n);
end

plot(1:12,E)

% Fin del programa