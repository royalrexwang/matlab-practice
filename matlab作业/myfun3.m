%omg Ϊ���ٶ�2
%k1 ��ʾAc ,k2 ��ʾa2 
%dtheta,etheta �ֱ��ʾ�Ƕ�1,2
function [f] = myfun3(k,dtheta,etheta,omg)

        l(1) = 0.3;
        l(2) = 1;
        w(1) = 2*pi;
        theta(1) = dtheta;
        theta(2) = etheta;
        %k1 ��ʾAc ,k2 ��ʾa2 
        f(1) = k(1)*cos(theta(2)) + l(1)*w(1)^2*cos(theta(1) - theta(2))+l(2)*omg^2;
        f(2) = l(2)*k(2)*cos(theta(2)) - l(1)*w(1)^2*sin(theta(1)) - l(2)*omg^2*sin(theta(2));

end

