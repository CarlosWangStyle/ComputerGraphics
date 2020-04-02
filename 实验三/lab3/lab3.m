%% ①三维图形绘制
% plot3函数
figure
t=0:pi/50:10*pi;
plot3(sin(t),cos(t),t)
%%
figure
[x,y]=meshgrid(-2:0.1:2);
z=x.*exp(-x.^2-y.^2);
plot3(x,y,z)
%% surf函数
figure
[x,y]=meshgrid(-2:0.1:2);
z=x.*exp(-x.^2-y.^2);
plot3(x,y,z)
figure
	surf(x,y,z)
%% mesh函数
figure
[x,y]=meshgrid(-2:0.1:2);
z=x.*exp(-x.^2-y.^2);
plot3(x,y,z)
figure
	mesh(x,y,z)
%% patch函数
figure
vert=[1 1 1;1 2 1;2 2 1;2 1 1;1 1 2;1 2 2;2 2 2;2 1 2];%顶点
fac=[1 2 3 4;2 6 7 3;4 3 7 8;1 5 8 4;1 2 6 5;5 6 7 8];%面由顶点序号定义
subplot(1,3,1)
patch('faces',fac,'vertices',vert,'Facecolor','w'); %（立方体由顶点和面定义）
view(3);
subplot(1,3,2)
patch('faces',fac,'vertices',vert,'FaceVertexCData',hsv(6),'Facecolor','flat');
view(3);
subplot(1,3,3)
patch('faces',fac,'vertices',vert,'FaceVertexCData',hsv(8),'Facecolor','interp');
view(3);
%% 绘制球体并平移
figure
%画(5 5 5)为圆心，半径为3的球
[x,y,z]  = ellipsoid(5,5,5,3,3,3);
surf(x,y,z)
hold on
%平移到(15 5 5)
[x2,y2,z2] =ellipsoid(15,5,5,3,3,3);
surf(x2,y2,z2)
axis equal 
axis([0 20 0 15 0 10]);
%% 
figure
%绘制半径为2，高为4,50分割的圆柱面
[x,y,z] = cylinder(2,50);
z(2,:)=4;
fig(1) = surf(x,y,z,'FaceColor',[0 1 0]);
axis equal 
axis([-5 5 -5 5 -5 5]);
hold on
%绘制顶和底
theta = linspace(0,2*pi,100);
X=2*cos(theta); 
Y=2*sin(theta); 
Z=4*ones(size(X));
fig(2) = fill3(X,Y,Z,[0,1,0]);
fig(3) = fill3(X,Y,Z-4,[0,1,0]);
view(100,20)
hold on
xlabel('x轴');ylabel('y轴');zlabel('z轴');
%% 
%绕x轴旋转60度
direction = [1 0 0];
rotate(fig,direction,60)

%% sphere
figure
for t = 1:30
    [x,y,z]=sphere(t);
    surf(x,y,z)
    axis equal
    axis([-1 1 -1 1 -1 1]);
    pause(0.2)
end
%%
figure
t = 20;
for e = 1:10
    [x,y,z]=sphere(t);
    %surf(x,y,z)
    T=[1          0   0;
       1+0.1*e   1   0;
       0          0   1];
    for i=1:t+1
            for j=1:t+1
                a=x(i,j);
                b=y(i,j);
                c=z(i,j);
                m=[a b c]*T';
                x1(i,j)=m(1);
                y1(i,j)=m(2);
                z1(i,j)=m(3);
            end
    end
%    figure
    surf(x1,y1,z1)
    axis equal
    axis([-1 1 -2.5 2.5 -1 1]);
    %view(100,30)
    pause(0.2)
end

%% 三维旋转
for i=-2*pi:0.5:2*pi
    R=[cos(i) sin(i) 0;-sin(i) cos(i) 0;0 0 1];
    R=[0 cos(i) sin(i) ;0 -sin(i) cos(i) ;1 0 0];
    R=[cos(i) 0 sin(i) ;-sin(i)  0 cos(i) ;0 1 0];
    vert=[1 1 1;1 2 1;2 2 1;2 1 1;1 1 2;1 2 2;2 2 2;2 1 2];
    vert=vert*R;
    fac=[1 2 3 4;2 6 7 3;4 3 7 8;1 5 8 4;1 2 6 5;5 6 7 8];
    pause(0.1)
    patch('faces',fac,'vertices',vert,'FaceVertexCData',hsv(8),'Facecolor','interp');
    view(3);
end

%% 透视投影和平行投影
figure
vert=[1 1 1;1 2 1;2 2 1;2 1 1;1 1 2;1 2 2;2 2 2;2 1 2];
fac=[1 2 3 4;2 6 7 3;4 3 7 8;1 5 8 4;1 2 6 5;5 6 7 8];
subplot(1,2,1)
view(3);
patch('faces',fac,'vertices',vert,'Facecolor','w');
axis equal;
subplot(1,2,2)
view(3);
camproj('perspective')
patch('faces',fac,'vertices',vert,'Facecolor','w');
axis equal;
%%
figure
z=ones(2,5);
subplot(2,2,1);
bar3(z)
axis equal;
subplot(2,2,2);
bar3(z)
axis equal;
view(-30,15)
subplot(2,2,3);
bar3(z)
axis equal;
view(0,0)
subplot(2,2,4);
bar3(z)
axis equal;
view(45,-30)
%%
figure
surf(peaks)
axis vis3d off
for x = -200:5:200
    campos([x,10,10])
drawnow
pause(0.1)
end
%%
figure
vert=10*[1 1 1;1 2 1;2 2 1;2 1 1;1 1 2;1 2 2;2 2 2;2 1 2];
fac=[1 2 3 4;2 6 7 3;4 3 7 8;1 5 8 4;1 2 6 5;5 6 7 8];
view(3);
camproj('perspective')
patch('faces',fac,'vertices',vert,'Facecolor','w');
axis vis3d off
for x = -200:5:200
    campos([x,100,50])
drawnow
pause(0.1)
end

