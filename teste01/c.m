F0=1;
Np=4;
T=1/F0;
Ta= 0.01;
N=T/Ta*Np;
t=(0:N-1)*Ta;
y=sin(2*pi*t); %f="2pi/2pi uma vez que na funçoa é 2 pi
T_F=2;
estudo (y, Ta,F0,Np,T_F);