%x(t)=A*sen(2pi*f0*t)    f0=frequencia    T=1/f0 periodo
Ta = 0.001;
f = (4*pi)/(2*pi);
T = 1/f;

t = 0:Ta:4*T;
x = 2*sin(4*pi*t);

pA= potencia(ta,T,x)


%e)
f = gcd((6*pi)/(2*pi),(8*pi)/(2*pi));  %descobrir a frequencia quando existem freqs diferentes
T = 1/f;

t = 0:Ta:4*T;
w = sin(6*pi*t) + sin(8*pi*t + 0.1);

pe = potencia(w,Ta,T)
