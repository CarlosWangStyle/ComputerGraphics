function bresenham_draw_line(x0,y0,x1,y1)
% Breshham algorithm to draw line star from (a0,b0) to (a1,b1)
dx=x1-x0;dy=y1-y0;
p=2*dy-dx;p1=2*dy;
p2=2*(dy-dx);
if x0>x1 
x=x1;y=y1;xm=x0;
else
x=x0;y=y0;xm=x1;
end
plot(x,y,'ro');
hold on;
while x<xm
x=x+1;
if p<0
p=p+p1;
else
y=y+1;p=p+p2;
end
plot(x,y,'ro');
hold on;
end
axis([x0-x0/2 x1+x1/2 y0-y0/2 y1+y1/2]);
grid on
plot([x0,x1],[y0,y1],'m','linewidth',1);
title('Bresenham algorithm for line');
end