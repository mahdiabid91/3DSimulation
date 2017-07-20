function [c_cons, ceq_cons] =Constraints_3Dbiped(U)

global Lt L1 L2 L3 L4 L5 L6 L7 L8 L9 L10 L11 Lp lp L
global M1 M3 M4 M11 M12 M14 M15 M16 M19 M20 M23 M24 M25 Mt
global MX1 MX3 MX4 MX11 MX12 MX14 MX15 MX16 MX19 MX20 MX23 MX24 MX25
global MY1 MY3 MY4 MY11 MY12 MY14 MY15 MY16 MY19 MY20 MY23 MY24 MY25
global MZ1 MZ3 MZ4 MZ11 MZ12 MZ14 MZ15 MZ16 MZ19 MZ20 MZ23 MZ24 MZ25
global XX1 XX3 XX4 XX11 XX12 XX14 XX15 XX16 XX19 XX20 XX23 XX24 XX25
global YY1 YY3 YY4 YY11 YY12 YY14 YY15 YY16 YY19 YY20 YY23 YY24 YY25
global ZZ1 ZZ3 ZZ4 ZZ11 ZZ12 ZZ14 ZZ15 ZZ16 ZZ19 ZZ20 ZZ23 ZZ24 ZZ25
global Vitesse_marche degree precision nsamples
global Impact_forces G mu
global F_foot M_foot GAMMA ZMP Q Qp Qpp T p6 epsilon

global M_j MI_j COM_j ant_j index_massjoint
global COM_pos COMj_pos COMj_vel COMj_acc COM_vel COM_acc YM
global lb_q ub_q

%% Biomechanical constraints (ndof*nsamples*2)

% C_B=C_biomech(GAMMA,Q,Qp);
C_B=C_biomech(Q);

%  length(C_B)
% size(find(C_B>=0),1)

%% Geometric constraints

C_G=C_geometric(Q,L);
% length(C_G)

%% Stability constraints

% C_V=C_velocity(Vitesse_marche,T,p6,epsilon);

C_Z=C_ZMP(ZMP,Lp,lp);
% length(C_Z)

% contrainte sur les reactions au sol

C_F=zeros(2*nsamples,1);

for k=1:nsamples

C_F((2*k-1):(2*k))=C_forces(F_foot(:,k));

end
% length(C_F)

% contrainte sur la force d'impact

C_I=C_forces(Impact_forces(1:3));

% length(C_I)

%% monotonous arm movements constraints
%                        Indexes
%               t=0       t=T/3       t=2T/3
% R shoulder     65         15          34
% R elbow        66         16          35
% L shoulder     68         18          37
% L elbow        69         19          38

% %right shoulder
% crs1=U(15)-U(65);
% crs2=U(34)-U(15);
% crs3=U(68)-U(34);
% %left shoulder
% cls1=U(68)-U(18);
% cls2=U(18)-U(37);
% cls3=U(37)-U(65);
% 
% %right elbow
% cre1=U(16)-U(66);
% cre2=U(35)-U(16);
% cre3=U(69)-U(35);
% %left elbow
% cle1=U(69)-U(19);
% cle2=U(19)-U(38);
% cle3=U(38)-U(66);
% 
% C_arm=[crs1;crs2;crs3;cls1;cls2;cls3;cre1;cre2;cre3;cle1;cle2;cle3];

%% monotonous arm movements constraints

MS_i=0.25*nsamples;
MS_f=0.75*nsamples;

%right shoulder (q15 decreasing)
crs=diff(Q(15,1:end));
%left shoulder (q18 increasing)
cls=-diff(Q(18,1:end));
%right elbow (q16 decreasing)
cre=diff(Q(16,1:end));
%left elbow (q19 increasing)
cle=-diff(Q(19,1:end));

% % constraint on vel (shoulders)

MSp_i=floor(0.4*nsamples)+1;
MSp_f=floor(0.6*nsamples)+1;

%right shoulder (phase 1 : dq15 decreasing)
cp15_1=diff(Qp(15,1:MSp_i));
%right shoulder (phase 2 : dq15 increasing)
cp15_2=-diff(Qp(15,MSp_f:end));

%right shoulder (phase 1 : dq18 increasing)
cp18_1=-diff(Qp(18,1:MSp_i));
%right shoulder (phase 2 : dq18 decreasing)
cp18_2=diff(Qp(18,MSp_f:end));

% % % constraint on vel (elbows)
% 
% MSe_i=floor(0.2*nsamples)+1;
% MSe=floor(0.5*nsamples);
% MSe_f=floor(0.6*nsamples)+1;
% 
% %right elbow (phase 1 : dq16 decreasing)
% cp16_1=diff(Qp(16,1:MSe));
% %right elbow (phase 2 : dq16 increasing)
% cp16_2=-diff(Qp(16,MSe_f:end));
% 
% %left elbow (phase 1 : dq19 increasing)
% cp19_1=-diff(Qp(19,1:MSe_i));
% %left elbow (phase 2 : dq19 decreasing)
% cp19_2=diff(Qp(19,MSe:end));
% ;cp16_1';cp16_2';cp19_1';cp19_2'

