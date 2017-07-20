function S = Compute_trajectory_3Dbiped(U)

global Lt L1 L2 L3 L4 L5 L6 L7 L8 L9 L10 L11 Lp lp L
global M1 M3 M4 M11 M12 M14 M15 M16 M19 M20 M23 M24 M25
global MX1 MX3 MX4 MX11 MX12 MX14 MX15 MX16 MX19 MX20 MX23 MX24 MX25
global MY1 MY3 MY4 MY11 MY12 MY14 MY15 MY16 MY19 MY20 MY23 MY24 MY25
global MZ1 MZ3 MZ4 MZ11 MZ12 MZ14 MZ15 MZ16 MZ19 MZ20 MZ23 MZ24 MZ25
global XX1 XX3 XX4 XX11 XX12 XX14 XX15 XX16 XX19 XX20 XX23 XX24 XX25
global YY1 YY3 YY4 YY11 YY12 YY14 YY15 YY16 YY19 YY20 YY23 YY24 YY25
global ZZ1 ZZ3 ZZ4 ZZ11 ZZ12 ZZ14 ZZ15 ZZ16 ZZ19 ZZ20 ZZ23 ZZ24 ZZ25
global Vitesse_marche degree precision nsamples coefficients
global Impact_forces G
global F_foot M_foot GAMMA ZMP Q Qp Qpp Temps T p6 p5 p4 p3 p2 p1
global Ct Cm
global COM_pos COMj_pos COMj_vel COMj_acc COM_vel COM_acc
global error_MGI
global lb_q ub_q

%% extraction des entrees

Q_int_1=U(1:19);
Q_int_2=U(20:38);
Qp_T=U(39:57);
p1=U(58);p2=U(59);p3=U(60);p4=U(61);p5=U(62);p6=U(63);
Q_upper_0=U(64:69);
% T=U(70);
T=p6/Vitesse_marche;

%% Calculation of the initial configuration (Q_0) by MGI 

% Pos_Pelvis_DS=[p1;p2;p3];
% [Q_loc_0,error_MGI]=MGI_BothLegs_Optim(Pos_Pelvis_DS,p4,p5,p6,L);

fsolve_options=optimset('Display','off','Algorithm','Levenberg-Marquardt');

fun=@(o)function_solve_MGI(o,U(58:63),L);
x0=(lb_q(1:12)+ub_q(1:12))/2;
% Q_loc_0=lsqnonlin(fun,x0,lb_q(1:12),ub_q(1:12));
Q_loc_0=fsolve(fun,x0,fsolve_options);

Q_0=[Q_loc_0;0;Q_upper_0];

%% Calculation of the final configuration (Q_T) by swapping the roles 

Q_T =qi_to_qf(Q_0);

%% Calculation of the initial joint velocities (Qp_0) and impact forces (Impact_forces)
%% from final joint velocities (Qp_T) & final joint positions (Q_T)

% [Qp_0,Impact_forces] =qpf_to_qpi_and_Impact(Q_T,Qp_T);
[Qp_0,Impact_forces] =qpf_to_qpi_and_Impact_f(Q_T,Qp_T);

%% Programme qui calcul l'approximation par les splines cubiques des 
%% trajectoires, Pi(t)=ai(t-ti)^3+bi(t-ti)^2+ci(t-ti)+di  pour i=1,2,...,n-1
%% n:nombre de noeuds : 4 ds notre cas

coefficients=poly_coeff(Q_0, Q_int_1, Q_int_2, Q_T, Qp_0, Qp_T, T);

trajectory=polynomial(coefficients, T, precision);

Temps=trajectory.time;
Q=trajectory.q;
Qp=trajectory.qp;
Qpp=trajectory.qpp;

%% calcul des couples, forces et moments de la reaction du sol ainsi que du
%% centre de pression

F = zeros(3,nsamples);
M = zeros(3,nsamples);
OVDotO=F;OWDotO=F;OWO=F;

% [F_foot, M_foot, GAMMA, ZMP]=IDM_3Dbiped(Q, Qp, Qpp, F, M);
[F_foot, M_foot, GAMMA, ZMP]=Def3Dbiped_dyn_f_ss(Q, Qp, Qpp,OVDotO,OWDotO,OWO, F, M, -9.81);

%% calcul du critere 

% calcul de l'orientation du tronc qui est l'orientation de z7 de R7
% et donc P_O16=z7 et P_h=[0;0;0] pour chaque instant

P_h=zeros(3,nsamples);
P_O16=P_h;

for k=1:nsamples

T0T7=T_0_7(Q(:,k),L);
    
P_O16(:,k)=T0T7(:,3);

end

rho_1=0;
rho_2=4;
S=cost_function(GAMMA, M_foot, P_O16, P_h, G, T, p6, Temps, rho_1, rho_2);


%% Computing COM trajectory
step=1;
COM_pos=zeros(3,nsamples);
COMj_pos=zeros(nsamples,3,13);
for j=1:nsamples
[CoM,MS_j]=compute_COM(Q(:,j),step);
COM_pos(:,j)=CoM;
COMj_pos(j,:,:)=MS_j;
end

%%% calculate COM velocity and acceleration
COM_vel=zeros(3,nsamples);
COM_acc=zeros(3,nsamples);
% velocity
for k=1:3 %x,y and z
    COM_vel(k,:)=derive(Temps,COM_pos(k,:));
end
% acceleration
for k=1:3 %x,y and z
    COM_acc(k,:)=derive(Temps,COM_vel(k,:));
end

%%% calculate COMj velocity and acceleration
COMj_vel=zeros(nsamples,3,13);
COMj_acc=zeros(nsamples,3,13);
% velocity
for j=1:13 % mass segment
    for k=1:3 %x,y and z
    COMj_vel(:,k,j)=derive(Temps,COMj_pos(:,k,j));
    end
end
% acceleration
for j=1:13 % mass segment
    for k=1:3 %x,y and z
    COMj_acc(:,k,j)=derive(Temps,COMj_vel(:,k,j));
    end
end


end