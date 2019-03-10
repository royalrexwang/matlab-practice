function [f] = myfun1(x,theta)
    l(1) = 0.1;
    l(2) = 0.33;
    e = 0.02;
    f(1) = l(1)*cos(theta) - l(2)*cos(x(2)) - x(1);
    f(2) = l(1)*sin(theta) - e - l(2)*sin(x(2));
end

