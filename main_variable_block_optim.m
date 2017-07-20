%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%
% Optimal trajectory calculation
%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

clear all
close all
clc

global Lt L1 L2 L3 L4 L5 L6 L7 L8 L9 L10 L11 Lp lp L
global M1 M3 M4 M11 M12 M14 M15 M16 M19 M20 M23 M24 M25
global MX1 MX3 MX4 MX11 MX12 MX14 MX15 MX16 MX19 MX20 MX23 MX24 MX25
global MY1 MY3 MY4 MY11 MY12 MY14 MY15 MY16 MY19 MY20 MY23 MY24 MY25
global MZ1 MZ3 MZ4 MZ11 MZ12 MZ14 MZ15 MZ16 MZ19 MZ20 MZ23 MZ24 MZ25
global XX1 XX3 XX4 XX11 XX12 XX14 XX15 XX16 XX19 XX20 XX23 XX24 XX25
global YY1 YY3 YY4 YY11 YY12 YY14 YY15 YY16 YY19 YY20 YY23 YY24 YY25
global ZZ1 ZZ3 ZZ4 ZZ11 ZZ12 ZZ14 ZZ15 ZZ16 ZZ19 ZZ20 ZZ23 ZZ24 ZZ25
global M_j MI_j COM_j ant_j index_massjoint

global Vitesse_marche  Vitesse_min Vitesse_max Vitesse_range
global degree precision nsamples G mu epsilon
global Torque_max qp_max lb_q ub_q
global Impact_forces G
global F_foot M_foot GAMMA ZMP Q Qp Qpp Temps T p6 OP
global Ct Cm
global fval_vector fval_tolerance fval_iteration
global coefficients
global OPi lb_OP ub_OP range_OP
global COM_pos COMj_pos COMj_vel COMj_acc COM_vel COM_acc YM

%% vitesse de dï¿½placement souhaitï¿½e
Vitesse_marche = 1.6;
Vitesse_min=0.4; Vitesse_max=1.6; Vitesse_range=Vitesse_max-Vitesse_min;



%% Initialisation of the optimization parameters 

define_biomechanical_limits;
define_dimensions;
define_masses;
define_COMs;
define_inertias;
define_initial_OP;
define_joint_parameters;

%% Optim options from 2D code
A_opti=[];
B_opti=[];
Aeq_opti=[];
beq_opti=[];
fval_tolerance=6;

options = optimset('Display','iter-detailed','MaxFunEvals',100000,'MaxIter',1000,'TolCon',1e-6 ,'TolX',1e-6,'TolFun',0,'OutputFcn',@outfunoptim);  

%% Variable block optimisation

N=10;
OP_matrix=zeros(69,(N+1)*3);

% block indexes

ind_bloc1=[1:12 , 20:31 , 58:60 , 62 , 63];
ind_bloc2=[13:19 , 32:38 , 61 , 64:69];
ind_bloc3=[39:57];

for iter=1:N+1

   

%%%%%%%%%%%%%%%%%%%%% optimze first block %%%%%%%%%%%%%%%%%%%%%
display(['iteration #' num2str(iter) ' ---- sub_iteration #1'])

range_b=zeros(69,1);
for j=1:69

if (isempty(find(ind_bloc1==j, 1))==0)
    
    range_b(j)=range_OP(j);
    
else range_b(j)=range_OP(j)*(iter-1)/N;
end    
end

% set lower/upper limits
lb=max(lb_OP,OPi-range_b/2);
ub=min(ub_OP,OPi+range_b/2);

% outfun optim init
fval_vector=zeros(fval_tolerance,1);
fval_iteration=-1;

 [OP,Fval,EXITFLAG,output,lambda,grad] = fmincon('Compute_trajectory_3Dbiped',...
     OPi,A_opti,B_opti,Aeq_opti,beq_opti,lb,ub,'Constraints_3Dbiped',options);
 output.message
 %display main data
 display(['Step width : ' num2str(OP(62))])
 display(['Step length : ' num2str(OP(63))])
 display(['Right shoulder range : ' num2str(range(Q(15,:))/degree)])
 display(['Left shoulder range : ' num2str(range(Q(18,:))/degree)])
 display(['Right elbow range : ' num2str(range(Q(16,:))/degree)])
 display(['Left elbow range : ' num2str(range(Q(19,:))/degree)])
 
 OP_matrix(:,3*(iter-1)+1)=OP;
 % set optimized vector as initial vector for next sub iteration
 OPi=OP;
 
 
