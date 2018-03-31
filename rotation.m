function [x,y] = rotation(mb,mr,rb,l,Y,d,v1)
global GlobalXYT;
%mb: ball mass
%mr: rod mass
%rb: ball radius
%l: rod length
%d: horizontal bar length
%v1: ball initial velocity
g = 9.81;
e = 0.01; %coefficient of restitution
x0 = d;
y0 = Y;
%Conservation of Momentum
syms v2 vr2 
%v2: ball velocity after impact with rod
%vr2: rod velocity after impact with ball
I = (1/3)*mr*l^2 + 0.4*mb*rb^2 + mb*(l-rb)^2;
eqns = [(l-rb)*mb*(v2-v1)+ I*vr2/l == 0, vr2-v2-e*v1 == 0];
[v2,vr2] = solve(eqns, [v2 vr2]);
wr2 = vr2/l; %wr2: rod angular velocity after impact

%Conservation of Energy
y1 = (mr*(l/2) + mb*(l-rb))/(mr + mb);
% y2 = y1 * cos(angle);
%(mb+mr)*g*y1*(1-cos(angle)) == 0.5*(mb*v2^2+I*wr2^2)];
%angle = acos(1-(0.5*(mb*v2^2+I*wr2^2))/((mb+mr)*g*y1));
angle = pi/12;

theta = 0:0.01:angle;
t = theta./wr2;
alpha = wr2./t;
ax = (l-rb).*alpha.*cos(theta); %ax: horizontal acceleration after impact
x = x0 + v2*t + 0.5*ax.*(t.^2);
ay = (l-rb).*alpha.*sin(theta); %ay: vertical acceleration after impact
y = y0 +0.5*(ay-g).*(t.^2);

% x1 = L - d
% 
% b = (0.4*rb^2 + x1.^2)*mb + (1/3)*mr*(x1.^2);
% 
% theta = 0:0.001:angle;
% h = x1*sin(theta);
% a = 2*g*h*(mb + 0.5*mr);
% w = sqrt(a/b);
% t = w./theta;
% alpha = w./t;
% 
% figure(1);
% plot(t, w, 'b')
% xlabel('X')
% ylabel('Y')
% % xlim([0, 100])
% % ylim([-100, 0])
% hold on
% title('Angular Velocity vs. Time of Rotation')
% 
% figure(2);
% plot(t, alpha, 'g')
% xlabel('X')
% ylabel('Y')
% % xlim([0, 100])
% % ylim([-100, 0])
% hold on
% title('Angular Acceleration vs. Time of Rotation')
% 
% x = L - x1*cos(theta);
% y = Y - x1*sin(theta);

end
