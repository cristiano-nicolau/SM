MaxDelay=0.3;
NumComp=15;
y=chorus(x,fa,MaxDelay,NumComp);
sound(y,fa);
figure(2)
Ta=1/fa;
[Y,fy]=Espetro(y,Ta)
xlim([-2e3 2e3]);