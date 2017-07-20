function  T0T3=T_0_3(Q,L)

t1=Q(1);t2=Q(2);t3=Q(3);

L1=L(1);L2=L(2);L3=L(3);

% (********************************************)
% (** SYMORO+ : SYmbolic MOdelling of RObots **)
% (**========================================**)
% (**      IRCCyN-ECN - 1, rue de la Noe     **)
% (**      B.P.92101                         **)
% (**      44321 Nantes cedex 3, FRANCE      **)
% (**      www.irccyn.ec-nantes.fr           **)
% (********************************************)
% 
% 
%    Name of file : C:\Users\Toshiba\Desktop\Bibliography\Gait analysis\3D model figures\symoro entry file updated\T_0_3.fgm
% 
% 
% 
% 
%      Geometric parameters   
% 
% 
% j        ant      mu       sigma    gamma    b        alpha    d        theta    r
% 
% 
% 1        0        1        0        0        0        0        L2       t1       -L1
% 
%                                                       Pi
% 2        1        1        0        0        0        --       0        t2       0
%                                                       2
% 
% 3        2        1        0        0        0        0        L3       t3       0
% 
% 
% 4        3        1        0        0        0        0        L4       t4       0
% 
%                                                       -Pi               -Pi
% 5        4        1        0        0        0        ---      0        --- + t5 0
%                                                        2                 2
%                                                       -Pi
% 6        5        1        0        0        0        ---      0        t6       0
%                                                        2
%                                                                L5
% 7        6        0        2        0        0        0        --       0        0
%                                                                2
%                                                                L5
% 8        7        1        0        0        0        0        --       t8       0
%                                                                2
%                                                       Pi                -Pi
% 9        8        1        0        0        0        --       0        --- + t9 0
%                                                       2                  2
%                                                       -Pi
% 10       9        1        0        0        0        ---      0        t10      0
%                                                        2
% 
% 11       10       1        0        0        0        0        L4       t11      0
% 
% 
% 12       11       1        0        0        0        0        L3       t12      0
% 
%                                                       Pi
% 13       12       1        0        0        0        --       0        t13      0
%                                                       2
% 
% 14       13       0        2        0        0        0        L2       0        L1
% 
% 
% 15       7        1        0        0        0        0        0        t15      L6
% 
% 
% 16       15       0        2        0        0        0        0        0        L7
% 
%                                                       Pi                Pi
% 17       16       1        0        0        0        --       -L8      -- + t17 0
%                                                       2                 2
%                                                       Pi
% 18       17       1        0        0        0        --       0        t18      0
%                                                       2
% 
% 19       18       1        0        0        0        0        -L9      t19      0
% 
% 
% 20       19       0        2        0        0        0        -L10     0        0
% 
%                                                       Pi                Pi
% 21       16       1        0        0        0        --       L8       -- + t21 0
%                                                       2                 2
%                                                       Pi
% 22       21       1        0        0        0        --       0        t22      0
%                                                       2
% 
% 23       22       1        0        0        0        0        -L9      t23      0
% 
% 
% 24       23       0        2        0        0        0        -L10     0        0
% 
% 
% 25       16       0        2        0        0        0        0        0        L11
% 
% 
% 
% 
%   Transformation Matrix From  R 0  to  R  3 :
% -------------------------------------------
% Equations:
U3T14=L3*cos(t2);
U3T34=L3*sin(t2);
U1T311=cos(t1)*cos(t2 + t3);
U1T312=-(cos(t1)*sin(t2 + t3));
U1T314=L2 + U3T14*cos(t1);
U1T321=cos(t2 + t3)*sin(t1);
U1T322=-(sin(t1)*sin(t2 + t3));
U1T324=U3T14*sin(t1);
U1T334=-L1 + U3T34;
T0T311 = U1T311;
T0T321 = U1T321;
T0T331 = sin(t2 + t3);
T0T312 = U1T312;
T0T322 = U1T322;
T0T332 = cos(t2 + t3);
T0T313 = sin(t1);
T0T323 = -cos(t1);
T0T333 = 0;
T0T314 = U1T314;
T0T324 = U1T324;
T0T334 = U1T334;
% *=*

T0T3=[T0T311 T0T312 T0T313 T0T314;
 T0T321 T0T322 T0T323 T0T324;
 T0T331 T0T332 T0T333 T0T334];

end
