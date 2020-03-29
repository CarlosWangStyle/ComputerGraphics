function DDALine(x0,y0,x1,y1)
    %DDA画线法函数
    hold on; axis equal;
    grid on;
    plot([x0 x1],[y0 y1],'b-');
    title('DDA画线法');
    if abs(x1-x0) >= abs(y1-y0)
        length = abs(x1-x0);
    else  
        length = abs(y1-y0); 
    end
    dx = (x1-x0)/length; 
    dy = (y1-y0)/length;
    x = x0;
    y = y0;
    i = 1;	
    while i <= length 	   
        plot(round(x),round(y),'ro','MarkerSize',5,'MarkerFaceColor','g');	
        x = x + dx; y = y + dy; 
        i = i + 1;
    end
    plot(round(x1),round(y1),'ro','MarkerSize',5,'MarkerFaceColor','g');
    hold off;
end
