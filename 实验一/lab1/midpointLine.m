function midpointLine(x0,y0,x1,y1)
    %�ص㻭�߷�����
    x = x0;
    y = y0;
    plot([x0 x1],[y0 y1],'b-');
    axis equal;
    title('�е㻭�߷�');
    b = x1 - x0;
    a = y0 - y1;
    grid on,hold on;
    plot(x,y,'o');
    d0 = a + 2*b;
    d1 = 2 * a;
    d2 = 2 * (a+b);
	while x<x1
        if d0>=0  %ȡ�µ㣬x+1��y���䣬d������Ϊ2a
            x = x+1;
            d0 = d0+d1;
        elseif d0<0%ȡ�ϵ㣬x+1��y+1��d������Ϊ2a+2b
            x = x+1;
            y = y+1;
            d0 = d0+d2;
        end
        hold on;
        plot(x,y,'ro','MarkerSize',5,'MarkerFaceColor','g');
    end
end