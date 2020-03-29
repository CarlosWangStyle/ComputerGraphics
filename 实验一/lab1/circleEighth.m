function circleEighth(xc,yc,x,y)
    %八分对称点计算辅助函数
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