function  T0T19=T_0_19(Q,L)

t1=Q(1);t2=Q(2);t3=Q(3);t4=Q(4);t5=Q(5);t6=Q(6);
t15=Q(13);t17=Q(14);t18=Q(15);t19=Q(16);

L1=L(1);L2=L(2);L3=L(3);L4=L(4);L5=L(5);L6=L(6);L7=L(7);L8=L(8);L9=L(9);

% t1=0;t2=0;
% t3=0;
% t4=0;
% t5=0;
% t6=0;
% t15=0;
% t17=0;
% t18=0;t19=0;
% 
% L1=1;L2=1;L3=1;
% L4=1;
% L5=1;L6=1;L7=1;L8=1;L9=1;

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
%    Name of file : C:\Users\Toshiba\Desktop\Bibliography\Gait analysis\3D model figures\symoro entry file updated\T_0_19.fgm
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
%   Transformation Matrix From  R 0  to  R  19 :
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
U9T14=(L5*cos(t6))/2.;
U9T24=L6 + L7;
U9T34=-(L5*sin(t6))/2.;
U1T911=U1T511*cos(t15 + t6) - U1T412*sin(t15 + t6);
U1T912=-(U1T412*cos(t15 + t6)) - U1T511*sin(t15 + t6);
U1T914=U1T414 + U1T511*U9T14 + U1T512*U9T24 + U1T412*U9T34;
U1T921=U1T521*cos(t15 + t6) - U1T422*sin(t15 + t6);
U1T922=-(U1T422*cos(t15 + t6)) - U1T521*sin(t15 + t6);
U1T924=U1T424 + U1T521*U9T14 + U1T522*U9T24 + U1T422*U9T34;
U1T931=U1T531*cos(t15 + t6) - cos(t2 + t3 + t4)*sin(t15 + t6);
U1T932=-(cos(t2 + t3 + t4)*cos(t15 + t6)) - U1T531*sin(t15 + t6);
U1T934=U1T434 + U1T531*U9T14 + U1T532*U9T24 + U9T34*cos(t2 + t3 + t4);
U1T1011=U1T512*cos(t17) - U1T911*sin(t17);
U1T1012=-(U1T911*cos(t17)) - U1T512*sin(t17);
U1T1014=-(L8*U1T911) + U1T914;
U1T1021=U1T522*cos(t17) - U1T921*sin(t17);
U1T1022=-(U1T921*cos(t17)) - U1T522*sin(t17);
U1T1024=-(L8*U1T921) + U1T924;
U1T1031=U1T532*cos(t17) - U1T931*sin(t17);
U1T1032=-(U1T931*cos(t17)) - U1T532*sin(t17);
U1T1034=-(L8*U1T931) + U1T934;
U12T14=-(L9*cos(t18));
U12T34=-(L9*sin(t18));
U1T1211=U1T1011*cos(t18 + t19) - U1T912*sin(t18 + t19);
U1T1212=-(U1T912*cos(t18 + t19)) - U1T1011*sin(t18 + t19);
U1T1214=U12T14*U1T1011 + U1T1014 - U12T34*U1T912;
U1T1221=U1T1021*cos(t18 + t19) - U1T922*sin(t18 + t19);
U1T1222=-(U1T922*cos(t18 + t19)) - U1T1021*sin(t18 + t19);
U1T1224=U12T14*U1T1021 + U1T1024 - U12T34*U1T922;
U1T1231=U1T1031*cos(t18 + t19) - U1T932*sin(t18 + t19);
U1T1232=-(U1T932*cos(t18 + t19)) - U1T1031*sin(t18 + t19);
U1T1234=U12T14*U1T1031 + U1T1034 - U12T34*U1T932;
T0T1911 = U1T1211;
T0T1921 = U1T1221;
T0T1931 = U1T1231;
T0T1912 = U1T1212;
T0T1922 = U1T1222;
T0T1932 = U1T1232;
T0T1913 = -U1T1012;
T0T1923 = -U1T1022;
T0T1933 = -U1T1032;
T0T1914 = U1T1214;
T0T1924 = U1T1224;
T0T1934 = U1T1234;
% *=*
T0T19=[T0T1911 T0T1912 T0T1913 T0T1914;
 T0T1921 T0T1922 T0T1923 T0T1924;
 T0T1931 T0T1932 T0T1933 T0T1934];

end