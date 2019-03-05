
%dtheta = zeros(1,2);
function [f] = myfun2( v, dtheta, etheta)


        l(1) = 0.3;
        l(2) = 1;
        w(1) = 2*pi;
        theta(1) = dtheta;
        theta(2) = etheta;
        %v1 表示vc,v2 表示w2
        f(1) = v(1)*cos(theta(2)) + l(1)*v(2)*sin(theta(1) - theta(2));
        f(2) = l(1)*w(1)*cos(theta(1)) + l(2)*v(2)*cos(theta(2));
    
    
end

