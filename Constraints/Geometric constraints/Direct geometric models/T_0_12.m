function  T0T12=T_0_12(Q,L)

t1=Q(1);t2=Q(2);t3=Q(3);t4=Q(4);t5=Q(5);t6=Q(6);t8=Q(7);t9=Q(8);
t10=Q(9);t11=Q(10);t12=Q(11);

L1=L(1);L2=L(2);L3=L(3);L4=L(4);L5=L(5);

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
%    Name of file : C:\Users\Toshiba\Desktop\Bibliography\Gait analysis\3D model figures\symoro entry file updated\T_0_12.fgm
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
%   Transformation Matrix From  R 0  to  R  12 :
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
U1T511=cos(t5)*sin(t1) + U1T411*sin(t5);
U1T512=U1T411*cos(t5) - sin(t1)*sin(t5);
U1T521=-(cos(t1)*cos(t5)) + U1T421*sin(t5);
U1T522=U1T421*cos(t5) + cos(t1)*sin(t5);
U1T531=sin(t2 + t3 + t4)*sin(t5);
U1T532=cos(t5)*sin(t2 + t3 + t4);
U8T14=L5*cos(t6);
U8T34=-(L5*sin(t6));
U1T811=U1T511*cos(t6 + t8) - U1T412*sin(t6 + t8);
U1T812=-(U1T412*cos(t6 + t8)) - U1T511*sin(t6 + t8);
U1T814=U1T414 + U1T511*U8T14 + U1T412*U8T34;
U1T821=U1T521*cos(t6 + t8) - U1T422*sin(t6 + t8);
U1T822=-(U1T422*cos(t6 + t8)) - U1T521*sin(t6 + t8);
U1T824=U1T424 + U1T521*U8T14 + U1T422*U8T34;
U1T831=U1T531*cos(t6 + t8) - cos(t2 + t3 + t4)*sin(t6 + t8);
U1T832=-(cos(t2 + t3 + t4)*cos(t6 + t8)) - U1T531*sin(t6 + t8);
U1T834=U1T434 + U1T531*U8T14 + U8T34*cos(t2 + t3 + t4);
U1T911=-(U1T512*cos(t9)) + U1T811*sin(t9);
U1T912=U1T811*cos(t9) + U1T512*sin(t9);
U1T921=-(U1T522*cos(t9)) + U1T821*sin(t9);
U1T922=U1T821*cos(t9) + U1T522*sin(t9);
U1T931=-(U1T532*cos(t9)) + U1T831*sin(t9);
U1T932=U1T831*cos(t9) + U1T532*sin(t9);
U12T14=L4*cos(t10) + L3*cos(t10 + t11);
U12T34=-(L4*sin(t10)) - L3*sin(t10 + t11);
U1T1211=U1T911*cos(t10 + t11 + t12) + U1T812*sin(t10 + t11 + t12);
U1T1212=U1T812*cos(t10 + t11 + t12) - U1T911*sin(t10 + t11 + t12);
U1T1214=-(U12T34*U1T812) + U1T814 + U12T14*U1T911;
U1T1221=U1T921*cos(t10 + t11 + t12) + U1T822*sin(t10 + t11 + t12);
U1T1222=U1T822*cos(t10 + t11 + t12) - U1T921*sin(t10 + t11 + t12);
U1T1224=-(U12T34*U1T822) + U1T824 + U12T14*U1T921;
U1T1231=U1T931*cos(t10 + t11 + t12) + U1T832*sin(t10 + t11 + t12);
U1T1232=U1T832*cos(t10 + t11 + t12) - U1T931*sin(t10 + t11 + t12);
U1T1234=-(U12T34*U1T832) + U1T834 + U12T14*U1T931;
T0T1211 = U1T1211;
T0T1221 = U1T1221;
T0T1231 = U1T1231;
T0T1212 = U1T1212;
T0T1222 = U1T1222;
T0T1232 = U1T1232;
T0T1213 = U1T912;
T0T1223 = U1T922;
T0T1233 = U1T932;
T0T1214 = U1T1214;
T0T1224 = U1T1224;
T0T1234 = U1T1234;
% *=*

T0T12=[T0T1211 T0T1212 T0T1213 T0T1214;
 T0T1221 T0T1222 T0T1223 T0T1224;
 T0T1231 T0T1232 T0T1233 T0T1234];

end