function circleEighth(xc,yc,x,y)
    %�˷ֶԳƵ���㸨������
    hold on;
    plot(xc+x,yc+y,'r*');
    plot(xc-x,yc+y,'r*');
    plot(xc+x,yc-y,'r*');
    plot(xc-x,yc-y,'r*');
    plot(xc+y,yc+x,'r*');
    plot(xc-y,yc+x,'r*');
    plot(xc+y,yc-x,'r*');
    plot(xc-y,yc-x,'r*');
end