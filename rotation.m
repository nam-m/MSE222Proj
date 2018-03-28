function [x,y,w] = rotation(mb,mr,angle,rb,Y,L,d)
g = 9.81;
x1 = L - d;

b = (0.4*rb^2 + x1.^2)*mb + (1/3)*mr*(x1.^2);

theta = 0:0.001:angle;
h = x1*sin(theta);
a = 2*g*h*(mb + 0.5*mr);
w = sqrt(a/b);
t = w./theta;
alpha = w./t;

figure(1);
plot(t, w, 'b')
xlabel('X')
ylabel('Y')
% xlim([0, 100])
% ylim([-100, 0])
hold on
title('Angular Velocity vs. Time of Rotation')

figure(2);
plot(t, alpha, 'g')
xlabel('X')
ylabel('Y')
% xlim([0, 100])
% ylim([-100, 0])
hold on
title('Angular Acceleration vs. Time of Rotation')

x = L - x1*cos(theta);
y = Y - x1*sin(theta);

end


