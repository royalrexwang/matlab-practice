function [f] = myfun2(x,theta,the)
    
    l(1) = 0.1;
    l(2) = 0.33;
    e = 0.02;
    omg = 20;
    %x1表示omga2，x2表示速度v
    f(1) = -l(1)*sin(theta)*omg + l(2)*sin(the)*x(1) - x(2);
    f(2) = l(1)*cos(theta)*omg - l(2)*cos(the)*x(1);
end

