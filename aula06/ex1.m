T= 5; %1 segundo
np=2; %4periodos
Ta= 0.2;
N=T/Ta*np;
t=(0:N-1)*Ta;

figure(1)
x=sin(2*pi*t);
ReconstroiSinal(x,Ta)

figure(2)
ta=0.04;
N=T/ta*np;
t=(0:N-1)*ta;
y=sin(10*pi*t)+cos(12*pi*t)+cos(14*pi*t-pi/4);
ReconstroiSinal(y,ta)


nbit=2;
Npal=2^nbit;
vetor=[0.5 0 -0.5]

[x,y]=quantiz(x,vetor)


