Ta=0.001;
Np=4;
K=100;
T=1; 
f=1/T;
t=0:Ta:T;

x=sawtooth(2*pi*f*t+pi/2,1/2);

[ak,bk]=CalFurrierSeries(Ta,T,x,K);
[x,t]=serie_furrier(Ta,f,Np,ak,bk);

plot(t,x);