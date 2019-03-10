function [f] = myfun2(x,theta,the)
    l(1) = 0.1;
    l(2) = 0.2;
    l(3) = 0.22;
    l(4) = 0.3;
    f(1) = -l(1)*sin(theta) + l(2)*sin(the(1))*x(1) + l(3)*sin(the(2))*x(2);
    f(2) = l(1)*cos(theta)*x(1) + l(2)*cos(the(1))*x(1) + l(3)*cos(the(2))*x(2);

end

