% file:drawCircle.m
% 电子信息工程2017-4 #21 王新钰
% 2020年3月10日17点27分
% lab1:绘制以r=4为半径，(8,8)为圆心的圆，不可直接调用MATLAB中画圆的函数。
% 本程序调用matlab自带函数仅用于对比
close all
clear
%方法1：中点画圆法
figure(1)
midpointCircle(8,8,4)
%方法2：Bresenham画圆法
figure(2)
BresenhamCircle(8,8,4)
%方法3：正负画圆法
figure(3)
pnCircle(8,8,4)