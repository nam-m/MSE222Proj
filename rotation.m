function [x,y,w] = rotation(mb,mr,angle,rb,Y,L,d)
g = 9.81;
x1 = L - d;

b = (0.4*rb^2 + x1.^2)*mb + (1/3)*mr*(x1.^2);

theta = 0:0.01:angle;
h = x1*sin(theta);
a = 2*g*h*(mb + 0.5*mr);
w = sqrt(a/b);
plot(w, theta, 'b')
xlabel('X')
ylabel('Y')
% xlim([0, 100])
% ylim([-100, 0])
hold on
title('Angle vs. Angular Velocity of Rotation')

x = L - x1*cos(theta);
y = Y - x1*sin(theta);

end



