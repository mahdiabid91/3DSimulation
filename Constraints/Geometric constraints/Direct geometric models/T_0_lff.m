function  T0Tlff=T_0_lff(Q,L)

lp=L(13);

% left front foot
P_lff = [0;lp/2;0]; % wrt frame 14
T14Tlff = [eye(3),P_lff;0,0,0,1];
T0T14=T_0_14(Q,L);
T0Tlff = T0T14 * T14Tlff;

end