function pnCircle(xc,yc,r)
%Õý¸º»­Ô²·¨
axis equal;
grid on;
rectangle('Position',[xc-r,yc-r,2*r,2*r],'Curvature',[1,1],'linewidth',1)
title('pnCircle');
x=0;
y=r;
d=0;
while x<=y
    circleEighth(xc,yc,x,y)
    if d <= 0
        d = d + 2 * x + 1;
        x = x + 1;
    else
        d = d - 2 * y + 1;
        y = y-1;
    end
end