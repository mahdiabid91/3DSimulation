% (********************************************)
% (** SYMORO+ : SYmbolic MOdelling of RObots **)
% (**========================================**)
% (**      IRCCyN-ECN - 1, rue de la Noe     **)
% (**      B.P.92101                         **)
% (**      44321 Nantes cedex 3, FRANCE      **)
% (**      www.irccyn.ec-nantes.fr           **)
% (********************************************)


%    Name of file : C:\Users\Toshiba\Desktop\Bibliography\Gait analysis\3D model figures\symoro entry file updated\IDM\Def3Dbiped.dyn




%      Geometric parameters   


% j        ant      mu       sigma    gamma    b        alpha    d        theta    r


% 1        0        1        0        0        0        0        L2       t1       -L1

%                                                       Pi
% 2        1        1        0        0        0        --       0        t2       0
%                                                       2

% 3        2        1        0        0        0        0        L3       t3       0


% 4        3        1        0        0        0        0        L4       t4       0

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

% 11       10       1        0        0        0        0        L4       t11      0


% 12       11       1        0        0        0        0        L3       t12      0

%                                                       Pi
% 13       12       1        0        0        0        --       0        t13      0
%                                                       2

% 14       13       0        2        0        0        0        L2       0        L1


% 15       7        1        0        0        0        0        0        t15      L6


% 16       15       0        2        0        0        0        0        0        L7

%                                                       Pi                Pi
% 17       16       1        0        0        0        --       -L8      -- + t17 0
%                                                       2                 2
%                                                       Pi
% 18       17       1        0        0        0        --       0        t18      0
%                                                       2

% 19       18       1        0        0        0        0        -L9      t19      0


% 20       19       0        2        0        0        0        -L10     0        0

%                                                       Pi                Pi
% 21       16       1        0        0        0        --       L8       -- + t21 0
%                                                       2                 2
%                                                       Pi
% 22       21       1        0        0        0        --       0        t22      0
%                                                       2

% 23       22       1        0        0        0        0        -L9      t23      0


% 24       23       0        2        0        0        0        -L10     0        0


% 25       16       0        2        0        0        0        0        0        L11




%              Inertial parameters

% j      XX     XY     XZ     YY     YZ     ZZ     MX     MY     MZ     M      Ia

% 1      XX1    0      0      YY1    0      ZZ1    MX1    MY1    MZ1    M1     0

% 2      0      0      0      0      0      0      0      0      0      0      0

% 3      XX3    0      0      YY3    0      ZZ3    MX3    MY3    MZ3    M3     0

% 4      XX4    0      0      YY4    0      ZZ4    MX4    MY4    MZ4    M4     0

% 5      0      0      0      0      0      0      0      0      0      0      0

% 6      0      0      0      0      0      0      0      0      0      0      0

% 7      0      0      0      0      0      0      0      0      0      0      0

% 8      0      0      0      0      0      0      0      0      0      0      0

% 9      0      0      0      0      0      0      0      0      0      0      0

% 10     0      0      0      0      0      0      0      0      0      0      0

% 11     XX11   0      0      YY11   0      ZZ11   MX11   MY11   MZ11   M11    0

% 12     XX12   0      0      YY12   0      ZZ12   MX12   MY12   MZ12   M12    0

% 13     0      0      0      0      0      0      0      0      0      0      0

% 14     XX14   0      0      YY14   0      ZZ14   MX14   MY14   MZ14   M14    0

% 15     XX15   0      0      YY15   0      ZZ15   MX15   MY15   MZ15   M15    0

% 16     XX16   0      0      YY16   0      ZZ16   MX16   MY16   MZ16   M16    0

% 17     0      0      0      0      0      0      0      0      0      0      0

% 18     0      0      0      0      0      0      0      0      0      0      0

% 19     XX19   0      0      YY19   0      ZZ19   MX19   MY19   MZ19   M19    0

% 20     XX20   0      0      YY20   0      ZZ20   MX20   MY20   MZ20   M20    0

% 21     0      0      0      0      0      0      0      0      0      0      0

% 22     0      0      0      0      0      0      0      0      0      0      0

% 23     XX23   0      0      YY23   0      ZZ23   MX23   MY23   MZ23   M23    0

% 24     XX24   0      0      YY24   0      ZZ24   MX24   MY24   MZ24   M24    0

% 25     XX25   0      0      YY25   0      ZZ25   MX25   MY25   MZ25   M25    0



%  External forces,friction parameters, joint velocities and accelerations

% j       FX      FY      FZ      CX      CY      CZ      FS      FV      QP      QDP

% 1       0       0       0       0       0       0       0       0       QP1     QDP1

% 2       0       0       0       0       0       0       0       0       QP2     QDP2

% 3       0       0       0       0       0       0       0       0       QP3     QDP3

% 4       0       0       0       0       0       0       0       0       QP4     QDP4

% 5       0       0       0       0       0       0       0       0       QP5     QDP5

% 6       0       0       0       0       0       0       0       0       QP6     QDP6

% 7       0       0       0       0       0       0       0       0       0       0

% 8       0       0       0       0       0       0       0       0       QP8     QDP8

% 9       0       0       0       0       0       0       0       0       QP9     QDP9

% 10      0       0       0       0       0       0       0       0       QP10    QDP10

% 11      0       0       0       0       0       0       0       0       QP11    QDP11

% 12      0       0       0       0       0       0       0       0       QP12    QDP12

% 13      0       0       0       0       0       0       0       0       QP13    QDP13

% 14      FX14    FY14    FZ14    CX14    CY14    CZ14    0       0       0       0

% 15      0       0       0       0       0       0       0       0       QP15    QDP15

% 16      0       0       0       0       0       0       0       0       0       0

% 17      0       0       0       0       0       0       0       0       QP17    QDP17

% 18      0       0       0       0       0       0       0       0       QP18    QDP18

% 19      0       0       0       0       0       0       0       0       QP19    QDP19

% 20      0       0       0       0       0       0       0       0       0       0

% 21      0       0       0       0       0       0       0       0       QP21    QDP21

% 22      0       0       0       0       0       0       0       0       QP22    QDP22

% 23      0       0       0       0       0       0       0       0       QP23    QDP23

% 24      0       0       0       0       0       0       0       0       0       0

% 25      0       0       0       0       0       0       0       0       0       0

% Base velocity, base accelerations, and gravity

% j       W0      WP0     V0      VP0     G

% 1       0       0       0       0       -9.81

% 2       0       0       0       0       0

% 3       0       0       0       0       0

%  Dynamic model: Newton Euler method
% Equations:

% Declaration of the function
function [F_foot, M_foot, Torque, ZMP]=IDM_3Dbiped_Walker(Q, QD, QDD, F, M)

% return the reaction force and moments on the stance foot (right)
% torque, Q,QD,QDD is ndof x nsamples matrix
% F_foot, M_foot,F,M is 3 x nsamples matrix
% ZMP is 2 x nsamples matrix


