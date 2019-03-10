function [f] = myfun1(x,theta)
    %½è³öÈ¥theta3
    l1 = 0.06;
    l4 = 0.12;
    f = l4/(l1*cos(theta)) + tan(theta) - tan(x);
end

