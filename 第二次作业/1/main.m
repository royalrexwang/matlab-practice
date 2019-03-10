clc,clear;
a = zeros(37,1);%theta1的角度
b = zeros(37,2);%theta2 和 theta3 的角度
c = zeros(37,2);% omga2 和 omga3 的值
d = zeros(37,2);%alpha2 和 alpha3 的值

a = 0:pi/18:2*pi;
u = [0 1];
v = [0 1];
w = [0 1];
%fsolve反解
for i = 1:1:37
    x1 = fsolve(@myfun1,u,optimset,a(i));
    b(i,:) = x1;
    u = x1;
    x2 = fsolve(@myfun2,v,optimset,a(i),b(i,:));
    c(i,:) = x2;
    v = x2;
    x3 = fsolve(@myfun3,w,optimset,a(i),b(i,:),c(i,:));
    d(i,:) = x3;
    w = x3;
    clc;
end
subplot(1,3,1);
plot(a,b(:,2));
xlabel('theta1');
ylabel('theta3');
subplot(1,3,2)
plot(a,c(:,2));
xlabel('theta1');
ylabel('omga3');
subplot(1,3,3);
plot(a,d(:,2));
xlabel('theta1');
ylabel('alpha3');


