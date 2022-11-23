Ta = 0.01;
f0 = 1;
Np = 6;

ak = zeros(100,1);
bk = zeros(100,1);

impares = 1:2:20;
bk(impares) = 4./(impares*pi);

[x,t] = serie_furrier(Ta,f0,Np,ak,bk);
figure(1);

plot(t,x);
