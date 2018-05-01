%% Ejercicio
% Dada f perteneciente a C¹((x0-h,x0+h)), calcular la mejor aproximación
% numérica de f'(1)=Lim__h->0((f(x0+h) - f(x0-h))/2h)

function [derivada, paso] = deriv_iter(f, x0, h)

% Parametros de entrada:
% f: funcion a derivar
% x0: punto sobre el que calcular la derivada
% h: radio del intervalo en el que vamos a calcular
derivada = deriv_finita(f, x0, h);
h = h./10;

while 1
    iter = deriv_finita(f, x0, h);
    if(abs(derivada-iter) < 0.0000001)
        break;
    end;
    derivada = iter;
    h = h./10;
end;
paso = h;

return;