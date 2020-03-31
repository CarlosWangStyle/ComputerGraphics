%% ����άͼ�λ���
% plot3����
figure
t=0:pi/50:10*pi;
plot3(sin(t),cos(t),t)
%%
figure
[x,y]=meshgrid(-2:0.1:2);
z=x.*exp(-x.^2-y.^2);
plot3(x,y,z)
%% surf����
figure
[x,y]=meshgrid(-2:0.1:2);
z=x.*exp(-x.^2-y.^2);
plot3(x,y,z)
figure
	surf(x,y,z)
%% mesh����
figure
[x,y]=meshgrid(-2:0.1:2);
z=x.*exp(-x.^2-y.^2);
plot3(x,y,z)
figure
	mesh(x,y,z)
%% patch����
figure
vert=[1 1 1;1 2 1;2 2 1;2 1 1;1 1 2;1 2 2;2 2 2;2 1 2];%����
fac=[1 2 3 4;2 6 7 3;4 3 7 8;1 5 8 4;1 2 6 5;5 6 7 8];%���ɶ�����Ŷ���
subplot(1,3,1)
patch('faces',fac,'vertices',vert,'Facecolor','w'); %���������ɶ�����涨�壩
view(3);
subplot(1,3,2)
patch('faces',fac,'vertices',vert,'FaceVertexCData',hsv(6),'Facecolor','flat');
view(3);
subplot(1,3,3)
patch('faces',fac,'vertices',vert,'FaceVertexCData',hsv(8),'Facecolor','interp');
view(3);
%% �������岢ƽ��
figure
%��(5 5 5)ΪԲ�ģ��뾶Ϊ3����
[x,y,z]  = ellipsoid(5,5,5,3,3,3);
surf(x,y,z)
hold on
%ƽ�Ƶ�(15 5 5)
[x2,y2,z2] =ellipsoid(15,5,5,3,3,3);
surf(x2,y2,z2)
axis equal 
axis([0 20 0 15 0 10]);
%% 
figure
%���ư뾶Ϊ2����Ϊ4,50�ָ��Բ����
[x,y,z] = cylinder(2,50);
z(2,:)=4;
fig(1) = surf(x,y,z,'FaceColor',[0 1 0]);
axis equal 
axis([-5 5 -5 5 -5 5]);
hold on
%���ƶ��͵�
theta = linspace(0,2*pi,100);
X=2*cos(theta); 
Y=2*sin(theta); 
Z=4*ones(size(X));
fig(2) = fill3(X,Y,Z,[0,1,0]);
fig(3) = fill3(X,Y,Z-4,[0,1,0]);
view(100,20)
hold on
xlabel('x��');ylabel('y��');zlabel('z��');
%% 
%��x����ת60��
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
t = 5;
for e = 1:10
    [x,y,z]=sphere(t);
    %surf(x,y,z)
    T=[1          0   0;
       1+0.1*e  1   0;
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
    
    pause(0.2)
end