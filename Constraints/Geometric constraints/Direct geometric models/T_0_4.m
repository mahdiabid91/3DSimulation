function  T0T4=T_0_4(Q,L)

t1=Q(1);t2=Q(2);t3=Q(3);t4=Q(4);

L1=L(1);L2=L(2);L3=L(3);L4=L(4);

% t1=0;t2=0;
% t3=0;
% t4=0;
% 
% L1=1;L2=1;L3=1;
% L4=1;

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
%    Name of file : C:\Users\Toshiba\Desktop\Bibliography\Gait analysis\3D model figures\symoro entry file updated\T_0_4.fgm
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
%   Transformation Matrix From  R 0  to  R  4 :
% -------------------------------------------
% Equations:
U4T14=L3*cos(t2) + L4*cos(t2 + t3);
U4T34=L3*sin(t2) + L4*sin(t2 + t3);
U1T411=cos(t1)*cos(t2 + t3 + t4);
U1T412=-(cos(t1)*sin(t2 + t3 + t4));
U1T414=L2 + U4T14*cos(t1);
U1T421=cos(t2 + t3 + t4)*sin(t1);
U1T422=-(sin(t1)*sin(t2 + t3 + t4));
U1T424=U4T14*sin(t1);
U1T434=-L1 + U4T34;
T0T411 = U1T411;
T0T421 = U1T421;
T0T431 = sin(t2 + t3 + t4);
T0T412 = U1T412;
T0T422 = U1T422;
T0T432 = cos(t2 + t3 + t4);
T0T413 = sin(t1);
T0T423 = -cos(t1);
T0T433 = 0;
T0T414 = U1T414;
T0T424 = U1T424;
T0T434 = U1T434;
% *=*

T0T4=[T0T411 T0T412 T0T413 T0T414;
 T0T421 T0T422 T0T423 T0T424;
 T0T431 T0T432 T0T433 T0T434];

end
