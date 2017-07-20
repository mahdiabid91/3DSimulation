function fsolve_error = function_solve_MGI(Q,ref,L)
% ,p1,p2,p3,p4,p5,p6,L

% global  p6 p5 p4 p3 p2 p1 L lb_q ub_q
global fsolve_error

p1=ref(1);p2=ref(2);p3=ref(3);p4=ref(4);p5=ref(5);p6=ref(6);

% reference data
Pos_Pelvis_ds=[p1;p2;p3];

Rot_Pelvis=[0,sin(p4),cos(p4);-1,0,0;0,-cos(p4),sin(p4)];

Rot_TST14=[-1,0,0;
            0,-1,0;
            0,0,1]; 
        
Pos_TST14= [0;
            -p5;
            -p6] ;
        


% data from Q
T0T14=T_0_14(Q,L);
P_0_14=T0T14(:,4);
R_0_14=T0T14(1:3,1:3);

T0T7=T_0_7(Q,L);
P_0_7=T0T7(:,4);
R_0_7=T0T7(1:3,1:3);

ep_14=P_0_14-Pos_TST14;
ep_7=P_0_7-Pos_Pelvis_ds;
er_14=R_0_14-Rot_TST14;
er_7=R_0_7-Rot_Pelvis;

% er_14=reshape(er_14,[9,1]);
% er_7=reshape(er_7,[9,1]);

fsolve_error=[ep_14;ep_7;er_14(1,1);er_14(2,2);er_14(3,3);er_7(1,2);er_7(1,3);er_7(2,1)];




% F(19)=1;F(20)=1;
% if Q(3)<=ub_q(3)
%     F(19)=0;
% end
% if Q(3)>=lb_q(3)
%     F(20)=0;
% end




end