%x1Îª¾àÀëXc
%x2Îª½Ç¶Ètheta2

function [f] = myfun1( x, theta)

        theta = theta*(pi/18);
        l(1) = 0.3;
        l(2) = 1;
        f(1) = l(1)*sin(theta) + l(2)*sin(x(2));
        f(2) = x(1) - l(1)*cos(theta) - l(2)*cos(x(2));
        
end

