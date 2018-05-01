clear all
close all
clc

%% Ejercicio 3
% Aplicar el método de la bisección a la función f = x^7 +11x -1

% Declaramos la funcion
f = @(x) x.^7 + 11.*x -1;

%% Vamos a buscar primero un candidato a cero
x = -1:0.001:1;
y = f(x);
figure;
plot(x,y)
% El "cero" ronda c = 0 (0.0909... según Wolfram)

%% Hacemos una prueba
a = -1; b = 2; t1 = realmin;
if f(a)*f(b) < 0
    c = (a+b)/2;
    while abs(b-a) > 10^-4
        if f(a)*f(c) < 0
            b=c;
        elseif f(c)*f(b) < 0
            a=c;
        end;
        c = (a+b)/2;
        if abs(f(c)) < t1
            print ('Lo he encontrado y es %d', c);
            break;
        end;
    end;
end;

% Mostramos el resultado
c
%% Aplicamos el metodo
a = -1; b = 2; t1 = realmin;
t2 = realmin; n_max = 1000;

[c, Err, n] = biseccion(f, a, b, t1, t2, n_max);
c, Err, n
% Fin del programa