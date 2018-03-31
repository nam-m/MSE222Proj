clear, clc, clearvars
close all

[x,y,w] = rotation(0.01,0.002,pi/8,0.05,0.2794,0.3048,0.2);
%ball mass = 0.01 kg
%rod mass = 0.002 kg
%angle = 30 deg = pi/6
%ball radius = 0.05 m
%Y = 12-1=11 in = 0.2794 m
%L = 12 in = 0.3048 m
%distance from spring to where ball stops on rod = 0.2 m

% figure(1);
% theta = 0:0.01:angle;
% plot(w, theta, 'b')
% xlabel('X')
% ylabel('Y')
% % xlim([0, 100])
% % ylim([-100, 0])
% hold on
% title('Angle vs. Angular Velocity of Rotation')

figure(3);
plot(x, y, 'r')
xlabel('X')
ylabel('Y')
% xlim([0, 100])
% ylim([-100, 0])
hold on
title('Position of Ball in Rotation')

clear, clc, clearvars
close all

% NEW ROTATION PLOT!!!
[x,y] = rotation(0.05,0.005,0.025,0.06,0.3,0.25,3);
figure;
plot(x, y, 'b')
xlabel('X')
ylabel('Y')
% xlim([0, 100])
% ylim([-100, 0])
hold on
