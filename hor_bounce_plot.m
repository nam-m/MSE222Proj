clear, clc, clearvars
close all

[x1,x2,y] = hor_bounce(0.05,0.005,2,1,50,40,3,2);
figure;
plot(x1, y, 'b')
xlabel('X')
ylabel('Y')
% xlim([0, 100])
% ylim([-100, 0])
hold on
title('Y versus X of horizontal collision')
plot (x2, y, 'r')
hold off