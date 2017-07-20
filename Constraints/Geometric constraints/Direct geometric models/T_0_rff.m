function  T0Trff=T_0_rff(Q,L)

lp=L(13);

% right front foot
P_rff = [0;-lp/2;0]; % wrt frame 14
T14Trff = [eye(3),P_rff;0,0,0,1];
T0T14=T_0_14(Q,L);
T0Trff = T0T14 * T14Trff;

end