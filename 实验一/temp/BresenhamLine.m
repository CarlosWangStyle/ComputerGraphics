function BresenhamLine(x0,y0,x1,y1)
hold on; axis equal;
grid on;
plot([x0 x1],[y0 y1],'b-');
title('Bresenham»­Ïß·¨');
x = x0; y = y0;
dx = abs(x1-x0); 
dy = abs(y1- y0); 
s1 = sign(x1-x0); 
s2 = sign(y1-y0);

if dy > dx
	temp = dx; 
	dx = dy; 
	dy = temp; 
	interchange = 1;
else 
	interchange = 0;
end
e = 2*dy-dx;
for i = 1:dx
	plot(x,y,'ro','MarkerSize',8,'MarkerFaceColor','g');
	if e > 0
        if interchange == 1 
            x = x+s1; 
        else
            y = y+s2; 
        end
        e = e-2*dx;
    end
	if interchange == 1 
        y = y+s2; 
    else
        x = x+s1; 
    end
	e = e+2*dy;
end
plot(x1,y1,'ro','MarkerSize',5,'MarkerFaceColor','g');
hold off;
