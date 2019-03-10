a = zeros(37,1);%theta1
b = zeros(37,2);%theta2,x
c = zeros(37,2);%omega2,v
d = zeros(37,2);%alpha2,a
a = 0:pi/18:2*pi;
u = [0 0];
v = [0 0];
w = [0 0];
for i = 1:1:37
    x1 = fsolve(@myfun1,u,optimset,a(i));
    b(i,:) = x1;
    u = x1;
    x2 = fsolve(@myfun2,v,optimset,a(i),b(i,2));
    c(i,:) = x2;
    v = x2;
    x3 = fsolve(@myfun3,w,optimset,a(i),b(i,2),c(i,1));
    d(i,:) = x3;
    w = x3;
    clc;
end
subplot(1,3,1)
plot(a,b(:,2));
subplot(1,3,2);
plot(a,c(:,2));
subplot(1,3,3);
plot(a,d(:,2));