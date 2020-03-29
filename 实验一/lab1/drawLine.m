% 电子信息工程2017-4 #21 王新钰
% 2020年3月10日14点35分
% lab1:绘制以(1,2)，(7,6)为端点的直线，不可直接调用MATLAB中画直线的函数。
% 本程序调用matlab自带函数仅用于对比
close all
clear
%方法1：中点画线法
figure(1)
midpointLine(1,2,7,6)

%方法2：DDA画线法
figure(2)
DDALine(1,2,7,6)

%方法3：Bresenham画线法
figure(3)
BresenhamLine(1,2,7,6)