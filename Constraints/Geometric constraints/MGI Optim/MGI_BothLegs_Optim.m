function [St,F_error_val]=MGI_BothLegs_Optim(Pos_Pelvis,p_4,p_5,p_6,L)

global lb_q ub_q
global Pos_Pelvis_ds Rot_Pelvis Pos_TST14 Rot_TST14

Pos_Pelvis_ds=Pos_Pelvis;

Rot_TST14=[-1,0,0;
            0,-1,0;
            0,0,1]; 
        
Pos_TST14= [0;
            -p_5;
            -p_6] ;
        
Rot_Pelvis=[0,sin(p_4),cos(p_4);-1,0,0;0,-cos(p_4),sin(p_4)];

% Optim options
A=[];
B=[];
Aeq=[];
beq=[];
% Constraints=[];

Q_loc_i=zeros(12,1);

 options = optimset('Display','None','MaxFunEvals',20000,'MaxIter',2000,'TolCon',1e-6 ,'TolX',1e-6,'TolFun',0);  %  ,'MeritFunction','singleobj'interior-point,'Algorithm','sqp'

 [St,F_error_val,EXITFLAG,output,lambda,grad] = fmincon('cost_function_MGI',...
     Q_loc_i,A,B,Aeq,beq,lb_q(1:12),ub_q(1:12),'Constraints_MGI',options);
 
%  output.message
 


end