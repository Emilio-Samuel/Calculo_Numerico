clear all
close all
clc

% Funcion anonima: Ejemplo
g = @(x) x.^2 + 7*x +12;
a = g(4);
fplot(g,[-5,3]);

% Esto ultimo es equivalente a:
% x = -5:0.01:3;
% y = f(x);
% figure;
% plot(x,y);

%% Calculamos e^x*Log(1+e^⁻x)

% El .* hace falta para que la funcion no falle si le das un vector
f = @(x) exp(x).*log(1+exp(-x));
fplot(f,[0 40]);

% Cuando x es lo bastante grande, el interior del logaritmo se acerca a 1
% El logaritmo en si se acerca al limite de la mantisa, y a partir de 53 la
% función vale 0

ylim([0 2]);

x = 40:54;
y = f(x);
figure;
plot(x,y)

x = 40:0.1:54;
y = f(x);
figure;
plot(x,y)

x = 40:0.01:54;
y = f(x);
figure;
plot(x,y)

x = 40:0.001:54;
y = f(x);
figure;
plot(x,y)

x = 40:54;
y = f(x);
hold on;
plot(x,y,'*b')

%% Probamos a calcular la derivada
fu = @(x) sin(x);
x0 = 3*pi/2;
h = 1;
[res, paso] = deriv_iter(fu, x0, h);

a = res+paso;

fa = @(x) x.^2;
x1 = 2;
h = 1;
[res, paso] = deriv_iter(fa, x1, h);

% Fin del programa