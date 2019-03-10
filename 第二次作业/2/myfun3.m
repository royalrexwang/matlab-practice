function [f] = myfun3(x,theta,the,omga)
     l(1) = 0.1;
    l(2) = 0.33;
    e = 0.02;
    omg = 20;
    f(1) = -l(1)*cos(theta)*omg^2 + l(2)*sin(the)*omga^2 + l(2)*sin(the)*x(1) - x(2);
    f(2) = -l(1)*sin(theta)*omg^2 + l(2)*sin(the)*omga^2 - l(2)*cos(the)*x(1);
end

