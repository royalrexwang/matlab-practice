function [f] = myfun1(x,theta1)
       %x1表示theta2，x2表示s
       l1 = 0.1;
       l2 = 0.33;
       e = 0.02;
       f(1) = l1*sin(theta1) + l2*sin(x(1)) - e;
       f(2) = l1*cos(theta1) + l2*cos(x(1)) - x(2);
 
end

