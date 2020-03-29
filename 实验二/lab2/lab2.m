%% 实例中函数的MATALB演示
clear,clc
close all
x=meshgrid(-10:0.5:10);
y=x';
z=sin((x.^2+y.^2).^(1/2)).*(x.^2+y.^2).^(1/2) ;
h=surf(x,y,z);
axis([-15,15,-15 15,-15,15]);
while 1
    rotate(h,[0 0 1],1)
    pause(0.05)
end 
%% 1 用view（）函数和drawnow函数制作动画，分析与前面实例中帽子旋转效果的不同。
clear,clc
close all
x=meshgrid(-10:0.5:10);
y=x';
z=sin((x.^2+y.^2).^(1/2)).*(x.^2+y.^2).^(1/2) ;
surf(x,y,z) 
h=gca;
axis vis3d
try
for i=0:inf
    view(h,i,30)
    drawnow
end 
end
%% 2 球体沿曲线的运动
clear,clc
close all
y=rand(1,30);
axis off
h1=axes('position',[0 0 1 1])
plot(y)
axis off
h=axes('position',[0 0 0.1 0.1])
while 1
for i=1:30
  set(h,'position',[i/30,y(i),0.1,0.1])
  sphere(30);
  axis square off
  pause(0.2)
end 
end
%% 3 Peaks图形逐渐趋于平面的过程
clear,clc
close all
p=peaks(50);
h=axes('position',[0 0 1 1],'visible','off');
for i=1:20
  p1=p/i;
  surf(p1)
  set(h,'zlim',[0 10])
  axis off
  pause(0.1)
end
%% ④从椭圆转化成矩形的过程中更好的理解rectangle的参数curvature的含义。
clc
clear
M=moviein(16);
for j=1:16
  rectangle('position',[4,5,15,10],'curvature',j/16);
  M(j)=getframe;
  axis equal
end
movie(M,1)

%% ⑤图像块逐渐放大的过程
A=imread('tiger.jpg');
for i=1:200
  A1=imcrop(A,[i,i,200+i,200+i]);
  imshow(A1)
  pause(0.001)
end