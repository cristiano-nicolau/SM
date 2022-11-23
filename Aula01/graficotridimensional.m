x=[-1:1]
y=[-1:1]
[xx,yy]=meshgrid(x,y);
f=cos(4*pi*(xx+yy)).*exp(-abs(xx+yy))

surf(x,y,f)
shading interp

