function a=MidCircle(xc,yc,r)
% MidCircle(1,2,10)
% ÖÐµã·¨»­Ô²»¡
figure(1);
clf;
x=0;
y=r;
d=1.25-r;
a=[x y d];
drawcircle(xc,yc,x,y);
while x<y
    x=x+1;
    if d<0
        d=d+2*x+3;
    else
        d=d+2*(x-y)+5;
        y=y-1;
    end
    a=[a;x y d];
    drawcircle(xc,yc,x,y);
end

