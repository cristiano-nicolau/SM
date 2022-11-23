function x = estudo (y, Ta,F0,Np,T_F)
    T=1/F0;
    N=T/Ta*Np;

    % espetro
    X = fft(y)/N;
    X = fftshift(X);
    df = F0/N;
    fx = [0 : (N-1)]'*df - F0/2;
    
    %tempo
    Y = ifftshift(X);
    Y = ifft(Y)*N;
    t = (0:(N-1))*Ta;
    if T_F==0
          plot(t,Y);
          xlabel("Tempo (seg)");
          ylabel("Sinal x(t)");
    elseif T_F==1
          stem(fx,abs(X),'.');
          xlabel("Frequencia (Hz)");
          ylabel("DFT (Magnitude)");
    elseif T_F==2
         subplot(2,2,[1,2]);
         plot(t,y);
         xlabel("Tempo (seg)");
         ylabel("Sinal x(t)");
         subplot(2,2,[3,4]);
         stem(fx,abs(X),'.');
         xlabel("Frequencia (Hz)");
         ylabel("DFT (Magnitude)");
    else 
        fprintf("T_F deverá ter valores 0,1 e 2");
    end
    
end