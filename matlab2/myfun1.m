function f=myfun1(x,th)
l1=0.3;
l2=1;
f = [l1*sin(th)+l2*sin(x(1));x(2)-l1*cos(th)-l2*cos(x(2))];
                                                                                                                                                      