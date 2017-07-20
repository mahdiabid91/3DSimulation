function C=cost_function_MGI(Q)

global Pos_Pelvis_ds Rot_Pelvis Pos_TST14 Rot_TST14 L C2

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

% ep_14=max(abs(ep_14));
% ep_7=max(abs(ep_7));
% er_14=max(max(abs(er_14)));
% er_7=max(max(abs(er_7)));

er_14=reshape(er_14,[9,1]);
er_7=reshape(er_7,[9,1]);

C2=[er_14(1:6);er_7(1:6)];

% C_vect=[ep_14;ep_7];

C_cf=max(ep_14.^2+ep_7.^2)+0*max(C2.^2);

C=C_cf;
end