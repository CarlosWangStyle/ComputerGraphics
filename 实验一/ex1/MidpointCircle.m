function MidpointCircle
r = 10;
hold on; axis equal;
grid on;
x = -r:0.01:r; 
y = sqrt(r^2-x.^2); 
plot(x,y,x,-y,'b-');
title('Midpoint Circle');
%%
%ªÊ÷∆1/8‘≤
x = r; 
y = 0; 
d = 1.25 - r; 
PointArray = []; 
plot(x,y,'ro','MarkerSize',5,'MarkerFaceColor','g');
PointArray = [PointArray; x y];
while y <= x 	
	if d < 0  
        d = d + 2*y+3;
    else 
        d = d - 2*(x-y)+5;  
        x = x -1;
    end
    y = y + 1;
    if y > x 
        break; 
    end
    PointArray = [PointArray; [x,y]];
    plot(x,y,'ro','MarkerSize',5,'MarkerFaceColor','g');
end
%%
% Draw the second octant arc
n = size(PointArray,1); PointArray2 = [];
for j = 1:n
    x = (PointArray(j,1)-PointArray(j,2))/sqrt(2);
    y = (PointArray(j,1)+PointArray(j,2))/sqrt(2);
    plot(x,y,'ro','MarkerSize',5,'MarkerFaceColor','g');
    PointArray2 = [PointArray2; x y];
end
pause(n_time) % delay n_time seconds
%%
% Draw the arc in the second quadrant
PointArray2 = [PointArray2; PointArray];
n = size(PointArray2,1); PointArray = [];
for j = 1:n
    x = -PointArray2(j,1); y = PointArray2(j,2);
    plot(x,y,'ro','MarkerSize',8,'MarkerFaceColor','g');
    PointArray = [PointArray; x y];
end
%%
% Draw the lower half of the circle
PointArray2 = [PointArray2; PointArray];
n = size(PointArray2,1);
for j = 1:n
    plot(PointArray2(j,1),-PointArray2(j,2),'ro','MarkerSize',8,'MarkerFaceColor','g');
end
hold off;
