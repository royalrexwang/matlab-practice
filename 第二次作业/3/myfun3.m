function [f] = myfun3(x,theta,theta3,w3)
    %½â³ýalpha3
    w1 = 20;
    f = x + cos(theta3)*sin(theta3)*w3 - (cos(2*theta3)*w3 + 0.5*w1*sin(2*theta3)/cos(theta)^2)*w1
end

