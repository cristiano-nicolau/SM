function p= potencia(Ta,T,x)
    n=T/Ta;
    x = x(:,1:n);
    p = x*x'/n;
end
