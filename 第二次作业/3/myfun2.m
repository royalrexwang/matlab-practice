function [f] = myfun2(x,theta,theta3)
    %x��ʾ���ٶ�omga
    w1 = 20;
    l1 = 0.06;
    f = x - cos(theta3)*cos(theta3 - theta)*w1/cos(theta);
end

