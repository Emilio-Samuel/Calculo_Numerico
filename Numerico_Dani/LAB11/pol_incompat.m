function [a] = pol_incompat(f, s, m)
%UNTITLED7 Summary of this function goes here
%   Detailed explanation goes here

    b = f(s); if size(b,2) > size(b,1); b = b'; end;
    n = length(b);
    b = b + 2*randn(n,1);
    
    V(:,1) = ones(n,1);
    for k = 2:m
        V(:,k)= s.^(k-1);
    end;
    
    a = sis_incompat(V,b);
    x = min(s):(max(s)-min(s))/1000:max(s);
    for i = 1:length(x)
        p(i)=0;
        for k=1:m
            p(i) = p(i) + a(k)*x(i)^(k-1);
        end;
    end;
    figure
    plot(s, b,'*r')
    hold on
    plot(x,p)
end

