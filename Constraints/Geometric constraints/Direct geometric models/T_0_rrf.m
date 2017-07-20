function  T0Trrf=T_0_rrf(Q,L)

Lp=L(12);lp=L(13);

% right rear foot
P_rrf = [0;-lp/2;-Lp]; % wrt frame 14
T14Trrf = [eye(3),P_rrf;0,0,0,1];
T0T14=T_0_14(Q,L);
T0Trrf = T0T14 * T14Trrf;

end