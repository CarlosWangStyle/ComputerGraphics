function BresenhamCircle(xc,yc,r)
% Bresenham·¨»­Ô²
%figure;
axis equal;
grid on;
rectangle('Position',[xc-r,yc-r,2*r,2*r],'Curvature',[1,1],'linewidth',1)
title('BresenhamCircle');
x=0;
y=r;
d=3-2*r;
circleEighth(xc,yc,x,y);
while x < y
    if d<0
        d=d+4*x+6;
    else
        d=d+4*(x-y)+10;
        y=y-1;
    end
    x=x+1;
    circleEighth(xc,yc,x,y);
end