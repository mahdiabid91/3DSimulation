global  p6 p5 p4 p3 p2 p1

p1=p1i+0.05;
p2=p2i;p3=p3i+0.08;p4=p4i;p5=p5i;p6=p6i;

ref=[p1;p2;p3;p4;p5;p6];

x0=(lb_q(1:12)+ub_q(1:12))/2;

options=optimset('Display','off','Algorithm','Levenberg-Marquardt');
 
fun=@(o)function_solve_MGI(o,ref,L);
x=fsolve(fun, x0, options);

Q=[x;zeros(7,1)];

find(x<lb_q(1:12))
find(x>ub_q(1:12))