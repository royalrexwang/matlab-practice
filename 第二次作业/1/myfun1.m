function [f] = myfun1(x,theta)
    l(1) = 0.1;
    l(2) = 0.2;
    l(3) = 0.22;
    l(4) = 0.3;
    f(1) = l(1)*cos(theta) + l(2)*cos(x(1)) - l(3)*cos(x(2));
    f(2) = l(1)*sin(theta) + l(2)*sin(x(1)) - l(3)*sin(x(2));

end

