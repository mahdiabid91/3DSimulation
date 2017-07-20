global Lt L1 L2 L3 L4 L5 L6 L7 L8 L9 L10 L11 Lp lp L
global degree precision nsamples G mu epsilon
global lb_q ub_q qp_max
global Vitesse_marche Vitesse_min Vitesse_max Vitesse_range
global OPi lb_OP ub_OP range_OP

precision=5;
nsamples=3 * precision + 1;
G=[-9.81;0;0];
mu = 0.45;
epsilon = 0.05;

% lb_q = -[15;45;80;25;10;30;30;10;45;-2;40;15;20;40;10;50;15;10;50].*degree; %position constraints to be followed during swing
% ub_q =  [15;40;-2;45;5;30;30;5;25;80;45;15;20;15;25;-15;40;25;-15].*degree; %position constraints to be followed during swing


%% qp_T          OPi(39:57)

qp_T = 0*ones(19,1); 
% qp_T_min = -[200;300;200;250;150;150;150;150;250;200;300;200;100;150;300;300;150;300;300].*degree;
% qp_T_max = [200;300;200;250;150;150;150;150;250;200;300;200;100;150;300;300;150;300;300].*degree;
qp_T_min = -qp_max;
qp_T_max = qp_max;

%% p_DS  (12 params)        OPi(58:69)

% height of pelvis (58)
p1i=L2+L3+L4-0.08; p1i_min=L2+L3+L4-0.18; p1i_max=L2+L3+L4-0.05-0.05*(Vitesse_marche-Vitesse_min)/Vitesse_range;
% p1i_min=L2+L3+L4-0.18; p1i_max=L2+L3+L4-0.05;
% p1i=p1i_max-(p1i_max-p1i_min)*(Vitesse_marche-Vitesse_min)/Vitesse_range;

% pelvis angular pos (61)
p4i=0; p4i_min=0*degree; p4i_max=4*degree;
% step width (62)p
p5i_min=0.08; p5i_max=0.12; p5i=0.10;
% p5i=p5i_max-(p5i_max-p5i_min)*(Vitesse_marche-Vitesse_min)/Vitesse_range;
% step length (63)
% p6i_min=0.4; p6i_max=0.9; p6i=p6i_min+(p6i_max-p6i_min)*(Vitesse_marche-Vitesse_min)/Vitesse_range;
p6i_min=0.72; p6i_max=0.785; p6i=p6i_min+(p6i_max-p6i_min)*(Vitesse_marche-Vitesse_min)/Vitesse_range;
% p6i=p6i_min+(p6i_max-p6i_min)*(Vitesse_marche-Vitesse_min)/Vitesse_range;

% y(hip) wrt Rs (59)
p2i=-p5i/2; p2i_min=-p5i_max/2; p2i_max=-p5i_min/2;
% z(hip) wrt Rs (60)
p3i=-p6i/2-L1; p3i_min=-p6i_max/2-L1; p3i_max=-p6i_min/2-L1;

% Hands config in DS / min=lb_hand, max=ub_hand
% (p7,p8,p9) for right arm
p7i=0; 
% p8i=0; p9i=0;
p8i=24*degree; %backward
p9i=-20*degree;
% (p10,p11,p12) for left arm
p10i=0; 
% p11i=0; p12i=0;
p11i=-8*degree; %forward
p12i=-40*degree;

Q_upper_0_min = [ lb_q(14)   ;    0.*degree    ;      lb_q(16)   ;  lb_q(17) ;    lb_q(18) ; lb_q(19)  ];
% Q_upper_0_min = [ lb_q(14)   ;    lb_q(15)    ;      lb_q(16)   ;  lb_q(17) ;    lb_q(18) ; lb_q(19)  ];
Q_upper_0_max = [ ub_q(14)   ;    ub_q(15) ;  ub_q(16) ;    ub_q(17)  ;   -0.*degree  ;       ub_q(19)  ];
% Q_upper_0_max = [ ub_q(14)   ;    ub_q(15) ;  ub_q(16) ;    ub_q(17)  ;   ub_q(18)  ;       ub_q(19)  ];

% p8i=p8i/2;p9i=p9i/2;p11i=p11i/2;p12i=p12i/2;

%% step duration T          OP(70)
% Ti=0.5; Ti_min=0.4; Ti_max=0.9;

%% q_int_1       OPi(1:19)

% stance foot: right foot
[St1,TST7_1]=MGI_RightLeg([p1i+0.02;p2i;p3i+p6i/3],p4i,L);
%  St1/degree

% swing foot: left foot
% Sw1=[0;0;10;50;3;0]*degree;
% teta_L=pi/6;
teta_L=0*pi/18;

TST14_1= [-cos(teta_L),0,-sin(teta_L),0.04;
            0,-1,0,-p5i;
            -sin(teta_L),0,cos(teta_L),-p6i/3;
            0,0,0,1]; 
T14T7_1=TST14_1\TST7_1;

TfT14_1 =[ -1     0     0     0;
          0    -1     0     0;
          0     0     1     0;
          0     0     0     1];
      
TfT7_1=TfT14_1*T14T7_1;

TfT7_1(2,4)=-TfT7_1(2,4);

S2p_1=solve_MGI(TfT7_1,L);

Sw1=[S2p_1(6);S2p_1(5);-S2p_1(4);-S2p_1(3);-S2p_1(2);S2p_1(1)];
%  Sw1/degree
%  
% T_0_14([St1,Sw1],L)

