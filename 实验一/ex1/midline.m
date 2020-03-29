function a=midline(x0,y0,x1,y1)
% midline(1,2,9,7)
% 中点法画直线
a=y0-y1;b=x1-x0;d=2*a+b;
d1=2*a;d2=2*(a+b);
x=x0;y=y0;
figure(1);
clf;
a=[x y d];
plot(x,y,'*');
while x<x1
    x=x+1;
    if d<0
        y=y+1;
        d=d+d2;
    else
        d=d+d1;
    end
    hold on;
    a=[a;x y d];
    plot(x,y,'*');
end

        