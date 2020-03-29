function a=BresenhamCircle(xc,yc,r)
% Bresenham»­Ô²»¡
figure;
x=0;
y=r;
d=3-2*r;
a=[x y d];
drawcircle(xc,yc,x,y);
while x<y
    x=x+1;
    if d<0
        d=d+4*x+6;
    else
        d=d+4*(x-y)+10;
        y=y-1;
    end
    a = [a;x y d];
    drawcircle(xc,yc,x,y);
end

