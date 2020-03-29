function drawcircle(xc,yc,x,y)
%八分对称点计算辅助函数
hold on;
plot(xc+x,yc+y,'*');
plot(xc-x,yc+y,'*');
plot(xc+x,yc-y,'*');
plot(xc-x,yc-y,'*');
plot(xc+y,yc+x,'*');
plot(xc-y,yc+x,'*');
plot(xc+y,yc-x,'*');
plot(xc-y,yc-x,'*');