% % Declaration of global input variables

global Lt L1 L2 L3 L4 L5 L6 L7 L8 L9 L10 L11 Lp lp L
global M1 M3 M4 M11 M12 M14 M15 M16 M19 M20 M23 M24 M25
global MX1 MX3 MX4 MX11 MX12 MX14 MX15 MX16 MX19 MX20 MX23 MX24 MX25
global MY1 MY3 MY4 MY11 MY12 MY14 MY15 MY16 MY19 MY20 MY23 MY24 MY25
global MZ1 MZ3 MZ4 MZ11 MZ12 MZ14 MZ15 MZ16 MZ19 MZ20 MZ23 MZ24 MZ25
global XX1 XX3 XX4 XX11 XX12 XX14 XX15 XX16 XX19 XX20 XX23 XX24 XX25
global YY1 YY3 YY4 YY11 YY12 YY14 YY15 YY16 YY19 YY20 YY23 YY24 YY25
global ZZ1 ZZ3 ZZ4 ZZ11 ZZ12 ZZ14 ZZ15 ZZ16 ZZ19 ZZ20 ZZ23 ZZ24 ZZ25

% global  MX1 MY1 M1 ZZ1
% global L3 MX3 MY3 MZ3 M3 YY3 ZZ3 XX3 
% global L4 MX4 MY4 MZ4 M4 YY4 ZZ4 XX4 
% global MX11 MY11 MZ11 M11 YY11 ZZ11 XX11 MX12
% global MY12 MZ12 M12 YY12 ZZ12 XX12 L2 L1
% global MX14 MY14 MZ14 M14 YY14 ZZ14 XX14 L6
% global MX15 MY15 MZ15 M15 YY15 ZZ15 XX15 L7 MX16 MY16
% global MZ16 M16 YY16 ZZ16 XX16 L8
% global MX19 MY19 MZ19 M19 YY19 ZZ19 XX19
% global L10 MX20 MY20 MZ20 M20 YY20 ZZ20 XX20
% global MX23 MY23 MZ23 M23 YY23 ZZ23
% global XX23 MX24 MY24 MZ24 M24 YY24 ZZ24 XX24 L11 MX25
% global MY25 MZ25 M25 YY25 ZZ25 XX25
% global MZ1
% 

% L1=1;L2=1;L3=1;L4=1;L5=1;L6=1;L7=1;L8=1;L9=1;L10=1;L11=1;
% M1=1;M3=1;M4=1;M11=1;M12=1;M14=1;M15=1;M16=1;M19=1;M20=1;M23=1;M24=1;M25=1;
% MX1=0;MX3=0;MX4=0;MX11=0;MX12=0;MX14=0;MX15=0;MX16=0;MX19=0;MX20=0;MX23=0;MX24=0;MX25=0;
% MY1=0;MY3=0;MY4=0;MY11=0;MY12=0;MY14=0;MY15=0;MY16=0;MY19=0;MY20=0;MY23=0;MY24=0;MY25=0;
% MZ1=0;MZ3=0;MZ4=0;MZ11=0;MZ12=0;MZ14=0;MZ15=0;MZ16=0;MZ19=0;MZ20=0;MZ23=0;MZ24=0;MZ25=0;
% XX1=0;XX3=0;XX4=0;XX11=0;XX12=0;XX14=0;XX15=0;XX16=0;XX19=0;XX20=0;XX23=0;XX24=0;XX25=0;
% YY1=0;YY3=0;YY4=0;YY11=0;YY12=0;YY14=0;YY15=0;YY16=0;YY19=0;YY20=0;YY23=0;YY24=0;YY25=0;
% ZZ1=0;ZZ3=0;ZZ4=0;ZZ11=0;ZZ12=0;ZZ14=0;ZZ15=0;ZZ16=0;ZZ19=0;ZZ20=0;ZZ23=0;ZZ24=0;ZZ25=0;


% % Declaration of global output variables
% global GAM1 GAM2 GAM3 GAM4 GAM5 GAM6 GAM8 GAM9 GAM10 GAM11
% global GAM12 GAM13 GAM15 GAM17 GAM18 GAM19 GAM21 GAM22 GAM23 E10
% global E20 E30 N10 N20 N30

    t1 = Q(1,:);
    t2 = Q(2,:);
    t3 = Q(3,:);
    t4 = Q(4,:);
    t5 = Q(5,:);
    t6 = Q(6,:);
    t8 = Q(7,:);
    t9 = Q(8,:);
    t10 = Q(9,:);
    t11 = Q(10,:);
    t12 = Q(11,:);
    t13 = Q(12,:);
    t15 = Q(13,:);
    t17 = Q(14,:);
    t18 = Q(15,:);
    t19 = Q(16,:);
    t21 = Q(17,:);
    t22 = Q(18,:);
    t23 = Q(19,:);
    
    QP1 = QD(1,:);
    QP2 = QD(2,:);
    QP3 = QD(3,:);
    QP4 = QD(4,:);
    QP5 = QD(5,:);
    QP6 = QD(6,:);
    QP8 = QD(7,:);
    QP9 = QD(8,:);
    QP10 = QD(9,:);
    QP11 = QD(10,:);
    QP12 = QD(11,:);
    QP13 = QD(12,:);
    QP15 = QD(13,:);
    QP17 = QD(14,:);
    QP18 = QD(15,:);
    QP19 = QD(16,:);
    QP21 = QD(17,:);
    QP22 = QD(18,:);
    QP23 = QD(19,:);
    
    QDP1 = QDD(1,:);
    QDP2 = QDD(2,:);
    QDP3 = QDD(3,:);
    QDP4 = QDD(4,:);
    QDP5 = QDD(5,:);
    QDP6 = QDD(6,:);
    QDP8 = QDD(7,:);
    QDP9 = QDD(8,:);
    QDP10 = QDD(9,:);
    QDP11 = QDD(10,:);
    QDP12 = QDD(11,:);
    QDP13 = QDD(12,:);
    QDP15 = QDD(13,:);
    QDP17 = QDD(14,:);
    QDP18 = QDD(15,:);
    QDP19 = QDD(16,:);
    QDP21 = QDD(17,:);
    QDP22 = QDD(18,:);
    QDP23 = QDD(19,:);
    
    
%     WX0 = OWO(1);
%     WY0 = OWO(2);
%     WZ0 = OWO(3);
%     
%     WPX0 = OWDotO(1);
%     WPY0 = OWDotO(2);
%     WPZ0 = OWDotO(3);
%             
%     VPX0 = OVDotO(1);
%     VPY0 = OVDotO(2);
%     VPZ0 = OVDotO(3);
    
    FX14 = F(1,:);
    FY14 = F(2,:);
    FZ14 = F(3,:);
    
    CX14 = M(1,:);
    CY14 = M(2,:);
    CZ14 = M(3,:);




