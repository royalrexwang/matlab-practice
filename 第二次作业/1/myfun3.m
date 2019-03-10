function [f] = myfun3(x,theta,the,omga)
    
     l(1) = 0.1;
    l(2) = 0.2;
    l(3) = 0.22;
    l(4) = 0.3;
    omg = 2;
    f(1) = -l(1)*cos(theta)*omg^2 - l(2)*cos(the(1))*omga(1)^2 - l(2)*sin(the(1))*x(1) + l(3)*cos(the(2))*omga(2)^2 + l(2)*sin(the(2))*x(2);
    f(2) = -l(1)*sin(theta)*omg - l(2)*sin(the(1))*omga(1)^2 - l(2)*cos(the(2))*x(1) + l(3)*sin(the(2))*omga(2)^2 - l(3)*cos(the(2))*x(2);
end

