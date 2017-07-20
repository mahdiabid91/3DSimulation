function  T0Tlrf=T_0_lrf(Q,L)

Lp=L(12);lp=L(13);

% left rear foot
P_lrf = [0;lp/2;-Lp]; % wrt frame 14
T14Tlrf = [eye(3),P_lrf;0,0,0,1];
T0T14=T_0_14(Q,L);
T0Tlrf = T0T14 * T14Tlrf;

end