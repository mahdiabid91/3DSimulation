%% Define Torque, velocity and position limits constraints

global degree
global Torque_max qp_max lb_q ub_q

degree=pi/180;

Torque_max=1*[212;212;350;500;200;200;200;200;500;350;212;212;150;50;50;50;50;50;50];
qp_max = 10*[200;300;200;250;150;150;  150;150;250;200;300;200;  100;  100;180;300;  100;180;300].*degree;
lb_q = -[15;45;70;25;10;30;  30;10;45;-0.5;40;15;  20;  5;12;50;   1; 12;50].*degree; %position constraints to be followed during swing
ub_q =  [15;40;-0.5;45;5;30;    30;5;25;70;45;15;  20;  1; 30;-15;  5;30;-15].*degree; %position constraints to be followed during swing