% file:drawCircle.m
% ������Ϣ����2017-4 #21 ������
% 2020��3��10��17��27��
% lab1:������r=4Ϊ�뾶��(8,8)ΪԲ�ĵ�Բ������ֱ�ӵ���MATLAB�л�Բ�ĺ�����
% ���������matlab�Դ����������ڶԱ�
close all
clear
%����1���е㻭Բ��
figure(1)
midpointCircle(8,8,4)
%����2��Bresenham��Բ��
figure(2)
BresenhamCircle(8,8,4)
%����3��������Բ��
figure(3)
pnCircle(8,8,4)