
Ta=0.01;
Np=8;
F0=1/2;
Vamp=[20 16 10];
Vfreq=[3/2 7/2 9/2];
Vfas=[2*pi/3 2*pi/3 pi/4];


%grafico sinal/tempo
T_F=1;
[x,t] = tempo_frequencia(T_F,Ta,F0,Np,Vamp,Vfreq,Vfas);
figure(1)
plot(x,t);
xlabel("Tempo (seg)");
ylabel("Sinal x(t)");
grid on


%grafico espetro/frequencia
T_F=2;
[X,fx] = tempo_frequencia(T_F,Ta,F0,Np,Vamp,Vfreq,Vfas);
figure(2)
stem(fx,abs(X),'.');
xlabel("Frequencia (Hz)");
ylabel("DFT (Magnitude)");
grid on
