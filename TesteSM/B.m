T= 2; 
np=4; 
Ta= 0.01;
N=T/Ta*np;
t=(0:N-1)*Ta;
y=20*sin(3*pi*t-(2*pi/3))+16*sin(7*pi*t-(2*pi/3))+10*sin(9*pi*t-(pi/4));
  
figure(12)
[X,fx] = Espetro(y,Ta);
stem(fx,abs(X),'.');
xlabel("Frequencia (Hz)");
ylabel("DFT (Magnitude)");


p=potencia(Ta,T,y)