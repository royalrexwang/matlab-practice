function f=myfun3(z,y,x,th)
l1=0.3;
l2=1;
w1=2*pi;
f=[z(1)*cos(x(1))+l1*w1*w1*cos(th-x(1))-l2*y(2)*y(2);l2*z(2)*cos(x(1))-l1*w1*w1*sin(th)-l2*y(2)^2*sin(th)];