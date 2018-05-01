clear all
close all
clc

%% Ejercicio 17
% Calcular el polinomio interpolador en forma de Newton de un conjunto de nodos

s1 = [0,2,4,5,8,10];
fs1 = [-1,1,6,0,2,5];

s = [1,2,3,4,5];
fs = s.^2;
fs2 = sin(s);
x0 = -12;

%% Hacemos una prueba

N = njota(s1, fs1);
N2 = njota(s, fs2);

n_pol_interpolador(s, fs, x0)

% Fin del programa