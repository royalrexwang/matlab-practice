a = 0:pi/18:2*pi;
b = zeros(37,2);
c = zeros(2,37);
d = zeros(2,37);
E = zeros(2,2);
E(2,2) = 1;
F = zeros(2,1);
G = zeros(2,1);
x0 = [0 0];
 l1 = 0.1;
 l2 = 0.33;
 e = 0.02;
 w1 = 20;
for i = 1:1:37
    %求解角度theta2, 位移s
    x = fsolve(@(x)myfun1(x,a(i)),x0,optimset)
    b(i,:) = x;
    x0 = x;
    E = [ -cos(b(i,1))*l2, 0; l2*sin(b(i,1)), 1]
    F = w1*[l1*cos(a(i)); -l1*sin(a(1))]
    
    %求解速度v
    c(:,i) = mldivide(E,F);%第二行为速度v
    
    %求解加速度a
    G = [-sin(b(i,1))*l2, 0; -l2*cos(b(i,1)), 0]*c(:,i)*c(1,i) - w1*[l1*w1*sin(a(i));l1*w1*cos(a(i))];
    d(:,i) = mldivide(E,G);
    clc;
end
subplot(1,3,1);
plot(a,b(:,2));
xlabel('/theta1');
ylabel('s');
subplot(1,3,2);
plot(a,c(2,:));
xlabel('/theta1');
ylabel('v');
subplot(1,3,3);
plot(a,d(2,:));
xlabel('/theta1');
ylabel('a');



