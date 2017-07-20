%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%
% Optimal trajectory calculation
%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

clear all
close all
% clc

global Lt L1 L2 L3 L4 L5 L6 L7 L8 L9 L10 L11 Lp lp L
global M1 M3 M4 M11 M12 M14 M15 M16 M19 M20 M23 M24 M25 Mt
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
Vitesse_marche = 5.8/3.6;
Vitesse_min=0.4; Vitesse_max=1.6; Vitesse_range=Vitesse_max-Vitesse_min;



%% Initialisation of the optimization parameters 

define_biomechanical_limits;
define_dimensions;
define_masses;
define_COMs;
define_inertias;
define_initial_OP;
define_joint_parameters;

%% options de fmincon 
% %'DiffMinChange',1e-4,
% %'MaxSQPIter', Miter,
% options = optimset('MaxIter',300,'MaxFunEvals',100000,'Algorithm','sqp',...
%                    'Display','iter-detailed','TolCon',1e-6,...
%                    'TolX',1e-08,'Tolfun',1e-12);%,    
% A_opti=[];
% B_opti=[];
% Aeq_opti=[];
% beq_opti=[];
% 
% %% Lancement du processus d'optimisation
% % 
% % % % 
%  [OP,fval,exitflag,output] = fmincon('Compute_trajectory_3Dbiped',...
%   OPi,A_opti,B_opti,Aeq_opti,beq_opti,lb_OP,...
%   ub_OP,'Constraints_3Dbiped',options);
% 
% output.message

%% outfun optim init
fval_tolerance=6;
fval_vector=zeros(fval_tolerance,1);
fval_iteration=-1;

% Optim options from 2D code
A_opti=[];
B_opti=[];
Aeq_opti=[];
beq_opti=[];
% A=[];a=[];B=[];Aeq=[];Beq=[];
% goal=1;
% weight=abs(goal);
% options = optimset('Display','iter-detailed','MaxFunEvals',100000,'MaxIter',1800,'TolCon',1e-6 ,'TolX',1e-6,'TolFun',1e-6);  %  ,'MeritFunction','singleobj'
% [Optim_Parameters,Fval,flag] = fgoalattain('Hydroid_Trajec',initial_cond,goal,weight,A,B,Aeq,Beq,Ulb,Uub,'Hydroid_constraints', options);
%  options = optimset('Display','iter-detailed','MaxFunEvals',100000,'MaxIter',1800,'TolCon',1e-4 ,'TolX',1e-4,'TolFun',1e-4,'Algorithm','active-set'); 
 options = optimset('Display','iter-detailed','MaxFunEvals',100000,'MaxIter',1000,'TolCon',1e-6 ,'TolX',1e-6,'TolFun',0,'OutputFcn',@outfunoptim);  %  ,'MeritFunction','singleobj'
% options = optimset('Display','iter-detailed','MaxFunEvals',100000,'MaxIter',1800,'TolCon',1e-4 ,'TolX',1e-4,'TolFun',1e-4,'PlotFcns',@optimplotx);  %  ,'MeritFunction','singleobj'
 [OP,Fval,EXITFLAG,output,lambda,grad] = fmincon('Compute_trajectory_3Dbiped',...
     OPi,A_opti,B_opti,Aeq_opti,beq_opti,lb_OP,ub_OP,'Constraints_3Dbiped',options);
 
 output.message
 
%%

contr = Constraints_3Dbiped(OP);length(contr)
length(find(contr>0))

%% Calcul données

% trajectory=polynomial(coefficients, T, 10);
% 
% Temps=trajectory.time;
% Q=trajectory.q;
% Qp=trajectory.qp;
% Qpp=trajectory.qpp;
% 
% % centre de pression
% 
% F = zeros(3,31);
% M = zeros(3,31);
% OVDotO=F;OWDotO=F;OWO=F;
% 
% [F_foot, M_foot, GAMMA, ZMP]=Def3Dbiped_dyn_f_ss(Q, Qp, Qpp,OVDotO,OWDotO,OWO, F, M, -9.81);

%% display main data

display_main_data;