% (********************************************)
% (** SYMORO+ : SYmbolic MOdelling of RObots **)
% (**========================================**)
% (**      IRCCyN-ECN - 1, rue de la Noe     **)
% (**      B.P.92101                         **)
% (**      44321 Nantes cedex 3, FRANCE      **)
% (**      www.irccyn.ec-nantes.fr           **)
% (********************************************)


%    Name of file : D:\The`se\3D_simulation\Test Symoro functions\functions for locomotor syst from 0 to 14 (BSIPs tuned)\Def_0_14_tuned.dyn




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




%              Inertial parameters

% j      XX     XY     XZ     YY     YZ     ZZ     MX     MY     MZ     M      Ia

% 1      XX1    0      0      YY1    0      ZZ1    MX1    MY1    MZ1    M1     IA1

% 2      XX2    0      0      YY2    0      ZZ2    MX2    MY2    MZ2    M2     IA2

% 3      XX3    0      0      YY3    0      ZZ3    MX3    MY3    MZ3    M3     IA3

% 4      XX4    0      0      YY4    0      ZZ4    MX4    MY4    MZ4    M4     IA4

% 5      XX5    0      0      YY5    0      ZZ5    MX5    MY5    MZ5    M5     IA5

% 6      XX6    0      0      YY6    0      ZZ6    MX6    MY6    MZ6    M6     IA6

% 7      XX7    0      0      YY7    0      ZZ7    MX7    MY7    MZ7    M7     IA7

% 8      XX8    0      0      YY8    0      ZZ8    MX8    MY8    MZ8    M8     IA8

% 9      XX9    0      0      YY9    0      ZZ9    MX9    MY9    MZ9    M9     IA9

% 10     XX10   0      0      YY10   0      ZZ10   MX10   MY10   MZ10   M10    IA10

% 11     XX11   0      0      YY11   0      ZZ11   MX11   MY11   MZ11   M11    IA11

% 12     XX12   0      0      YY12   0      ZZ12   MX12   MY12   MZ12   M12    IA12

% 13     XX13   0      0      YY13   0      ZZ13   MX13   MY13   MZ13   M13    IA13

% 14     XX14   0      0      YY14   0      ZZ14   MX14   MY14   MZ14   M14    IA14



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

% Base velocity, base accelerations, and gravity

% j       W0      WP0     V0      VP0     G

% 1       WX0     WPX0    VX0     VPX0    -9.81

% 2       WY0     WPY0    VY0     VPY0    0

% 3       WZ0     WPZ0    VZ0     VPZ0    0

%  Dynamic model: Newton Euler method
% Equations:

% Declaration of the function
function [F_foot, M_foot, Torque] = Def_0_14_tuned_dyn(Q, QD, QDD, OVDotO,OWDotO,OWO,F,M)

% Declaration of global input variables
global Lt L1 L2 L3 L4 L5 L6 L7 L8 L9 L10 L11 Lp lp L
% global M1 M3 M4 M11 M12 M14 M15 M16 M19 M20 M23 M24 M25
% global MX1 MX3 MX4 MX11 MX12 MX14 MX15 MX16 MX19 MX20 MX23 MX24 MX25
% global MY1 MY3 MY4 MY11 MY12 MY14 MY15 MY16 MY19 MY20 MY23 MY24 MY25
% global MZ1 MZ3 MZ4 MZ11 MZ12 MZ14 MZ15 MZ16 MZ19 MZ20 MZ23 MZ24 MZ25
% global XX1 XX3 XX4 XX11 XX12 XX14 XX15 XX16 XX19 XX20 XX23 XX24 XX25
% global YY1 YY3 YY4 YY11 YY12 YY14 YY15 YY16 YY19 YY20 YY23 YY24 YY25
% global ZZ1 ZZ3 ZZ4 ZZ11 ZZ12 ZZ14 ZZ15 ZZ16 ZZ19 ZZ20 ZZ23 ZZ24 ZZ25

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

    
    
    WX0 = OWO(1);
    WY0 = OWO(2);
    WZ0 = OWO(3);
    
    WPX0 = OWDotO(1);
    WPY0 = OWDotO(2);
    WPZ0 = OWDotO(3);
            
    VPX0 = OVDotO(1);
    VPY0 = OVDotO(2);
    VPZ0 = OVDotO(3);
    
    FX14 = F(1,:);
    FY14 = F(2,:);
    FZ14 = F(3,:);
    
    CX14 = M(1,:);
    CY14 = M(2,:);
    CZ14 = M(3,:);
    
%/* Parameters Joint 1 */ 
 M1   =  1.02;
 
 MX1 =  -0.0386149516235616;
 MY1  = 0.00664893206763312;
 MZ1  = 0.0976881557629173;
 
 XX1  =   0.00913;
%  XY1  =  0.000000000000000;
%  XZ1  =  0.000000000000000;
 YY1  =   0.0086;
%  YZ1  = -0.014588938940000;
 ZZ1  =   0.001927;
 
 IA1  =  0.800000000000000;
 
%/* Parameters Joint 2 */ 
 M2  =  4.08;
 
 MX2  =   0.266326;
 MY2  = -0.000255408000000;
 MZ2  =   -0.0031598;
 
 XX2  =  0.008313487968;
%  XY2  =  0.000000000000000;
%  XZ2  =  0.000000000000000;
 YY2  =  0.06517774566912;
%  YZ2  =  0.000000000000000;
 ZZ2  =  0.06517774566912;
 
 IA2 =   0.800000000000000;
 
%/* Parameters Joint 3 */ 
 M3  =  10.455;
 
 MX3  =  0.2521536;
 MY3 =  -0.0181056;
 MZ3  = -0.0145728;
 
 XX3  =  0.045873796608;
%  XY3  =  0.000000000000000;
%  XZ3  =  0.000000000000000;
 YY3  =  0.17146605754368;
%  YZ3  =  0.000000000000000;
 ZZ3  =  0.183495186432;
 
 IA3  =  0.800000000000000;
 
%/* Parameters Joint 4 */ 
 M4  =  2;
 
 MX4  =  0.000190304000000;
 MY4  =  0.000190304000000;
 MZ4  =  0.000190304000000;
 XX4  =  0.000190304000000;
%  XY4  =  0.000000000000000;
%  XZ4   = 0.000000000000000;
 YY4  =  0.000190304000000;
%  YZ4 =   0.000000000000000;
 ZZ4  =  0.000190304000000;
 
 IA4   = 0.800000000000000;
 
 %/* Parameters Joint 5 */ 
 M5  =  2;
 
 MX5  =  0.000190304000000;
 MY5  =  0.000190304000000;
 MZ5  =  0.000190304000000;
 XX5  =  0.000190304000000;
%  XY5  =  0.000000000000000;
%  XZ5   = 0.000000000000000;
 YY5  =  0.000190304000000;
%  YZ5 =   0.000000000000000;
 ZZ5  =  0.000190304000000;
 
 IA5   = 0.800000000000000;
 
 %/* Parameters Joint 6 */ 
 M6  =  2;
 
 MX6  =  0.000190304000000;
 MY6  =  0.000190304000000;
 MZ6  =  0.000190304000000;
 XX6  =  0.000190304000000;
%  XY6  =  0.000000000000000;
%  XZ6   = 0.000000000000000;
 YY6  =  0.000190304000000;
%  YZ6 =   0.000000000000000;
 ZZ6  =  0.000190304000000;
 
 IA6   = 0.800000000000000; 
 
 %/* Parameters Joint 7 */ 
 M7  =  12.07;
 
 MX7  =  0.0008244;
 MY7  =  -0.0038472;
 MZ7  =  0.098928;
 XX7  =  0.205649636463;
%  XY7  =  0.000000000000000;
%  XZ7   = 0.000000000000000;
 YY7  =   0.23244675252732;
%  YZ7 =   0.000000000000000;
 ZZ7  =   0.25603094906352;
 
 IA7   = 0.00000000000000;
  
 %/* Parameters Joint 8 */ 
 M8  =  2;
 
 MX8  =  0.000190304000000;
 MY8  =  0.000190304000000;
 MZ8  =  0.000190304000000;
 XX8  =  0.000190304000000;
%  XY8  =  0.000000000000000;
%  XZ8   = 0.000000000000000;
 YY8  =  0.000190304000000;
%  YZ8 =   0.000000000000000;
 ZZ8  =  0.000190304000000;
 
 IA8   = 0.800000000000000;
 
 %/* Parameters Joint 9 */ 
 M9  =  2;
 
 MX9  =  0.000190304000000;
 MY9  =  0.000190304000000;
 MZ9  =  0.000190304000000;
 XX9  =  0.000190304000000;
%  XY9  =  0.000000000000000;
%  XZ9   = 0.000000000000000;
 YY9  =  0.000190304000000;
%  YZ9 =   0.000000000000000;
 ZZ9  =  0.000190304000000;
 
 IA9   = 0.800000000000000;
 
 
 %/* Parameters Joint 10 */ 
 M10  =  10.455;
 
 MX10  =  0.1894464;
 MY10  =   0.0181056;
 MZ10  =  0.0145728;
 XX10  =  0.045873796608;
%  XY10  =  0.000000000000000;
%  XZ10   = 0.000000000000000;
 YY10  =  0.17146605754368;
%  YZ10 =   0.000000000000000;
 ZZ10  =  0.183495186432;
 
 IA10   = 0.800000000000000;
 
 %/* Parameters Joint 11 */ 
 M11  =  4.08;
 
 MX11  =  0.185074;
 MY11  =   0.0216672;
 MZ11  =  0.0031598;
 XX11  =   0.008313487968;
%  XY11  =  0.000000000000000;
%  XZ11   = 0.000000000000000;
 YY11  =  0.06517774566912;
%  YZ11 =   0.000000000000000;
 ZZ11  =  0.06517774566912;
 
 IA11   = 0.800000000000000;
 
 %/* Parameters Joint 12 */ 
 M12  =  2;
 
 MX12  =  0.000190304000000;
 MY12  =  0.000190304000000;
 MZ12  =  0.000190304000000;
 XX12  =  0.000190304000000;
%  XY12  =  0.000000000000000;
%  XZ12   = 0.000000000000000;
 YY12  =  0.000190304000000;
%  YZ12 =   0.000000000000000;
 ZZ12  =  0.000190304000000;
 
 IA12   = 0.800000000000000;
 
 %/* Parameters Joint 13 */ 
 M13  =  1.02;
 
 MX13  =   -0.217113204823866;
 MY13  =  0.00664893206763312;
 MZ13  =  0.0976881557629173;
 XX13  =  0.00913189092582;
%  XY13  =  0.000000000000000;
%  XZ13   = 0.000000000000000;
 YY13  =   0.00864494568288;
%  YZ13 =   0.000000000000000;
 ZZ13  =  0.00192776952342;
 
 IA13   = 0.800000000000000;
 
 
 %/* Parameters Joint 14 */ 
 M14  =  0;
 
 MX14  =  0;
 MY14  =  0;
 MZ14  =  0;
 XX14  =  0;
%  XY14  =  0.000000000000000;
%  XZ14   = 0.000000000000000;
 YY14  =  0;
%  YZ14 =   0.000000000000000;
 ZZ14  =  0;
 
 IA14   = 0.00000000000000;
 
 
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
	WI11=C1.*WX0 + S1.*WY0;
	WI21=-(S1.*WX0) + C1.*WY0;
	W31=QP1 + WZ0;
	WP11=QP1.*WI21 + C1.*WPX0 + S1.*WPY0;
	WP21=-(QP1.*WI11) - S1.*WPX0 + C1.*WPY0;
	WP31=QDP1 + WPZ0;
	DV111=-WI11.^2;
	DV221=-WI21.^2;
	DV331=-W31.^2;
	DV121=WI11.*WI21;
	DV131=W31.*WI11;
	DV231=W31.*WI21;
	U111=DV221 + DV331;
	U121=DV121 - WP31;
	U131=DV131 + WP21;
	U211=DV121 + WP31;
	U221=DV111 + DV331;
	U231=DV231 - WP11;
	U311=DV131 - WP21;
	U321=DV231 + WP11;
	U331=DV111 + DV221;
	VSP11= VPX0 - L1.*(WPY0 + WX0.*WZ0) + L2.*(-WY0.^2 - WZ0.^2);
	VSP21=VPY0 + L2.*(WPZ0 + WX0.*WY0) - L1.*(-WPX0 + WY0.*WZ0);
	VSP31=VPZ0 - L1.*(-WX0.^2 - WY0.^2) + L2.*(-WPY0 + WX0.*WZ0);
	VP11=C1.*VSP11 + S1.*VSP21;
	VP21=-(S1.*VSP11) + C1.*VSP21;
	F11=MX1.*U111 + MY1.*U121 + MZ1.*U131 + M1.*VP11;
	F21=MX1.*U211 + MY1.*U221 + MZ1.*U231 + M1.*VP21;
	F31=MX1.*U311 + MY1.*U321 + MZ1.*U331 + M1.*VSP31;
	PIS11=-YY1 + ZZ1;
	PIS21=XX1 - ZZ1;
	PIS31=-XX1 + YY1;
	No11=DV231.*PIS11 + WP11.*XX1;
	No21=DV131.*PIS21 + WP21.*YY1;
	No31=DV121.*PIS31 + WP31.*ZZ1;
	WI12=S2.*W31 + C2.*WI11;
	WI22=C2.*W31 - S2.*WI11;
	W32=QP2 - WI21;
	WP12=QP2.*WI22 + C2.*WP11 + S2.*WP31;
	WP22=-(QP2.*WI12) - S2.*WP11 + C2.*WP31;
	WP32=QDP2 - WP21;
	DV112=-WI12.^2;
	DV222=-WI22.^2;
	DV332=-W32.^2;
	DV122=WI12.*WI22;
	DV132=W32.*WI12;
	DV232=W32.*WI22;
	U112=DV222 + DV332;
	U122=DV122 - WP32;
	U132=DV132 + WP22;
	U212=DV122 + WP32;
	U222=DV112 + DV332;
	U232=DV232 - WP12;
	U312=DV132 - WP22;
	U322=DV232 + WP12;
	U332=DV112 + DV222;
	VP12=C2.*VP11 + S2.*VSP31;
	VP22=-(S2.*VP11) + C2.*VSP31;
	F12=MX2.*U112 + MY2.*U122 + MZ2.*U132 + M2.*VP12;
	F22=MX2.*U212 + MY2.*U222 + MZ2.*U232 + M2.*VP22;
	F32=MX2.*U312 + MY2.*U322 + MZ2.*U332 - M2.*VP21;
	PIS12=-YY2 + ZZ2;
	PIS22=XX2 - ZZ2;
	PIS32=-XX2 + YY2;
	No12=DV232.*PIS12 + WP12.*XX2;
	No22=DV132.*PIS22 + WP22.*YY2;
	No32=DV122.*PIS32 + WP32.*ZZ2;
	WI13=C3.*WI12 + S3.*WI22;
	WI23=-(S3.*WI12) + C3.*WI22;
	W33=QP3 + W32;
	WP13=QP3.*WI23 + C3.*WP12 + S3.*WP22;
	WP23=-(QP3.*WI13) - S3.*WP12 + C3.*WP22;
	WP33=QDP3 + WP32;
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
	DV115=-WI15.^2;
	DV225=-WI25.^2;
	DV335=-W35.^2;
	DV125=WI15.*WI25;
	DV135=W35.*WI15;
	DV235=W35.*WI25;
	U115=DV225 + DV335;
	U125=DV125 - WP35;
	U135=DV135 + WP25;
	U215=DV125 + WP35;
	U225=DV115 + DV335;
	U235=DV235 - WP15;
	U315=DV135 - WP25;
	U325=DV235 + WP15;
	U335=DV115 + DV225;
	VP15=C5.*VP14 - S5.*VSP34;
	VP25=-(S5.*VP14) - C5.*VSP34;
	F15=MX5.*U115 + MY5.*U125 + MZ5.*U135 + M5.*VP15;
	F25=MX5.*U215 + MY5.*U225 + MZ5.*U235 + M5.*VP25;
	F35=MX5.*U315 + MY5.*U325 + MZ5.*U335 + M5.*VP24;
	PIS15=-YY5 + ZZ5;
	PIS25=XX5 - ZZ5;
	PIS35=-XX5 + YY5;
	No15=DV235.*PIS15 + WP15.*XX5;
	No25=DV135.*PIS25 + WP25.*YY5;
	No35=DV125.*PIS35 + WP35.*ZZ5;
	WI16=-(S6.*W35) + C6.*WI15;
	WI26=-(C6.*W35) - S6.*WI15;
	W36=QP6 + WI25;
	WP16=QP6.*WI26 + C6.*WP15 - S6.*WP35;
	WP26=-(QP6.*WI16) - S6.*WP15 - C6.*WP35;
	WP36=QDP6 + WP25;
	DV116=-WI16.^2;
	DV226=-WI26.^2;
	DV336=-W36.^2;
	DV126=WI16.*WI26;
	DV136=W36.*WI16;
	DV236=W36.*WI26;
	U116=DV226 + DV336;
	U126=DV126 - WP36;
	U136=DV136 + WP26;
	U216=DV126 + WP36;
	U226=DV116 + DV336;
	U236=DV236 - WP16;
	U316=DV136 - WP26;
	U326=DV236 + WP16;
	U336=DV116 + DV226;
	VP16=C6.*VP15 - S6.*VP24;
	VP26=-(S6.*VP15) - C6.*VP24;
	F16=MX6.*U116 + MY6.*U126 + MZ6.*U136 + M6.*VP16;
	F26=MX6.*U216 + MY6.*U226 + MZ6.*U236 + M6.*VP26;
	F36=MX6.*U316 + MY6.*U326 + MZ6.*U336 + M6.*VP25;
	PIS16=-YY6 + ZZ6;
	PIS26=XX6 - ZZ6;
	PIS36=-XX6 + YY6;
	No16=DV236.*PIS16 + WP16.*XX6;
	No26=DV136.*PIS26 + WP26.*YY6;
	No36=DV126.*PIS36 + WP36.*ZZ6;
	DV117=-WI16.^2;
	DV227=-WI26.^2;
	DV337=-W36.^2;
	DV127=WI16.*WI26;
	DV137=W36.*WI16;
	DV237=W36.*WI26;
	U117=DV227 + DV337;
	U127=DV127 - WP36;
	U137=DV137 + WP26;
	U217=DV127 + WP36;
	U227=DV117 + DV337;
	U237=DV237 - WP16;
	U317=DV137 - WP26;
	U327=DV237 + WP16;
	U337=DV117 + DV227;
	VSP17=LOO17.*U116 + VP16;
	VSP27=LOO17.*U216 + VP26;
	VSP37=LOO17.*U316 + VP25;
	F17=MX7.*U117 + MY7.*U127 + MZ7.*U137 + M7.*VSP17;
	F27=MX7.*U217 + MY7.*U227 + MZ7.*U237 + M7.*VSP27;
	F37=MX7.*U317 + MY7.*U327 + MZ7.*U337 + M7.*VSP37;
	PIS17=-YY7 + ZZ7;
	PIS27=XX7 - ZZ7;
	PIS37=-XX7 + YY7;
	No17=DV237.*PIS17 + WP16.*XX7;
	No27=DV137.*PIS27 + WP26.*YY7;
	No37=DV127.*PIS37 + WP36.*ZZ7;
	WI18=C8.*WI16 + S8.*WI26;
	WI28=-(S8.*WI16) + C8.*WI26;
	W38=QP8 + W36;
	WP18=QP8.*WI28 + C8.*WP16 + S8.*WP26;
	WP28=-(QP8.*WI18) - S8.*WP16 + C8.*WP26;
	WP38=QDP8 + WP36;
	DV118=-WI18.^2;
	DV228=-WI28.^2;
	DV338=-W38.^2;
	DV128=WI18.*WI28;
	DV138=W38.*WI18;
	DV238=W38.*WI28;
	U118=DV228 + DV338;
	U128=DV128 - WP38;
	U138=DV138 + WP28;
	U218=DV128 + WP38;
	U228=DV118 + DV338;
	U238=DV238 - WP18;
	U318=DV138 - WP28;
	U328=DV238 + WP18;
	U338=DV118 + DV228;
	VSP18=LOO18.*U117 + VSP17;
	VSP28=LOO18.*U217 + VSP27;
	VSP38=LOO18.*U317 + VSP37;
	VP18=C8.*VSP18 + S8.*VSP28;
	VP28=-(S8.*VSP18) + C8.*VSP28;
	F18=MX8.*U118 + MY8.*U128 + MZ8.*U138 + M8.*VP18;
	F28=MX8.*U218 + MY8.*U228 + MZ8.*U238 + M8.*VP28;
	F38=MX8.*U318 + MY8.*U328 + MZ8.*U338 + M8.*VSP38;
	PIS18=-YY8 + ZZ8;
	PIS28=XX8 - ZZ8;
	PIS38=-XX8 + YY8;
	No18=DV238.*PIS18 + WP18.*XX8;
	No28=DV138.*PIS28 + WP28.*YY8;
	No38=DV128.*PIS38 + WP38.*ZZ8;
	WI19=S9.*W38 + C9.*WI18;
	WI29=C9.*W38 - S9.*WI18;
	W39=QP9 - WI28;
	WP19=QP9.*WI29 + C9.*WP18 + S9.*WP38;
	WP29=-(QP9.*WI19) - S9.*WP18 + C9.*WP38;
	WP39=QDP9 - WP28;
	DV119=-WI19.^2;
	DV229=-WI29.^2;
	DV339=-W39.^2;
	DV129=WI19.*WI29;
	DV139=W39.*WI19;
	DV239=W39.*WI29;
	U119=DV229 + DV339;
	U129=DV129 - WP39;
	U139=DV139 + WP29;
	U219=DV129 + WP39;
	U229=DV119 + DV339;
	U239=DV239 - WP19;
	U319=DV139 - WP29;
	U329=DV239 + WP19;
	U339=DV119 + DV229;
	VP19=C9.*VP18 + S9.*VSP38;
	VP29=-(S9.*VP18) + C9.*VSP38;
	F19=MX9.*U119 + MY9.*U129 + MZ9.*U139 + M9.*VP19;
	F29=MX9.*U219 + MY9.*U229 + MZ9.*U239 + M9.*VP29;
	F39=MX9.*U319 + MY9.*U329 + MZ9.*U339 - M9.*VP28;
	PIS19=-YY9 + ZZ9;
	PIS29=XX9 - ZZ9;
	PIS39=-XX9 + YY9;
	No19=DV239.*PIS19 + WP19.*XX9;
	No29=DV139.*PIS29 + WP29.*YY9;
	No39=DV129.*PIS39 + WP39.*ZZ9;
	WI110=-(S10.*W39) + C10.*WI19;
	WI210=-(C10.*W39) - S10.*WI19;
	W310=QP10 + WI29;
	WP110=QP10.*WI210 + C10.*WP19 - S10.*WP39;
	WP210=-(QP10.*WI110) - S10.*WP19 - C10.*WP39;
	WP310=QDP10 + WP29;
	DV1110=-WI110.^2;
	DV2210=-WI210.^2;
	DV3310=-W310.^2;
	DV1210=WI110.*WI210;
	DV1310=W310.*WI110;
	DV2310=W310.*WI210;
	U1110=DV2210 + DV3310;
	U1210=DV1210 - WP310;
	U1310=DV1310 + WP210;
	U2110=DV1210 + WP310;
	U2210=DV1110 + DV3310;
	U2310=DV2310 - WP110;
	U3110=DV1310 - WP210;
	U3210=DV2310 + WP110;
	U3310=DV1110 + DV2210;
	VP110=C10.*VP19 + S10.*VP28;
	VP210=-(S10.*VP19) + C10.*VP28;
	F110=MX10.*U1110 + MY10.*U1210 + MZ10.*U1310 + M10.*VP110;
	F210=MX10.*U2110 + MY10.*U2210 + MZ10.*U2310 + M10.*VP210;
	F310=MX10.*U3110 + MY10.*U3210 + MZ10.*U3310 + M10.*VP29;
	PIS110=-YY10 + ZZ10;
	PIS210=XX10 - ZZ10;
	PIS310=-XX10 + YY10;
	No110=DV2310.*PIS110 + WP110.*XX10;
	No210=DV1310.*PIS210 + WP210.*YY10;
	No310=DV1210.*PIS310 + WP310.*ZZ10;
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
	U1213=DV1213 - WP313;
	U1313=DV1313 + WP213;
	U2113=DV1213 + WP313;
	U2213=DV1113 + DV3313;
	U2313=DV2313 - WP113;
	U3113=DV1313 - WP213;
	U3213=DV2313 + WP113;
	U3313=DV1113 + DV2213;
	VP113=C13.*VP112 + S13.*VSP312;
	VP213=-(S13.*VP112) + C13.*VSP312;
	F113=MX13.*U1113 + MY13.*U1213 + MZ13.*U1313 + M13.*VP113;
	F213=MX13.*U2113 + MY13.*U2213 + MZ13.*U2313 + M13.*VP213;
	F313=MX13.*U3113 + MY13.*U3213 + MZ13.*U3313 - M13.*VP212;
	PIS113=-YY13 + ZZ13;
	PIS213=XX13 - ZZ13;
	PIS313=-XX13 + YY13;
	No113=DV2313.*PIS113 + WP113.*XX13;
	No213=DV1313.*PIS213 + WP213.*YY13;
	No313=DV1213.*PIS313 + WP313.*ZZ13;
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
	E114=F114 + FX14;
	E214=F214 + FY14;
	E314=F314 + FZ14;
	N114=CX14 + No114 - MZ14.*VSP214 + MY14.*VSP314;
	N214=CY14 + No214 + MZ14.*VSP114 - MX14.*VSP314;
	N314=CZ14 + No314 - MY14.*VSP114 + MX14.*VSP214;
	E113=E114 + F113;
	E213=E214 + F213;
	E313=E314 + F313;
	N113=-(E214.*L1) + N114 + No113 - MY13.*VP212 - MZ13.*VP213;
	N213=E114.*L1 - E314.*L2 + N214 + No213 + MZ13.*VP113 + MX13.*VP212;
	N313=E214.*L2 + N314 + No313 - MY13.*VP113 + MX13.*VP213;
	FDI113=C13.*E113 - E213.*S13;
	FDI313=C13.*E213 + E113.*S13;
	E112=F112 + FDI113;
	E212=-E313 + F212;
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
	E110=F110 + FDI111;
	E210=F210 + FDI211;
	E310=E311 + F310;
	N110=C11.*N111 + No110 - N211.*S11 - MZ10.*VP210 + MY10.*VP29;
	N210=-(E311.*L4) + C11.*N211 + No210 + N111.*S11 + MZ10.*VP110 - MX10.*VP29;
	N310=FDI211.*L4 + N311 + No310 - MY10.*VP110 + MX10.*VP210;
	FDI110=C10.*E110 - E210.*S10;
	FDI310=-(C10.*E210) - E110.*S10;
	E19=F19 + FDI110;
	E29=E310 + F29;
	E39=F39 + FDI310;
	N19=C10.*N110 + No19 - N210.*S10 - MY9.*VP28 - MZ9.*VP29;
	N29=N310 + No29 + MZ9.*VP19 + MX9.*VP28;
	N39=-(C10.*N210) + No39 - N110.*S10 - MY9.*VP19 + MX9.*VP29;
	FDI19=C9.*E19 - E29.*S9;
	FDI39=C9.*E29 + E19.*S9;
	E18=F18 + FDI19;
	E28=-E39 + F28;
	E38=F38 + FDI39;
	N18=C9.*N19 + No18 - N29.*S9 - MZ8.*VP28 + MY8.*VSP38;
	N28=-N39 + No28 + MZ8.*VP18 - MX8.*VSP38;
	N38=C9.*N29 + No38 + N19.*S9 - MY8.*VP18 + MX8.*VP28;
	FDI18=C8.*E18 - E28.*S8;
	FDI28=C8.*E28 + E18.*S8;
	E17=F17 + FDI18;
	E27=F27 + FDI28;
	E37=E38 + F37;
	N17=C8.*N18 + No17 - N28.*S8 - MZ7.*VSP27 + MY7.*VSP37;
	N27=-(E38.*LOO18) + C8.*N28 + No27 + N18.*S8 + MZ7.*VSP17 - MX7.*VSP37;
	N37=FDI28.*LOO18 + N38 + No37 - MY7.*VSP17 + MX7.*VSP27;
	E16=E17 + F16;
	E26=E27 + F26;
	E36=E37 + F36;
	N16=N17 + No16 + MY6.*VP25 - MZ6.*VP26;
	N26=-(E37.*LOO17) + N27 + No26 + MZ6.*VP16 - MX6.*VP25;
	N36=E27.*LOO17 + N37 + No36 - MY6.*VP16 + MX6.*VP26;
	FDI16=C6.*E16 - E26.*S6;
	FDI36=-(C6.*E26) - E16.*S6;
	E15=F15 + FDI16;
	E25=E36 + F25;
	E35=F35 + FDI36;
	N15=C6.*N16 + No15 - N26.*S6 + MY5.*VP24 - MZ5.*VP25;
	N25=N36 + No25 + MZ5.*VP15 - MX5.*VP24;
	N35=-(C6.*N26) + No35 - N16.*S6 - MY5.*VP15 + MX5.*VP25;
	FDI15=C5.*E15 - E25.*S5;
	FDI35=-(C5.*E25) - E15.*S5;
	E14=F14 + FDI15;
	E24=E35 + F24;
	E34=F34 + FDI35;
	N14=C5.*N15 + No14 - N25.*S5 - MZ4.*VP24 + MY4.*VSP34;
	N24=N35 + No24 + MZ4.*VP14 - MX4.*VSP34;
	N34=-(C5.*N25) + No34 - N15.*S5 - MY4.*VP14 + MX4.*VP24;
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
	E12=F12 + FDI13;
	E22=F22 + FDI23;
	E32=E33 + F32;
	N12=C3.*N13 + No12 - N23.*S3 - MY2.*VP21 - MZ2.*VP22;
	N22=-(E33.*L3) + C3.*N23 + No22 + N13.*S3 + MZ2.*VP12 + MX2.*VP21;
	N32=FDI23.*L3 + N33 + No32 - MY2.*VP12 + MX2.*VP22;
	FDI12=C2.*E12 - E22.*S2;
	FDI32=C2.*E22 + E12.*S2;
	E11=F11 + FDI12;
	E21=-E32 + F21;
	E31=F31 + FDI32;
	N11=C2.*N12 + No11 - N22.*S2 - MZ1.*VP21 + MY1.*VSP31;
	N21=-N32 + No21 + MZ1.*VP11 - MX1.*VSP31;
	N31=C2.*N22 + No31 + N12.*S2 - MY1.*VP11 + MX1.*VP21;
	FDI11=C1.*E11 - E21.*S1;
	FDI21=C1.*E21 + E11.*S1;
	GAM1=N31 + IA1.*QDP1;
	GAM2=N32 + IA2.*QDP2;
	GAM3=N33 + IA3.*QDP3;
	GAM4=N34 + IA4.*QDP4;
	GAM5=N35 + IA5.*QDP5;
	GAM6=N36 + IA6.*QDP6;
	GAM8=N38 + IA8.*QDP8;
	GAM9=N39 + IA9.*QDP9;
	GAM10=N310 + IA10.*QDP10;
	GAM11=N311 + IA11.*QDP11;
	GAM12=N312 + IA12.*QDP12;
	GAM13=N313 + IA13.*QDP13;
	E10=FDI11;
	E20=FDI21;
	E30=E31;
	N10=FDI21.*L1 + C1.*N11 - N21.*S1;
	N20=-(FDI11.*L1) - E31.*L2 + C1.*N21 + N11.*S1;
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

    
    F_foot(1,:) = E10;
	F_foot(2,:) = E20;
	F_foot(3,:) = E30;
	M_foot(1,:) = N10;
	M_foot(2,:) = N20;
	M_foot(3,:) = N30;

% *=*
% Number of operations : 741 '+' or '-', 756 '*' or '/'
end