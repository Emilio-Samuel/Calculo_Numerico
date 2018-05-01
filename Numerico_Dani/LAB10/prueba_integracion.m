clear all
close all
clc

%% Ejercicio 18
% Resolver una integral en [a,b] con distintas formulas de cuadratura
f = @(x) x.^2;
a = [-1 1];
a2 = [-1 0 1];

%% Hacemos una prueba
[ I_medio, I_trapecio, I_simpson, I_gauss2, I_gauss3 ] = integracion( f, a );

[ I_medio2, I_trapecio2, I_simpson2, I_gauss22, I_gauss32 ] = integracion( f, a2 );

%I_medio, I_trapecio, I_simpson, I_gauss2, I_gauss3

%% Ejemplos de clase
f = @(x) x.^5 + 37*x.*2 -12;
a = -7; b = 11; N = 600;
v = a:(b-a)/(N-1):b; % N puntos equiespaciados

%[ PI_medio_p, PI_trapecio_p, PI_simpson_p, PI_gauss2_p, PI_gauss3_p ] = integracion( f, v );

g = @(x) 1./(1+x.^2);
a = -5; b = 5;
top = 30;
for n=2:top
    v = a:(b-a)/(n-1):b; % N puntos equiespaciados
    [ PI_medio_p(n), PI_trapecio_p(n), PI_simpson_p(n), PI_gauss2_p(n), PI_gauss3_p(n) ] = integracion( f, v );
end

figure
subplot(2,2,1); plot(2:top,PI_medio_p(2:top))
%subplot(4,1,2); plot(2:50,PI_trapecio_p(2:50))
subplot(2,2,2); plot(2:top,PI_simpson_p(2:top))
subplot(2,2,3); plot(2:top,PI_gauss2_p(2:top))
subplot(2,2,4); plot(2:top,PI_gauss3_p(2:top))


% Fin del programa