% % constraints on acc
c_acc_14=max(abs(Qpp(14,:)))-10*Vitesse_marche;
c_acc_17=max(abs(Qpp(17,:)))-10*Vitesse_marche;
%35/20 no on 14,17
c_acc_shld1=max(abs(Qpp(15,:)))-15*Vitesse_marche;
c_acc_shld2=max(abs(Qpp(18,:)))-15*Vitesse_marche;

c_acc_elb1=max(abs(Qpp(16,:)))-15*Vitesse_marche;
c_acc_elb2=max(abs(Qpp(19,:)))-15*Vitesse_marche;

% % constraints on shoulder and elbow amplitude
% shoulder_pos=[-Q(15,:),-Q(18,:)]/degree;
% elbow_pos=[-Q(16,:),-Q(19,:)]/degree;

% ca_smax=range(shoulder_pos)-40;
% ca_smin=30-range(shoulder_pos);

% ca_emax=range(elbow_pos)-65;
% ca_emin=26-range(elbow_pos);

C_arm=[crs';cls';cre';cle';cp15_1';cp15_2';cp18_1';cp18_2';c_acc_14;c_acc_17;c_acc_shld1;c_acc_shld2;c_acc_elb1;c_acc_elb2];



%% Zero yawing moment
v_normal=[1;0;0];
YM=zeros(nsamples,1);
for j=1:nsamples %satisfying the ZYM condition for all time samples
    summ=0;

    for k=1:13 % sum on different mass segments
    
        %ZMP position in Rs    
        P_ZMP=[0;ZMP(:,j)];
        %ddx_Gi 
        acc_Gi=COMj_acc(j,:,k);
        %(mi*g-mi*ddx_Gi)
        int_var=M_j(index_massjoint(k))*(G-acc_Gi');
        %(x_DGi)x(mi*g-mi*ddx_Gi)   x_DGi=x_Gi-xD
        x_DGi=COMj_pos(j,:,k)-P_ZMP';
        int_var2=cross(x_DGi',int_var);
        int_var3=dot(int_var2,v_normal);

        summ=summ+int_var3;
        
    end
    YM(j)=summ;
end

%%% Zero Yawing Moment
YM_max=0.1;
ZYM=YM.^2-YM_max^2;

%% Zero yawing moment (based on velocities, paper of Hugh Herr, 2008) 
% v_normal=[1;0;0];
% YM=zeros(nsamples,1);
% for j=1:nsamples %satisfying the ZYM condition for all time samples
%     summ=0;
%     Vel_G=COM_vel(:,j);
%     
%     for k=1:13 % sum on different mass segments
%     
%         %ZMP position in Rs    
%         P_ZMP=[0;ZMP(:,j)];
%         %ddx_Gi 
%         vel_Gi=COMj_vel(j,:,k);
%         
%         %(mi*g-mi*ddx_Gi)
%         int_var=M_j(index_massjoint(k))*(Vel_G-vel_Gi');
%         %(x_DGi)x(mi*g-mi*ddx_Gi)   x_DGi=x_Gi-xD
%         x_DGi=COMj_pos(j,:,k)-P_ZMP';
%         int_var2=cross(x_DGi',int_var);
%         int_var3=dot(int_var2,v_normal);
% 
%         summ=summ+int_var3;
%         
%     end
%     YM(j)=summ;
% end
% 
% %%% Zero Yawing Moment
% YM_max_normalized=0.008;
% N_subject=Mt*Vitesse_marche*Lt;
% YM_max=YM_max_normalized*N_subject;
% ZYM=YM.^2-YM_max^2;

%% constraintts on legs (SS)
%t1
c1_t1=-20*degree-U(3);
c2_t1=U(3)+5*degree;
c3_t1=50*degree-U(10);
%t2
c1_t2=-10*degree-U(22);
c2_t2=U(29)-32*degree;
c3_t2=12*degree-U(29);

c_legs=[c1_t1;c2_t1;c3_t1;c1_t2;c2_t2;c3_t2];

%% avoid bending knees in DS
% t=0: -10<q3<ub_q(3)
%      4<q10<18
% c_q3_t0=-10*degree-Q(3,1);
% c_q10_t0=[4*degree-Q(10,1);Q(10,1)-18*degree];
% c_bending=[c_q3_t0;c_q10_t0];

%% COM_pos continuity

% tolerance=0.5e-4;
% c_comx=(COM_pos(1,1)-COM_pos(1,end))^2-tolerance^2;
% c_comy=(COM_pos(2,1)-COM_pos(2,end))^2-tolerance^2;
% c_com=[c_comx;c_comy];

%% Output


% c_cons=[C_B;C_G;C_F;C_I;C_Z;C_V];
c_cons=[C_B;C_G;C_F;C_I;C_Z;c_legs;C_arm;ZYM];






ceq_cons = [];

end