function [x,t] = Reconstroi (X, f)
  N=length(X);
  fa = f(end)*2;
  Ta = 1/fa;
  X = ifftshift(X);
  x = ifft(X)*N;
  t = (0:(N-1))*Ta;
  
end