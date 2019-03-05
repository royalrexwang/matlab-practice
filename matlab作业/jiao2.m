%y为一个储存x1,x2值表示角2
clc;clear;
y = zeros(37,2);
for theta = 0:10:360
    i = floor(theta/10);
    theta = (pi/18)*theta;
    x = fsolve(@(x) myfun1(x,theta),[0 0]);
    y(i+1,1:2) = x;
end
y;
theta = 0:(pi/18):(2*pi);
%plot(theta,y(:,1))
%hold on
%plot(theta,y(:,2));

%储存dtheta,theta1和theta2角度的数组
a = zeros(37,2);
a(:,1) = theta;
a(:,2) = y(:,2);
a;
b = zeros(37,2);
for i = 1:1:37
    dtheta = a(i,1);
    etheta = a(i,2);
    v = fsolve(@(v) myfun2(v,dtheta,etheta),[0 0]);
    b(i,:) = v;
end
b;
c = zeros(37,2);
for i = 1:1:37
    dtheta = a(i,1);
    etheta = a(i,2);
    omg = b(i,2);
    k = fsolve(@(k) myfun3(k,dtheta,etheta,omg),[0 0]);
    c(i,:) = k;
end
c;
t = 0:(1/36):1;
plot(t,a(:,1));
hold on
plot(t,b(:,2));
plot(t,c(:,2));
plot(t,y(:,1));
plot(t,b(:,1));
plot(t,c(:,2));
plot(t,zeros(37,1),'r--');
xlabel('t');
ylabel('y');
title('Plot of the all Variables');
legend('theta(2)','omga(2)','alpa(2)','Xc','Vc','ac','x');

    
    
    
    
    
    
    
   






