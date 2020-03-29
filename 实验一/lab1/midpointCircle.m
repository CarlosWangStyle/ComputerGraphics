function midpointCircle(xc,yc,r)
% ÖÐµã·¨»­Ô²
%figure;
axis equal;
grid on;
rectangle('Position',[xc-r,yc-r,2*r,2*r],'Curvature',[1,1],'linewidth',1)
title('MidpointCircle');
x=0;
y=r;
d=1.25-r;
circleEighth(xc,yc,x,y);
while x < y
    if d<0
        d=d+2*x+3;
    else
        d=d+2*(x-y)+5;
        y=y-1;
    end
    x=x+1;
    circleEighth(xc,yc,x,y);
end