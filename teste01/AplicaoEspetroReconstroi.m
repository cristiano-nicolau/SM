  T= 2; %1 segundo      %T=1/f      f="pi/2pi uma vez que na funçoa é 2 pi
  np=8; %4periodos
  Ta= 0.01;
  N=T/Ta*np;
  t=(0:N-1)*Ta;


  x = 20*sin(3*pi*t-(2*pi/3))+16*sin(7*pi*t-(2*pi/3))+10*sin(9*pi*t-(pi/4));

  
  figure(12)
  [X,fx] = Espetro(x,Ta);
  stem(fx,abs(X),'.');
  xlabel("Frequencia (Hz)");
  ylabel("DFT (Magnitude)");
  
  figure(7)
  [t,x]=Reconstroi(X,fx);
  plot(x,t);
  xlabel("Tempo (seg)");
  ylabel("Sinal x(t)");