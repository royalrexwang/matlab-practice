clc;clear;
a = zeros(37,1);
b = zeros(37,1);
c = zeros(37,1);
d = zeros(37,1);
a = 0:pi/18:2*pi;
x1 = 0;
x2 = 0;
x3 = 0;
for i = 1:1:37
    if i == 10
        b(i) = 0.18;
    elseif i == 28
        b(i) == 0.06;
    end
        x = fsolve(@myfun1,x1,optimset,a(i));
        b(i) = x;
        x1 = x;
        x = fsolve(@myfun2,x2,optimset,a(i),b(i));
        c(i) = x;
        x2 = x;
        x = fsolve(@myfun3,x3,optimset,a(i),b(i),c(i));
        d(i) = x;
        x3 = x;
        clc;
end
subplot(3,1,1);
plot(a,b);
xlabel('theta1');
ylabel('theta3');
subplot(3,1,2);
plot(a,c);
xlabel('theta1');
ylabel('omga3');
subplot(3,1,3);
plot(a,d);
xlabel('theta1');
ylabel('alpha3');