%%%%%%%%%%%%%%%%%%%%% optimze 2nd block %%%%%%%%%%%%%%%%%%%%%
display(['iteration #' num2str(iter) ' ---- sub_iteration #2'])

range_b=zeros(69,1);
for j=1:69

if (isempty(find(ind_bloc2==j, 1))==0)
    
    range_b(j)=range_OP(j);
    
else range_b(j)=range_OP(j)*(iter-1)/N;
end    
end

% set lower/upper limits
lb=max(lb_OP,OPi-range_b/2);
ub=min(ub_OP,OPi+range_b/2);

% outfun optim init
fval_vector=zeros(fval_tolerance,1);
fval_iteration=-1;

 [OP,Fval,EXITFLAG,output,lambda,grad] = fmincon('Compute_trajectory_3Dbiped',...
     OPi,A_opti,B_opti,Aeq_opti,beq_opti,lb,ub,'Constraints_3Dbiped',options);
 output.message
 %display main data
 display(['Step width : ' num2str(OP(62))])
 display(['Step length : ' num2str(OP(63))])
 display(['Right shoulder range : ' num2str(range(Q(15,:))/degree)])
 display(['Left shoulder range : ' num2str(range(Q(18,:))/degree)])
 display(['Right elbow range : ' num2str(range(Q(16,:))/degree)])
 display(['Left elbow range : ' num2str(range(Q(19,:))/degree)])
 
 OP_matrix(:,3*(iter-1)+2)=OP;
 % set optimized vector as initial vector for next sub iteration
 OPi=OP;
 
 
%%%%%%%%%%%%%%%%%%%%% optimze 3rd block %%%%%%%%%%%%%%%%%%%%%
display(['iteration #' num2str(iter) ' ---- sub_iteration #3'])

range_b=zeros(69,1);
for j=1:69

if (isempty(find(ind_bloc3==j, 1))==0)
    
    range_b(j)=range_OP(j);
    
else range_b(j)=range_OP(j)*(iter-1)/N;
end    
end

% set lower/upper limits
lb=max(lb_OP,OPi-range_b/2);
ub=min(ub_OP,OPi+range_b/2);

% outfun optim init
fval_vector=zeros(fval_tolerance,1);
fval_iteration=-1;

 [OP,Fval,EXITFLAG,output,lambda,grad] = fmincon('Compute_trajectory_3Dbiped',...
     OPi,A_opti,B_opti,Aeq_opti,beq_opti,lb,ub,'Constraints_3Dbiped',options);
 output.message
 %display main dataabs()
 display(['Step width : ' num2str(OP(62))])
 display(['Step length : ' num2str(OP(63))])
 display(['Right shoulder range : ' num2str(range(Q(15,:))/degree)])
 display(['Left shoulder range : ' num2str(range(Q(18,:))/degree)])
 display(['Right elbow range : ' num2str(range(Q(16,:))/degree)])
 display(['Left elbow range : ' num2str(range(Q(19,:))/degree)])
 
 OP_matrix(:,3*(iter-1)+3)=OP;
 % set optimized vector as initial vector for next sub iteration
 OPi=OP;
 
 
 
 
end
 
 
 
%% constraints verification

contr = Constraints_3Dbiped(OP);length(contr)
length(find(contr>0))

%% Calcul données

trajectory=polynomial(coefficients, T, 10);

Temps=trajectory.time;
Q=trajectory.q;
Qp=trajectory.qp;
Qpp=trajectory.qpp;

% centre de pression

F = zeros(3,31);
M = zeros(3,31);
OVDotO=F;OWDotO=F;OWO=F;

[F_foot, M_foot, GAMMA, ZMP]=Def3Dbiped_dyn_f_ss(Q, Qp, Qpp,OVDotO,OWDotO,OWO, F, M, -9.81);

%% display main data

display_main_data;