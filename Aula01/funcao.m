x=linspace(0,2*pi);
y=sin(x);
sen_series2 = taylor(2,x);
sen_series10 = taylor(10,x);
plot(x,y,'r',x,sen_series2,'k',x,sen_series10,'b')
