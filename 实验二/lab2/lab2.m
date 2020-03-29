%% ʵ���к�����MATALB��ʾ
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
%% 1 ��view����������drawnow��������������������ǰ��ʵ����ñ����תЧ���Ĳ�ͬ��
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
%% 2 ���������ߵ��˶�
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
%% 3 Peaksͼ��������ƽ��Ĺ���
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
%% �ܴ���Բת���ɾ��εĹ����и��õ����rectangle�Ĳ���curvature�ĺ��塣
clc
clear
M=moviein(16);
for j=1:16
  rectangle('position',[4,5,15,10],'curvature',j/16);
  M(j)=getframe;
  axis equal
end
movie(M,1)

%% ��ͼ����𽥷Ŵ�Ĺ���
A=imread('tiger.jpg');
for i=1:200
  A1=imcrop(A,[i,i,200+i,200+i]);
  imshow(A1)
  pause(0.001)
end