Q_loc_1_min = [ lb_q(1);lb_q(2);-20*degree;lb_q(4);lb_q(5);lb_q(6);  lb_q(7);lb_q(8);lb_q(9);50*degree;lb_q(11);lb_q(12)];
% Q_loc_1_min = [ lb_q(1);lb_q(2);lb_q(3);lb_q(4);lb_q(5);lb_q(6);  lb_q(7);lb_q(8);lb_q(9);lb_q(10);lb_q(11);lb_q(12)];

Q_loc_1_max = [ ub_q(1);ub_q(2);-5*degree;ub_q(4);ub_q(5);ub_q(6);   ub_q(7);ub_q(8);ub_q(9);ub_q(10)  ;ub_q(11);ub_q(12)];
% Q_loc_1_max = [ ub_q(1);ub_q(2);ub_q(3);ub_q(4);ub_q(5);ub_q(6);   ub_q(7);ub_q(8);ub_q(9);ub_q(10)  ;ub_q(11);ub_q(12)];

% upper limbs configuration
upper_t1=[0;8;-25;0;7;-26]*degree;

Q_upper_1_min = [ lb_q(14)   ;    0.*degree        ;  lb_q(16)  ;   lb_q(17) ;    lb_q(18)     ;     lb_q(19)  ];
% Q_upper_1_min = [ lb_q(14)   ;    lb_q(15)        ;  lb_q(16)  ;   lb_q(17) ;    lb_q(18)     ;     lb_q(19)  ];

Q_upper_1_max = [ ub_q(14)   ;    ub_q(15)   ;      ub_q(16)   ;  ub_q(17) ;    ub_q(18)     ;    ub_q(19) ];
% upper_t1=[0;0;0;0;0;0]*degree;


%% q_int_2       OPi(20:38)

% stance foot: right foot
[St2,TST7_2]=MGI_RightLeg([p1i+0.02;p2i;p3i+2*p6i/3],p4i,L);
%  St2/degree

% swing foot: left foot
% teta_L=pi/18;
teta_L=0;

TST14_2= [-cos(teta_L),0,-sin(teta_L),0.03;
            0,-1,0,-p5i;
            -sin(teta_L),0,cos(teta_L),p6i/3;
            0,0,0,1]; 
T14T7_2=TST14_2\TST7_2;

TfT14_2 =[ -1     0     0     0;
          0    -1     0     0;
          0     0     1     0;
          0     0     0     1];
      
TfT7_2=TfT14_2*T14T7_2;

TfT7_2(2,4)=-TfT7_2(2,4);

S2p_2=solve_MGI(TfT7_2,L);

Sw2=[S2p_2(6);S2p_2(5);-S2p_2(4);-S2p_2(3);-S2p_2(2);S2p_2(1)];
%  Sw2/degree
% T_0_14([St2,Sw2],L)

Q_loc_2_min = [ lb_q(1);lb_q(2);-10*degree;lb_q(4);lb_q(5);lb_q(6);  lb_q(7);lb_q(8);lb_q(9);12*degree;lb_q(11);lb_q(12)];
% Q_loc_2_min = [ lb_q(1);lb_q(2);lb_q(3);lb_q(4);lb_q(5);lb_q(6);  lb_q(7);lb_q(8);lb_q(9);lb_q(10);lb_q(11);lb_q(12)];

Q_loc_2_max = [ ub_q(1);ub_q(2);ub_q(3)   ;ub_q(4);ub_q(5);ub_q(6);  ub_q(7);ub_q(8);ub_q(9);32*degree;ub_q(11);ub_q(12)];
% Q_loc_2_max = [ ub_q(1);ub_q(2);ub_q(3);ub_q(4);ub_q(5);ub_q(6);   ub_q(7);ub_q(8);ub_q(9);ub_q(10)  ;ub_q(11);ub_q(12)];

% upper limbs configuration
upper_t2=[0;-3;-38;0;16;-22]*degree;

Q_upper_2_min = [ lb_q(14)    ;   lb_q(15)     ;   lb_q(16)   ;  lb_q(17)    ; 0.*degree      ;  lb_q(19)  ];
% Q_upper_2_min = [ lb_q(14)    ;   lb_q(15)     ;   lb_q(16)   ;  lb_q(17)    ; lb_q(18)      ;  lb_q(19)  ];

Q_upper_2_max = [ ub_q(14)    ;   ub_q(15)    ;     ub_q(16) ;    ub_q(17)  ;   ub_q(18)    ;   ub_q(19)  ];
% Q_upper_2_max = [ ub_q(14)    ;   ub_q(15)    ;     ub_q(16) ;    ub_q(17)  ;   ub_q(18)    ;   ub_q(19)  ];

% upper_t2=[0;0;0;0;0;0]*degree;

%% Declare initial OP

OPi=[St1;Sw1;0;upper_t1;St2;Sw2;0;upper_t2;qp_T;p1i;p2i;p3i;p4i;p5i;p6i;p7i;p8i;p9i;p10i;p11i;p12i];
lb_OP=[Q_loc_1_min;lb_q(13);Q_upper_1_min;Q_loc_2_min;lb_q(13);Q_upper_2_min;qp_T_min;p1i_min;p2i_min;p3i_min;p4i_min;p5i_min;p6i_min;Q_upper_0_min];
ub_OP=[Q_loc_1_max;ub_q(13);Q_upper_1_max;Q_loc_2_max;ub_q(13);Q_upper_2_max;qp_T_max;p1i_max;p2i_max;p3i_max;p4i_max;p5i_max;p6i_max;Q_upper_0_max];

range_OP=ub_OP-lb_OP;


%% test if OPi is between the bounds

var=OPi-lb_OP;
find(var<0)
var2=OPi-ub_OP;
find(var2>0)