function [y_t_f,t_f] = tempo_frequencia(T_F,Ta,F0,Np,Vamp,Vfreq,Vfas)
    T=1/F0;
    N=T/Ta*Np;
    t = (0:(N-1))*Ta;
    k=length(Vfreq);
    x=0;
    for i = 1:k
        x = x + Vamp(i)*sin(2*pi*Vfreq(i)*t+Vfas(i));
    end     
    
    if T_F==1

        %geraçao do sinal pelo tempo
        y_t_f=t;
        t_f=x;

    elseif T_F==2

        %geraçao na frequencia
        X = fftshift(fft(x)/N);
        Fa = 1/Ta;
        df = Fa/N;
        fx = [0 : (N-1)]'*df - Fa/2;
        y_t_f=X;
        t_f=fx;

    else 
        fprintf("T_F deverá ter valores entre 1 ou 2.")
    end
end
