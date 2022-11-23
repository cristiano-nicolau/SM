%Ex 2
figure(1)                                               % o T tem de ser sempre calculado- maximo devisor comum

%% a)
  T= 1; %1 segundo
  np=4; %4periodos
  Ta= 0.01;
  N=T/Ta*np;
  t=(0:N-1)*Ta;

  x = sin(2*pi*t);

  [X,fx] = Espetro(x,Ta);
  stem(fx,abs(X),'.');
  xlabel("Frequencia (Hz)");
  ylabel("DFT (Magnitude)");
  
  figure(7)
  [t,x]=Reconstroi(X,fx);
  plot(x,t);
  xlabel("Tempo (seg)");
  ylabel("Sinal x(t)");
 %% b)
   figure(2)
   T= 50; %1 segundo
   np=4; %4periodos
   Ta= 0.01;
   N=T/Ta*np;
   t=(0:N-1)*Ta;
 
   x = sin(10*pi*t)+cos(12*pi*t)+cos(14*pi*t-(pi/4));
 
   [X,fx] = Espetro(x,Ta);
   stem(fx,abs(X),'.');
   xlabel("Frequencia (Hz)");
   ylabel("DFT (Magnitude)");
 
 %% c)
   figure(3)
   T= 0.1; %1 segundo
   np=4; %4periodos
   Ta= 0.01;
   N=T/Ta*np;
   t=(0:N-1)*Ta;
 
   x = 10 + 14*cos(20*pi*t-(pi/3)) + 8*cos(40*pi*t+(pi/2));  
 
  [X,fx] = Espetro(x,Ta);
  stem(fx,abs(X),'.');
  xlabel("Frequencia (Hz)");
  ylabel("DFT (Magnitude)");

%% d)
  figure(4)
  T= 5; %1 segundo
  np=4; %4periodos
  Ta= 0.01;
  N=T/Ta*np;
  t=(0:N-1)*Ta;

  x = square(t*2*pi*1);
  plot(t,x,'.-');

  figure(5)
  [X,fx] = Espetro(x,Ta);
  stem(fx,abs(X),'.');
  xlabel("Frequencia (Hz)");
  ylabel("DFT (Magnitude)");