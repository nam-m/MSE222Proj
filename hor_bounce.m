function [x1,x2,y] = hor_bounce(m,r,t1,t2,X,Y,v1,a1) 
%m: mass, r: radius
%t1: from spring to before collision
%time: collision time
%t2: after collision
%v1: velocity after spring
%a1: acceleration after spring
x0 = X;
y = Y;
%g=9.81;
%N = m*g; %normal force
I = 0.4*m*r.^2; %mass moment of inetia
w1 = v1/r; %initial angular velocity

syms miu v2 
eqns = [m*(v2-v1) == 0, I*(v2/r-v1/r) == 0];
[miu v2] = solve(eqns, [miu v2]);
w2 = v2/r;
a2 = a1;

t01 = 0:0.01:t1;
x1 = x0 + v1*t01 + 0.5*a1*t01.^2;
x1f = x0 + v1*t1 + 0.5*a1*t1.^2;
t02 = 0:0.01:t2;
x2 = x1f - v2*t02 - 0.5*a2*t02.^2;
end
