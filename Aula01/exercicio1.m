x=[1:2:10]

y=[-5:5]
z=linspace(-5,5,11)

a=[1 5  1-j; 4 j  -1]
a(:,4)=[1,2]
a(3,:)=[2,3,5,7]

B = a(:,1:2:end)



% graficooooo
X=linspace(-2*pi,0,200)
f=sin(X).*exp(X)
plot(X,f,".-R")
xlabel("xxxxxx")
ylabel("yyyyyyyy")
title("Grafico")
grid on 


% grafico com imaginarios


b=linspace(0,2*pi,200)
g=sin(8*b).*exp(b*j)
w=sin(4*b).*exp(b*j)
subplot(2,1,1)
plot(g,".-R")
xlabel("xxxxxx")
ylabel("yyyyyyyy")
title("Grafico")
subplot(2,1,2)
plot(g,".-g")
xlabel("xxxxxx")
ylabel("yyyyyyyy")
title("Grafico")
