Ta  = 0.01;

t = 0:Ta:5;
x = 2*sin(4*pi*t);

figure(1);
plot(t,x);
xlabel("Tempo (s)")
ylabel("Amplitude (A)")
title("Sinal A")