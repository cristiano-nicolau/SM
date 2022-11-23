function sen_series = taylor(N,x)
soma=0;
for n=1:N
    soma=soma +((x.^n)/factorial(n))*sin(n*pi/2);
end
sen_series=soma;
end

%somatorios de serie de taylor