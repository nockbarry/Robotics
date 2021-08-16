%Code to plot theta angles of arms of a 2 DOF Robot Arm
%By Nicholas Barrett
clc;close all;
x=linspace(0,1,500)
y=linspace(.5,1,500)
a1=.75;
a2=.5;
t=1:500;
for i = 1:500
D(1,i)=((x(1,i)^2)+(y(1,i)^2)-(a1)^2 - (a2)^2)/(2*a1*a2);
theta2(1,i)=acos(D(1,i));
theta1(1,i)=atan(y(1,i)/x(1,i)) - atan(a2*sin(theta2(1,i)/(a1 + a2*cos(theta2(1,i)))));
end
plot(t,theta1,t,theta2)
hold on
legend('Theta 1','Theta 2');
xlabel('Time (s)');
ylabel('Angle (Radians)');
title('Angle of Joints vs Time');
figure
plot(x,theta1(1:500),x,theta2(1:500))
xarm1=a1*cos(theta1);
yarm1=a1*sin(theta1);
legend('Theta 1','Theta 2');
xlabel('X Length (m)');
ylabel('Angle (Radians)');
title('Angle of Joints vs X co-ord');
