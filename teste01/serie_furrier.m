function [x,t] = serie_furrier (Ta,f,Np,a,b)
  p = Np/(Ta*f);                                      %Numero de periodos * periodo
  t = (0:p-1)*Ta;
                                                     %𝑇𝑎: Período de amostragem, em segundos;
  sumA=0;                                            %f0: Frequência do sinal composto, em Hz;
  sumB=0;                                            %N𝑝: Número de períodos a considerar para o sinal resultante;
  for k = 1 : length(a)                              %a𝑘: Vetor (𝐾x1) com os valores de 𝑎𝑘 da série;
    sumA=sumA + a(k)*cos(2.*pi.*k.*f.*t);            %b𝑘: Vetor (𝐾x1) com os valores de 𝑏𝑘 da série.
    sumB=sumB + b(k)*sin(2.*pi.*k.*f.*t) ;
  end
  
  x = sumA + sumB;
end  