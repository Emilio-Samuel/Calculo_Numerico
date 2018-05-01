clear all
close all
clc

%% Ejercicio 17 (ejercicio incompleto, ver el del profesor)
% Mostrar la grafica el polinomio interpolador de un conjunto de nodos
g = @(x) 1./(1+x.^2);

%% Generacion de nodos equidistantes
a = -5; b = 5; num_nodos = 10;
s = a + (0:num_nodos)*(b-a)/num_nodos;
x = -1:4;

y = g(x);
[~, n] = size(x);
pol = zeros(1,n);

%% Hacemos una prueba
for i=1:n
    pol(i) = pol_interpolador(s, y, x(i));
end

figure;
hold on;
fplot(g,[a b],'k');
plot(x,pol);
hold off;

% Fin del programa