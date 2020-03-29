function a=Bresenhamline(x0,y0,x1,y1)
% Bresenhamline(1,2,9,7)
% Bresenham方法画直线
dx=x1-x0;
dy=y1-y0;
p=2*dy-dx;
d1=2*(dy-dx);d2=2*dy;
x=x0;y=y0;
figure(1);
clf;
plot(x,y,'*');
a=[x y p];
while x<x1
    x=x+1;
    if p>0
        y=y+1;
        p=p+d1;
    else
        p=p+d2;
    end
    hold on;
    a=[a;x y p];
    plot(x,y,'*');
end

        