% Function description:

	S1=sin(t1);
	C1=cos(t1);
	S2=sin(t2);
	C2=cos(t2);
	S3=sin(t3);
	C3=cos(t3);
	S4=sin(t4);
	C4=cos(t4);
	S5=-cos(t5);
	C5=sin(t5);
	S6=sin(t6);
	C6=cos(t6);
	LOO17=L5./2.;
	S8=sin(t8);
	C8=cos(t8);
	LOO18=L5./2.;
	S9=-cos(t9);
	C9=sin(t9);
	S10=sin(t10);
	C10=cos(t10);
	S11=sin(t11);
	C11=cos(t11);
	S12=sin(t12);
	C12=cos(t12);
	S13=sin(t13);
	C13=cos(t13);
	S15=sin(t15);
	C15=cos(t15);
	S17=cos(t17);
	C17=-sin(t17);
	S18=sin(t18);
	C18=cos(t18);
	S19=sin(t19);
	C19=cos(t19);
	S21=cos(t21);
	C21=-sin(t21);
	S22=sin(t22);
	C22=cos(t22);
	S23=sin(t23);
	C23=cos(t23);
	DV331=-QP1.^2;
	VP11=0.*C1;
	VP21=-0.*S1;
	F11=DV331.*MX1 - MY1.*QDP1 + M1.*VP11;
	F21=DV331.*MY1 + MX1.*QDP1 + M1.*VP21;
	No31=QDP1.*ZZ1;
	WI12=QP1.*S2;
	WI22=C2.*QP1;
	WP12=QDP1.*S2 + QP2.*WI22;
	WP22=C2.*QDP1 - QP2.*WI12;
	DV222=-WI22.^2;
	DV332=-QP2.^2;
	DV122=WI12.*WI22;
	DV132=QP2.*WI12;
	U112=DV222 + DV332;
	U212=DV122 + QDP2;
	U312=DV132 - WP22;
	VP12=C2.*VP11;
	VP22=-(S2.*VP11);
	WI13=C3.*WI12 + S3.*WI22;
	WI23=-(S3.*WI12) + C3.*WI22;
	W33=QP2 + QP3;
	WP13=QP3.*WI23 + C3.*WP12 + S3.*WP22;
	WP23=-(QP3.*WI13) - S3.*WP12 + C3.*WP22;
	WP33=QDP2 + QDP3;
	DV113=-WI13.^2;
	DV223=-WI23.^2;
	DV333=-W33.^2;
	DV123=WI13.*WI23;
	DV133=W33.*WI13;
	DV233=W33.*WI23;
	U113=DV223 + DV333;
	U123=DV123 - WP33;
	U133=DV133 + WP23;
	U213=DV123 + WP33;
	U223=DV113 + DV333;
	U233=DV233 - WP13;
	U313=DV133 - WP23;
	U323=DV233 + WP13;
	U333=DV113 + DV223;
	VSP13=L3.*U112 + VP12;
	VSP23=L3.*U212 + VP22;
	VSP33=L3.*U312 - VP21;
	VP13=C3.*VSP13 + S3.*VSP23;
	VP23=-(S3.*VSP13) + C3.*VSP23;
	F13=MX3.*U113 + MY3.*U123 + MZ3.*U133 + M3.*VP13;
	F23=MX3.*U213 + MY3.*U223 + MZ3.*U233 + M3.*VP23;
	F33=MX3.*U313 + MY3.*U323 + MZ3.*U333 + M3.*VSP33;
	PIS13=-YY3 + ZZ3;
	PIS23=XX3 - ZZ3;
	PIS33=-XX3 + YY3;
	No13=DV233.*PIS13 + WP13.*XX3;
	No23=DV133.*PIS23 + WP23.*YY3;
	No33=DV123.*PIS33 + WP33.*ZZ3;
	WI14=C4.*WI13 + S4.*WI23;
	WI24=-(S4.*WI13) + C4.*WI23;
	W34=QP4 + W33;
	WP14=QP4.*WI24 + C4.*WP13 + S4.*WP23;
	WP24=-(QP4.*WI14) - S4.*WP13 + C4.*WP23;
	WP34=QDP4 + WP33;
	DV114=-WI14.^2;
	DV224=-WI24.^2;
	DV334=-W34.^2;
	DV124=WI14.*WI24;
	DV134=W34.*WI14;
	DV234=W34.*WI24;
	U114=DV224 + DV334;
	U124=DV124 - WP34;
	U134=DV134 + WP24;
	U214=DV124 + WP34;
	U224=DV114 + DV334;
	U234=DV234 - WP14;
	U314=DV134 - WP24;
	U324=DV234 + WP14;
	U334=DV114 + DV224;
	VSP14=L4.*U113 + VP13;
	VSP24=L4.*U213 + VP23;
	VSP34=L4.*U313 + VSP33;
	VP14=C4.*VSP14 + S4.*VSP24;
	VP24=-(S4.*VSP14) + C4.*VSP24;
	F14=MX4.*U114 + MY4.*U124 + MZ4.*U134 + M4.*VP14;
	F24=MX4.*U214 + MY4.*U224 + MZ4.*U234 + M4.*VP24;
	F34=MX4.*U314 + MY4.*U324 + MZ4.*U334 + M4.*VSP34;
	PIS14=-YY4 + ZZ4;
	PIS24=XX4 - ZZ4;
	PIS34=-XX4 + YY4;
	No14=DV234.*PIS14 + WP14.*XX4;
	No24=DV134.*PIS24 + WP24.*YY4;
	No34=DV124.*PIS34 + WP34.*ZZ4;
	WI15=-(S5.*W34) + C5.*WI14;
	WI25=-(C5.*W34) - S5.*WI14;
	W35=QP5 + WI24;
	WP15=QP5.*WI25 + C5.*WP14 - S5.*WP34;
	WP25=-(QP5.*WI15) - S5.*WP14 - C5.*WP34;
	WP35=QDP5 + WP24;
	VP15=C5.*VP14 - S5.*VSP34;
	VP25=-(S5.*VP14) - C5.*VSP34;
	WI16=-(S6.*W35) + C6.*WI15;
	WI26=-(C6.*W35) - S6.*WI15;
	W36=QP6 + WI25;
	WP16=QP6.*WI26 + C6.*WP15 - S6.*WP35;
	WP26=-(QP6.*WI16) - S6.*WP15 - C6.*WP35;
	WP36=QDP6 + WP25;
	DV226=-WI26.^2;
	DV336=-W36.^2;
	DV126=WI16.*WI26;
	DV136=W36.*WI16;
	U116=DV226 + DV336;
	U216=DV126 + WP36;
	U316=DV136 - WP26;
	VP16=C6.*VP15 - S6.*VP24;
	VP26=-(S6.*VP15) - C6.*VP24;
	DV117=-WI16.^2;
	DV227=-WI26.^2;
	DV337=-W36.^2;
	DV127=WI16.*WI26;
	DV137=W36.*WI16;
	DV237=W36.*WI26;
	U117=DV227 + DV337;
	U137=DV137 + WP26;
	U217=DV127 + WP36;
	U237=DV237 - WP16;
	U317=DV137 - WP26;
	U337=DV117 + DV227;
	VSP17=LOO17.*U116 + VP16;
	VSP27=LOO17.*U216 + VP26;
	VSP37=LOO17.*U316 + VP25;
	WI18=C8.*WI16 + S8.*WI26;
	WI28=-(S8.*WI16) + C8.*WI26;
	W38=QP8 + W36;
	WP18=QP8.*WI28 + C8.*WP16 + S8.*WP26;
	WP28=-(QP8.*WI18) - S8.*WP16 + C8.*WP26;
	WP38=QDP8 + WP36;
	VSP18=LOO18.*U117 + VSP17;
	VSP28=LOO18.*U217 + VSP27;
	VSP38=LOO18.*U317 + VSP37;
	VP18=C8.*VSP18 + S8.*VSP28;
	VP28=-(S8.*VSP18) + C8.*VSP28;
	WI19=S9.*W38 + C9.*WI18;
	WI29=C9.*W38 - S9.*WI18;
	W39=QP9 - WI28;
	WP19=QP9.*WI29 + C9.*WP18 + S9.*WP38;
	WP29=-(QP9.*WI19) - S9.*WP18 + C9.*WP38;
	WP39=QDP9 - WP28;
	VP19=C9.*VP18 + S9.*VSP38;
	VP29=-(S9.*VP18) + C9.*VSP38;
	WI110=-(S10.*W39) + C10.*WI19;
	WI210=-(C10.*W39) - S10.*WI19;
	W310=QP10 + WI29;
	WP110=QP10.*WI210 + C10.*WP19 - S10.*WP39;
	WP210=-(QP10.*WI110) - S10.*WP19 - C10.*WP39;
	WP310=QDP10 + WP29;
	DV2210=-WI210.^2;
	DV3310=-W310.^2;
	DV1210=WI110.*WI210;
	DV1310=W310.*WI110;
	U1110=DV2210 + DV3310;
	U2110=DV1210 + WP310;
	U3110=DV1310 - WP210;
	VP110=C10.*VP19 + S10.*VP28;
	VP210=-(S10.*VP19) + C10.*VP28;
	WI111=C11.*WI110 + S11.*WI210;
	WI211=-(S11.*WI110) + C11.*WI210;
	W311=QP11 + W310;
	WP111=QP11.*WI211 + C11.*WP110 + S11.*WP210;
	WP211=-(QP11.*WI111) - S11.*WP110 + C11.*WP210;
	WP311=QDP11 + WP310;
	DV1111=-WI111.^2;
	DV2211=-WI211.^2;
	DV3311=-W311.^2;
	DV1211=WI111.*WI211;
	DV1311=W311.*WI111;
	DV2311=W311.*WI211;
	U1111=DV2211 + DV3311;
	U1211=DV1211 - WP311;
	U1311=DV1311 + WP211;
	U2111=DV1211 + WP311;
	U2211=DV1111 + DV3311;
	U2311=DV2311 - WP111;
	U3111=DV1311 - WP211;
	U3211=DV2311 + WP111;
	U3311=DV1111 + DV2211;
	VSP111=L4.*U1110 + VP110;
	VSP211=L4.*U2110 + VP210;
	VSP311=L4.*U3110 + VP29;
	VP111=C11.*VSP111 + S11.*VSP211;
	VP211=-(S11.*VSP111) + C11.*VSP211;
	F111=MX11.*U1111 + MY11.*U1211 + MZ11.*U1311 + M11.*VP111;
	F211=MX11.*U2111 + MY11.*U2211 + MZ11.*U2311 + M11.*VP211;
	F311=MX11.*U3111 + MY11.*U3211 + MZ11.*U3311 + M11.*VSP311;
	PIS111=-YY11 + ZZ11;
	PIS211=XX11 - ZZ11;
	PIS311=-XX11 + YY11;
	No111=DV2311.*PIS111 + WP111.*XX11;
	No211=DV1311.*PIS211 + WP211.*YY11;
	No311=DV1211.*PIS311 + WP311.*ZZ11;
	WI112=C12.*WI111 + S12.*WI211;
	WI212=-(S12.*WI111) + C12.*WI211;
	W312=QP12 + W311;
	WP112=QP12.*WI212 + C12.*WP111 + S12.*WP211;
	WP212=-(QP12.*WI112) - S12.*WP111 + C12.*WP211;
	WP312=QDP12 + WP311;
	DV1112=-WI112.^2;
	DV2212=-WI212.^2;
	DV3312=-W312.^2;
	DV1212=WI112.*WI212;
	DV1312=W312.*WI112;
	DV2312=W312.*WI212;
	U1112=DV2212 + DV3312;
	U1212=DV1212 - WP312;
	U1312=DV1312 + WP212;
	U2112=DV1212 + WP312;
	U2212=DV1112 + DV3312;
	U2312=DV2312 - WP112;
	U3112=DV1312 - WP212;
	U3212=DV2312 + WP112;
	U3312=DV1112 + DV2212;
	VSP112=L3.*U1111 + VP111;
	VSP212=L3.*U2111 + VP211;
	VSP312=L3.*U3111 + VSP311;
	VP112=C12.*VSP112 + S12.*VSP212;
	VP212=-(S12.*VSP112) + C12.*VSP212;
	F112=MX12.*U1112 + MY12.*U1212 + MZ12.*U1312 + M12.*VP112;
	F212=MX12.*U2112 + MY12.*U2212 + MZ12.*U2312 + M12.*VP212;
	F312=MX12.*U3112 + MY12.*U3212 + MZ12.*U3312 + M12.*VSP312;
	PIS112=-YY12 + ZZ12;
	PIS212=XX12 - ZZ12;
	PIS312=-XX12 + YY12;
	No112=DV2312.*PIS112 + WP112.*XX12;
	No212=DV1312.*PIS212 + WP212.*YY12;
	No312=DV1212.*PIS312 + WP312.*ZZ12;
	WI113=S13.*W312 + C13.*WI112;
	WI213=C13.*W312 - S13.*WI112;
	W313=QP13 - WI212;
	WP113=QP13.*WI213 + C13.*WP112 + S13.*WP312;
	WP213=-(QP13.*WI113) - S13.*WP112 + C13.*WP312;
	WP313=QDP13 - WP212;
	DV1113=-WI113.^2;
	DV2213=-WI213.^2;
	DV3313=-W313.^2;
	DV1213=WI113.*WI213;
	DV1313=W313.*WI113;
	DV2313=W313.*WI213;
	U1113=DV2213 + DV3313;
	U1313=DV1313 + WP213;
	U2113=DV1213 + WP313;
	U2313=DV2313 - WP113;
	U3113=DV1313 - WP213;
	U3313=DV1113 + DV2213;
	VP113=C13.*VP112 + S13.*VSP312;
	VP213=-(S13.*VP112) + C13.*VSP312;
	DV1114=-WI113.^2;
	DV2214=-WI213.^2;
	DV3314=-W313.^2;
	DV1214=WI113.*WI213;
	DV1314=W313.*WI113;
	DV2314=W313.*WI213;
	U1114=DV2214 + DV3314;
	U1214=DV1214 - WP313;
	U1314=DV1314 + WP213;
	U2114=DV1214 + WP313;
	U2214=DV1114 + DV3314;
	U2314=DV2314 - WP113;
	U3114=DV1314 - WP213;
	U3214=DV2314 + WP113;
	U3314=DV1114 + DV2214;
	VSP114=L2.*U1113 + L1.*U1313 + VP113;
	VSP214=L2.*U2113 + L1.*U2313 + VP213;
	VSP314=L2.*U3113 + L1.*U3313 - VP212;
	F114=MX14.*U1114 + MY14.*U1214 + MZ14.*U1314 + M14.*VSP114;
	F214=MX14.*U2114 + MY14.*U2214 + MZ14.*U2314 + M14.*VSP214;
	F314=MX14.*U3114 + MY14.*U3214 + MZ14.*U3314 + M14.*VSP314;
	PIS114=-YY14 + ZZ14;
	PIS214=XX14 - ZZ14;
	PIS314=-XX14 + YY14;
	No114=DV2314.*PIS114 + WP113.*XX14;
	No214=DV1314.*PIS214 + WP213.*YY14;
	No314=DV1214.*PIS314 + WP313.*ZZ14;
	WI115=C15.*WI16 + S15.*WI26;
	WI215=-(S15.*WI16) + C15.*WI26;
	W315=QP15 + W36;
	WP115=QP15.*WI215 + C15.*WP16 + S15.*WP26;
	WP215=-(QP15.*WI115) - S15.*WP16 + C15.*WP26;
	WP315=QDP15 + WP36;
	DV1115=-WI115.^2;
	DV2215=-WI215.^2;
	DV3315=-W315.^2;
	DV1215=WI115.*WI215;
	DV1315=W315.*WI115;
	DV2315=W315.*WI215;
	U1115=DV2215 + DV3315;
	U1215=DV1215 - WP315;
	U1315=DV1315 + WP215;
	U2115=DV1215 + WP315;
	U2215=DV1115 + DV3315;
	U2315=DV2315 - WP115;
	U3115=DV1315 - WP215;
	U3215=DV2315 + WP115;
	U3315=DV1115 + DV2215;
	VSP115=L6.*U137 + VSP17;
	VSP215=L6.*U237 + VSP27;
	VSP315=L6.*U337 + VSP37;
	VP115=C15.*VSP115 + S15.*VSP215;
	VP215=-(S15.*VSP115) + C15.*VSP215;
	F115=MX15.*U1115 + MY15.*U1215 + MZ15.*U1315 + M15.*VP115;
	F215=MX15.*U2115 + MY15.*U2215 + MZ15.*U2315 + M15.*VP215;
	F315=MX15.*U3115 + MY15.*U3215 + MZ15.*U3315 + M15.*VSP315;
	PIS115=-YY15 + ZZ15;
	PIS215=XX15 - ZZ15;
	PIS315=-XX15 + YY15;
	No115=DV2315.*PIS115 + WP115.*XX15;
	No215=DV1315.*PIS215 + WP215.*YY15;
	No315=DV1215.*PIS315 + WP315.*ZZ15;
	DV1116=-WI115.^2;
	DV2216=-WI215.^2;
	DV3316=-W315.^2;
	DV1216=WI115.*WI215;
	DV1316=W315.*WI115;
	DV2316=W315.*WI215;
	U1116=DV2216 + DV3316;
	U1216=DV1216 - WP315;
	U1316=DV1316 + WP215;
	U2116=DV1216 + WP315;
	U2216=DV1116 + DV3316;
	U2316=DV2316 - WP115;
	U3116=DV1316 - WP215;
	U3216=DV2316 + WP115;
	U3316=DV1116 + DV2216;
	VSP116=L7.*U1315 + VP115;
	VSP216=L7.*U2315 + VP215;
	VSP316=L7.*U3315 + VSP315;
	F116=MX16.*U1116 + MY16.*U1216 + MZ16.*U1316 + M16.*VSP116;
	F216=MX16.*U2116 + MY16.*U2216 + MZ16.*U2316 + M16.*VSP216;
	F316=MX16.*U3116 + MY16.*U3216 + MZ16.*U3316 + M16.*VSP316;
	PIS116=-YY16 + ZZ16;
	PIS216=XX16 - ZZ16;
	PIS316=-XX16 + YY16;
	No116=DV2316.*PIS116 + WP115.*XX16;
	No216=DV1316.*PIS216 + WP215.*YY16;
	No316=DV1216.*PIS316 + WP315.*ZZ16;
	WI117=S17.*W315 + C17.*WI115;
	WI217=C17.*W315 - S17.*WI115;
	W317=QP17 - WI215;
	WP117=QP17.*WI217 + C17.*WP115 + S17.*WP315;
	WP217=-(QP17.*WI117) - S17.*WP115 + C17.*WP315;
	WP317=QDP17 - WP215;
	VSP117=-(L8.*U1116) + VSP116;
	VSP217=-(L8.*U2116) + VSP216;
	VSP317=-(L8.*U3116) + VSP316;
	VP117=C17.*VSP117 + S17.*VSP317;
	VP217=-(S17.*VSP117) + C17.*VSP317;
	WI118=S18.*W317 + C18.*WI117;
	WI218=C18.*W317 - S18.*WI117;
	W318=QP18 - WI217;
	WP118=QP18.*WI218 + C18.*WP117 + S18.*WP317;
	WP218=-(QP18.*WI118) - S18.*WP117 + C18.*WP317;
	WP318=QDP18 - WP217;
	DV2218=-WI218.^2;
	DV3318=-W318.^2;
	DV1218=WI118.*WI218;
	DV1318=W318.*WI118;
	U1118=DV2218 + DV3318;
	U2118=DV1218 + WP318;
	U3118=DV1318 - WP218;
	VP118=C18.*VP117 - S18.*VSP217;
	VP218=-(S18.*VP117) - C18.*VSP217;
	WI119=C19.*WI118 + S19.*WI218;
	WI219=-(S19.*WI118) + C19.*WI218;
	W319=QP19 + W318;
	WP119=QP19.*WI219 + C19.*WP118 + S19.*WP218;
	WP219=-(QP19.*WI119) - S19.*WP118 + C19.*WP218;
	WP319=QDP19 + WP318;
	DV1119=-WI119.^2;
	DV2219=-WI219.^2;
	DV3319=-W319.^2;
	DV1219=WI119.*WI219;
	DV1319=W319.*WI119;
	DV2319=W319.*WI219;
	U1119=DV2219 + DV3319;
	U1219=DV1219 - WP319;
	U1319=DV1319 + WP219;
	U2119=DV1219 + WP319;
	U2219=DV1119 + DV3319;
	U2319=DV2319 - WP119;
	U3119=DV1319 - WP219;
	U3219=DV2319 + WP119;
	U3319=DV1119 + DV2219;
	VSP119=-(L9.*U1118) + VP118;
	VSP219=-(L9.*U2118) + VP218;
	VSP319=-(L9.*U3118) - VP217;
	VP119=C19.*VSP119 + S19.*VSP219;
	VP219=-(S19.*VSP119) + C19.*VSP219;
	F119=MX19.*U1119 + MY19.*U1219 + MZ19.*U1319 + M19.*VP119;
	F219=MX19.*U2119 + MY19.*U2219 + MZ19.*U2319 + M19.*VP219;
	F319=MX19.*U3119 + MY19.*U3219 + MZ19.*U3319 + M19.*VSP319;
	PIS119=-YY19 + ZZ19;
	PIS219=XX19 - ZZ19;
	PIS319=-XX19 + YY19;
	No119=DV2319.*PIS119 + WP119.*XX19;
	No219=DV1319.*PIS219 + WP219.*YY19;
	No319=DV1219.*PIS319 + WP319.*ZZ19;
	DV1120=-WI119.^2;
	DV2220=-WI219.^2;
	DV3320=-W319.^2;
	DV1220=WI119.*WI219;
	DV1320=W319.*WI119;
	DV2320=W319.*WI219;
	U1120=DV2220 + DV3320;
	U1220=DV1220 - WP319;
	U1320=DV1320 + WP219;
	U2120=DV1220 + WP319;
	U2220=DV1120 + DV3320;
	U2320=DV2320 - WP119;
	U3120=DV1320 - WP219;
	U3220=DV2320 + WP119;
	U3320=DV1120 + DV2220;
	VSP120=-(L10.*U1119) + VP119;
	VSP220=-(L10.*U2119) + VP219;
	VSP320=-(L10.*U3119) + VSP319;
	F120=MX20.*U1120 + MY20.*U1220 + MZ20.*U1320 + M20.*VSP120;
	F220=MX20.*U2120 + MY20.*U2220 + MZ20.*U2320 + M20.*VSP220;
	F320=MX20.*U3120 + MY20.*U3220 + MZ20.*U3320 + M20.*VSP320;
	PIS120=-YY20 + ZZ20;
	PIS220=XX20 - ZZ20;
	PIS320=-XX20 + YY20;
	No120=DV2320.*PIS120 + WP119.*XX20;
	No220=DV1320.*PIS220 + WP219.*YY20;
	No320=DV1220.*PIS320 + WP319.*ZZ20;
	WI121=S21.*W315 + C21.*WI115;
	WI221=C21.*W315 - S21.*WI115;
	W321=QP21 - WI215;
	WP121=QP21.*WI221 + C21.*WP115 + S21.*WP315;
	WP221=-(QP21.*WI121) - S21.*WP115 + C21.*WP315;
	WP321=QDP21 - WP215;
	VSP121=L8.*U1116 + VSP116;
	VSP221=L8.*U2116 + VSP216;
	VSP321=L8.*U3116 + VSP316;
	VP121=C21.*VSP121 + S21.*VSP321;
	VP221=-(S21.*VSP121) + C21.*VSP321;
	WI122=S22.*W321 + C22.*WI121;
	WI222=C22.*W321 - S22.*WI121;
	W322=QP22 - WI221;
	WP122=QP22.*WI222 + C22.*WP121 + S22.*WP321;
	WP222=-(QP22.*WI122) - S22.*WP121 + C22.*WP321;
	WP322=QDP22 - WP221;
	DV2222=-WI222.^2;
	DV3322=-W322.^2;
	DV1222=WI122.*WI222;
	DV1322=W322.*WI122;
	U1122=DV2222 + DV3322;
	U2122=DV1222 + WP322;
	U3122=DV1322 - WP222;
	VP122=C22.*VP121 - S22.*VSP221;
	VP222=-(S22.*VP121) - C22.*VSP221;
	WI123=C23.*WI122 + S23.*WI222;
	WI223=-(S23.*WI122) + C23.*WI222;
	W323=QP23 + W322;
	WP123=QP23.*WI223 + C23.*WP122 + S23.*WP222;
	WP223=-(QP23.*WI123) - S23.*WP122 + C23.*WP222;
	WP323=QDP23 + WP322;
	DV1123=-WI123.^2;
	DV2223=-WI223.^2;
	DV3323=-W323.^2;
	DV1223=WI123.*WI223;
	DV1323=W323.*WI123;
	DV2323=W323.*WI223;
	U1123=DV2223 + DV3323;
	U1223=DV1223 - WP323;
	U1323=DV1323 + WP223;
	U2123=DV1223 + WP323;
	U2223=DV1123 + DV3323;
	U2323=DV2323 - WP123;
	U3123=DV1323 - WP223;
	U3223=DV2323 + WP123;
	U3323=DV1123 + DV2223;
	VSP123=-(L9.*U1122) + VP122;
	VSP223=-(L9.*U2122) + VP222;
	VSP323=-(L9.*U3122) - VP221;
	VP123=C23.*VSP123 + S23.*VSP223;
	VP223=-(S23.*VSP123) + C23.*VSP223;
	F123=MX23.*U1123 + MY23.*U1223 + MZ23.*U1323 + M23.*VP123;
	F223=MX23.*U2123 + MY23.*U2223 + MZ23.*U2323 + M23.*VP223;
	F323=MX23.*U3123 + MY23.*U3223 + MZ23.*U3323 + M23.*VSP323;
	PIS123=-YY23 + ZZ23;
	PIS223=XX23 - ZZ23;
	PIS323=-XX23 + YY23;
	No123=DV2323.*PIS123 + WP123.*XX23;
	No223=DV1323.*PIS223 + WP223.*YY23;
	No323=DV1223.*PIS323 + WP323.*ZZ23;
	DV1124=-WI123.^2;
	DV2224=-WI223.^2;
	DV3324=-W323.^2;
	DV1224=WI123.*WI223;
	DV1324=W323.*WI123;
	DV2324=W323.*WI223;
	U1124=DV2224 + DV3324;
	U1224=DV1224 - WP323;
	U1324=DV1324 + WP223;
	U2124=DV1224 + WP323;
	U2224=DV1124 + DV3324;
	U2324=DV2324 - WP123;
	U3124=DV1324 - WP223;
	U3224=DV2324 + WP123;
	U3324=DV1124 + DV2224;
	VSP124=-(L10.*U1123) + VP123;
	VSP224=-(L10.*U2123) + VP223;
	VSP324=-(L10.*U3123) + VSP323;
	F124=MX24.*U1124 + MY24.*U1224 + MZ24.*U1324 + M24.*VSP124;
	F224=MX24.*U2124 + MY24.*U2224 + MZ24.*U2324 + M24.*VSP224;
	F324=MX24.*U3124 + MY24.*U3224 + MZ24.*U3324 + M24.*VSP324;
	PIS124=-YY24 + ZZ24;
	PIS224=XX24 - ZZ24;
	PIS324=-XX24 + YY24;
	No124=DV2324.*PIS124 + WP123.*XX24;
	No224=DV1324.*PIS224 + WP223.*YY24;
	No324=DV1224.*PIS324 + WP323.*ZZ24;
	DV1125=-WI115.^2;
	DV2225=-WI215.^2;
	DV3325=-W315.^2;
	DV1225=WI115.*WI215;
	DV1325=W315.*WI115;
	DV2325=W315.*WI215;
	U1125=DV2225 + DV3325;
	U1225=DV1225 - WP315;
	U1325=DV1325 + WP215;
	U2125=DV1225 + WP315;
	U2225=DV1125 + DV3325;
	U2325=DV2325 - WP115;
	U3125=DV1325 - WP215;
	U3225=DV2325 + WP115;
	U3325=DV1125 + DV2225;
	VSP125=L11.*U1316 + VSP116;
	VSP225=L11.*U2316 + VSP216;
	VSP325=L11.*U3316 + VSP316;
	F125=MX25.*U1125 + MY25.*U1225 + MZ25.*U1325 + M25.*VSP125;
	F225=MX25.*U2125 + MY25.*U2225 + MZ25.*U2325 + M25.*VSP225;
	F325=MX25.*U3125 + MY25.*U3225 + MZ25.*U3325 + M25.*VSP325;
	PIS125=-YY25 + ZZ25;
	PIS225=XX25 - ZZ25;
	PIS325=-XX25 + YY25;
	No125=DV2325.*PIS125 + WP115.*XX25;
	No225=DV1325.*PIS225 + WP215.*YY25;
	No325=DV1225.*PIS325 + WP315.*ZZ25;
	N125=No125 - MZ25.*VSP225 + MY25.*VSP325;
	N225=No225 + MZ25.*VSP125 - MX25.*VSP325;
	N325=No325 - MY25.*VSP125 + MX25.*VSP225;
	N124=No124 - MZ24.*VSP224 + MY24.*VSP324;
	N224=No224 + MZ24.*VSP124 - MX24.*VSP324;
	N324=No324 - MY24.*VSP124 + MX24.*VSP224;
	E123=F123 + F124;
	E223=F223 + F224;
	E323=F323 + F324;
	N123=N124 + No123 - MZ23.*VP223 + MY23.*VSP323;
	N223=F324.*L10 + N224 + No223 + MZ23.*VP123 - MX23.*VSP323;
	N323=-(F224.*L10) + N324 + No323 - MY23.*VP123 + MX23.*VP223;
	FDI123=C23.*E123 - E223.*S23;
	FDI223=C23.*E223 + E123.*S23;
	N122=C23.*N123 - N223.*S23;
	N222=E323.*L9 + C23.*N223 + N123.*S23;
	N322=-(FDI223.*L9) + N323;
	FDI122=C22.*FDI123 - FDI223.*S22;
	FDI322=C22.*FDI223 + FDI123.*S22;
	N121=C22.*N122 - N222.*S22;
	N321=C22.*N222 + N122.*S22;
	FDI121=C21.*FDI122 + E323.*S21;
	FDI321=-(C21.*E323) + FDI122.*S21;
	N120=No120 - MZ20.*VSP220 + MY20.*VSP320;
	N220=No220 + MZ20.*VSP120 - MX20.*VSP320;
	N320=No320 - MY20.*VSP120 + MX20.*VSP220;
	E119=F119 + F120;
	E219=F219 + F220;
	E319=F319 + F320;
	N119=N120 + No119 - MZ19.*VP219 + MY19.*VSP319;
	N219=F320.*L10 + N220 + No219 + MZ19.*VP119 - MX19.*VSP319;
	N319=-(F220.*L10) + N320 + No319 - MY19.*VP119 + MX19.*VP219;
	FDI119=C19.*E119 - E219.*S19;
	FDI219=C19.*E219 + E119.*S19;
	N118=C19.*N119 - N219.*S19;
	N218=E319.*L9 + C19.*N219 + N119.*S19;
	N318=-(FDI219.*L9) + N319;
	FDI118=C18.*FDI119 - FDI219.*S18;
	FDI318=C18.*FDI219 + FDI119.*S18;
	N117=C18.*N118 - N218.*S18;
	N317=C18.*N218 + N118.*S18;
	FDI117=C17.*FDI118 + E319.*S17;
	FDI317=-(C17.*E319) + FDI118.*S17;
	E116=F116 + F125 + FDI117 + FDI121;
	E216=F216 + F225 - FDI318 - FDI322;
	E316=F316 + F325 + FDI317 + FDI321;
	N116=-(F225.*L11) + C17.*N117 + C21.*N121 + N125 + No116 + N318.*S17 + N322.*S21 - MZ16.*VSP216 + MY16.*VSP316;
	N216=F125.*L11 + FDI317.*L8 - FDI321.*L8 + N225 - N317 - N321 + No216 + MZ16.*VSP116 - MX16.*VSP316;
	N316=FDI318.*L8 - FDI322.*L8 - C17.*N318 - C21.*N322 + N325 + No316 + N117.*S17 + N121.*S21 - MY16.*VSP116 + MX16.*VSP216;
	E115=E116 + F115;
	E215=E216 + F215;
	E315=E316 + F315;
	N115=-(E216.*L7) + N116 + No115 - MZ15.*VP215 + MY15.*VSP315;
	N215=E116.*L7 + N216 + No215 + MZ15.*VP115 - MX15.*VSP315;
	N315=N316 + No315 - MY15.*VP115 + MX15.*VP215;
	FDI115=C15.*E115 - E215.*S15;
	FDI215=C15.*E215 + E115.*S15;
	E114=F114 + FX14;
	E214=F214 + FY14;
	E314=F314 + FZ14;
	N114=CX14 + No114 - MZ14.*VSP214 + MY14.*VSP314;
	N214=CY14 + No214 + MZ14.*VSP114 - MX14.*VSP314;
	N314=CZ14 + No314 - MY14.*VSP114 + MX14.*VSP214;
	N113=-(E214.*L1) + N114;
	N213=E114.*L1 - E314.*L2 + N214;
	N313=E214.*L2 + N314;
	FDI113=C13.*E114 - E214.*S13;
	FDI313=C13.*E214 + E114.*S13;
	E112=F112 + FDI113;
	E212=-E314 + F212;
	E312=F312 + FDI313;
	N112=C13.*N113 + No112 - N213.*S13 - MZ12.*VP212 + MY12.*VSP312;
	N212=-N313 + No212 + MZ12.*VP112 - MX12.*VSP312;
	N312=C13.*N213 + No312 + N113.*S13 - MY12.*VP112 + MX12.*VP212;
	FDI112=C12.*E112 - E212.*S12;
	FDI212=C12.*E212 + E112.*S12;
	E111=F111 + FDI112;
	E211=F211 + FDI212;
	E311=E312 + F311;
	N111=C12.*N112 + No111 - N212.*S12 - MZ11.*VP211 + MY11.*VSP311;
	N211=-(E312.*L3) + C12.*N212 + No211 + N112.*S12 + MZ11.*VP111 - MX11.*VSP311;
	N311=FDI212.*L3 + N312 + No311 - MY11.*VP111 + MX11.*VP211;
	FDI111=C11.*E111 - E211.*S11;
	FDI211=C11.*E211 + E111.*S11;
	N110=C11.*N111 - N211.*S11;
	N210=-(E311.*L4) + C11.*N211 + N111.*S11;
	N310=FDI211.*L4 + N311;
	FDI110=C10.*FDI111 - FDI211.*S10;
	FDI310=-(C10.*FDI211) - FDI111.*S10;
	N19=C10.*N110 - N210.*S10;
	N39=-(C10.*N210) - N110.*S10;
	FDI19=C9.*FDI110 - E311.*S9;
	FDI39=C9.*E311 + FDI110.*S9;
	N18=C9.*N19 - N310.*S9;
	N38=C9.*N310 + N19.*S9;
	FDI18=C8.*FDI19 + FDI310.*S8;
	FDI28=-(C8.*FDI310) + FDI19.*S8;
	E17=FDI115 + FDI18;
	E27=FDI215 + FDI28;
	E37=E315 + FDI39;
	N17=-(FDI215.*L6) + C15.*N115 + C8.*N18 - N215.*S15 + N39.*S8;
	N27=FDI115.*L6 - FDI39.*LOO18 + C15.*N215 - C8.*N39 + N115.*S15 + N18.*S8;
	N37=FDI28.*LOO18 + N315 + N38;
	N26=-(E37.*LOO17) + N27;
	N36=E27.*LOO17 + N37;
	FDI16=C6.*E17 - E27.*S6;
	FDI36=-(C6.*E27) - E17.*S6;
	N15=C6.*N17 - N26.*S6;
	N35=-(C6.*N26) - N17.*S6;
	FDI15=C5.*FDI16 - E37.*S5;
	FDI35=-(C5.*E37) - FDI16.*S5;
	E14=F14 + FDI15;
	E24=F24 + FDI36;
	E34=F34 + FDI35;
	N14=C5.*N15 + No14 - N36.*S5 - MZ4.*VP24 + MY4.*VSP34;
	N24=N35 + No24 + MZ4.*VP14 - MX4.*VSP34;
	N34=-(C5.*N36) + No34 - N15.*S5 - MY4.*VP14 + MX4.*VP24;
	FDI14=C4.*E14 - E24.*S4;
	FDI24=C4.*E24 + E14.*S4;
	E13=F13 + FDI14;
	E23=F23 + FDI24;
	E33=E34 + F33;
	N13=C4.*N14 + No13 - N24.*S4 - MZ3.*VP23 + MY3.*VSP33;
	N23=-(E34.*L4) + C4.*N24 + No23 + N14.*S4 + MZ3.*VP13 - MX3.*VSP33;
	N33=FDI24.*L4 + N34 + No33 - MY3.*VP13 + MX3.*VP23;
	FDI13=C3.*E13 - E23.*S3;
	FDI23=C3.*E23 + E13.*S3;
	N12=C3.*N13 - N23.*S3;
	N22=-(E33.*L3) + C3.*N23 + N13.*S3;
	N32=FDI23.*L3 + N33;
	FDI12=C2.*FDI13 - FDI23.*S2;
	FDI32=C2.*FDI23 + FDI13.*S2;
	E11=F11 + FDI12;
	E21=-E33 + F21;
	N11=C2.*N12 - N22.*S2 - MZ1.*VP21;
	N21=-N32 + MZ1.*VP11;
	N31=C2.*N22 + No31 + N12.*S2 - MY1.*VP11 + MX1.*VP21;
	FDI11=C1.*E11 - E21.*S1;
	FDI21=C1.*E21 + E11.*S1;
	GAM1=N31;
	GAM2=N32;
	GAM3=N33;
	GAM4=N34;
	GAM5=N35;
	GAM6=N36;
	GAM8=N38;
	GAM9=N39;
	GAM10=N310;
	GAM11=N311;
	GAM12=N312;
	GAM13=N313;
	GAM15=N315;
	GAM17=N317;
	GAM18=N318;
	GAM19=N319;
	GAM21=N321;
	GAM22=N322;
	GAM23=N323;
	E10=FDI11;
	E20=FDI21;
	E30=FDI32;
	N10=FDI21.*L1 + C1.*N11 - N21.*S1;
	N20=-(FDI11.*L1) - FDI32.*L2 + C1.*N21 + N11.*S1;
	N30=FDI21.*L2 + N31;


    Torque(1,:) = GAM1;
	Torque(2,:) = GAM2;
	Torque(3,:) = GAM3;
	Torque(4,:) = GAM4;
	Torque(5,:) = GAM5;
	Torque(6,:) = GAM6;
	Torque(7,:) = GAM8;
	Torque(8,:) = GAM9;
	Torque(9,:) = GAM10;
	Torque(10,:) = GAM11;
	Torque(11,:) = GAM12;
	Torque(12,:) = GAM13;
	Torque(13,:) = GAM15;
	Torque(14,:) = GAM17;
    Torque(15,:) = GAM18;
	Torque(16,:) = GAM19;
	Torque(17,:) = GAM21;
	Torque(18,:) = GAM22;
	Torque(19,:) = GAM23;
    
    F_foot(1,:) = E10;
	F_foot(2,:) = E20;
	F_foot(3,:) = E30;
	M_foot(1,:) = N10;
	M_foot(2,:) = N20;
	M_foot(3,:) = N30;
    
% Center of pression (= ZMP) calculation wrt frame S (in y,z plane)
    n_samples=size(Q,2);
    
    v_normal=[1;0;0];
    for k=1:n_samples
    pos_ZMP=cross(v_normal,M_foot(:,k))./(v_normal'*F_foot(:,k));
    ZMP(:,k)=pos_ZMP(2:3);
    end

% *=*
% Number of operations : 807 '+' or '-', 895 '*' or '/'
end
