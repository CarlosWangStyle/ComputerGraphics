function drawcircle(xc,yc,x,y)
%�˷ֶԳƵ���㸨������
hold on;
plot(xc+x,yc+y,'*');
plot(xc-x,yc+y,'*');
plot(xc+x,yc-y,'*');
plot(xc-x,yc-y,'*');
plot(xc+y,yc+x,'*');
plot(xc-y,yc+x,'*');
plot(xc+y,yc-x,'*');
plot(xc-y,yc-x,'*');