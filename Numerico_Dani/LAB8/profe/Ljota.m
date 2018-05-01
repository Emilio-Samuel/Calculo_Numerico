function L = Ljota(s,x)
	%%%Sabemos que n es el numero de nodos
	n = max(size(s));
	%%%L es un vector de unos
	L = ones(size(s));
	%%%Para cada punto que nos pasan calculamos el peso de LG asociado
	for j = 0:n-1
		%%%Vamos modificando L(j) para realizar el productorio
		for k = 0:n-1
		    if k ~= j
		        L(j+1) = L(j+1)*(x-s(k+1))/(s(j+1)-s(k+1));
		    end
		end

	end

end