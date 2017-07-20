% (********************************************)
% (** SYMORO+ : SYmbolic MOdelling of RObots **)
% (**========================================**)
% (**      IRCCyN-ECN - 1, rue de la Noe     **)
% (**      B.P.92101                         **)
% (**      44321 Nantes cedex 3, FRANCE      **)
% (**      www.irccyn.ec-nantes.fr           **)
% (********************************************)


%    Name of file : D:\The`se\3D_simulation\Test Symoro functions\functions for locomotor syst from 0 to 4 (BSIPs tuned_added frame 0)\Def_0_4_tuned_f0.dyn




%      Geometric parameters   


% j     ant   mu    sigma gamma b     alpha d     theta r


% 1     0     1     2     0     0     0     0     0     0


% 2     1     1     0     0     0     0     L2    t1    -L1

%                                     Pi
% 3     2     1     0     0     0     --    0     t2    0
%                                     2

% 4     3     1     0     0     0     0     L3    t3    0


% 5     4     1     0     0     0     0     L4    t4    0




%              Inertial parameters

% j     XX    XY    XZ    YY    YZ    ZZ    MX    MY    MZ    M     Ia

% 1     XX0   0     0     YY0   0     ZZ0   MX0   MY0   MZ0   M0    0

% 2     XX1   0     0     YY1   0     ZZ1   MX1   MY1   MZ1   M1    IA1

% 3     XX2   0     0     YY2   0     ZZ2   MX2   MY2   MZ2   M2    IA2

% 4     XX3   0     0     YY3   0     ZZ3   MX3   MY3   MZ3   M3    IA3

% 5     XX4   0     0     YY4   0     ZZ4   MX4   MY4   MZ4   M4    IA4



%  External forces,friction parameters, joint velocities and accelerations

% j      FX     FY     FZ     CX     CY     CZ     FS     FV     QP     QDP

% 1      0      0      0      0      0      0      0      0      0      0

% 2      0      0      0      0      0      0      0      0      QP1    QDP1

% 3      0      0      0      0      0      0      0      0      QP2    QDP2

% 4      0      0      0      0      0      0      0      0      QP3    QDP3

% 5      0      0      0      0      0      0      0      0      QP4    QDP4

% Base velocity, base accelerations, and gravity

% j       W0      WP0     V0      VP0     G

% 1       WX0     WPX0    VX0     VPX0    -9.81

% 2       WY0     WPY0    VY0     VPY0    0

% 3       WZ0     WPZ0    VZ0     VPZ0    0

%  Dynamic model: Newton Euler method
% Equations:

% Declaration of the function
function [F_foot, M_foot, Torque] = Def_0_4_tuned_f0_dyn(Q, QD, QDD, OVDotO,OWDotO,OWO)

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

    
    QP1 = QD(1,:);
    QP2 = QD(2,:);
    QP3 = QD(3,:);
    QP4 = QD(4,:);
    
    
    QDP1 = QDD(1,:);
    QDP2 = QDD(2,:);
    QDP3 = QDD(3,:);
    QDP4 = QDD(4,:);
    

    
    
    WX0 = OWO(1);
    WY0 = OWO(2);
    WZ0 = OWO(3);
    
    WPX0 = OWDotO(1);
    WPY0 = OWDotO(2);
    WPZ0 = OWDotO(3);
            
    VPX0 = OVDotO(1);
    VPY0 = OVDotO(2);
    VPZ0 = OVDotO(3);
    
%     FX14 = F(1,:);
%     FY14 = F(2,:);
%     FZ14 = F(3,:);
%     
%     CX14 = M(1,:);
%     CY14 = M(2,:);
%     CZ14 = M(3,:);

%/* Parameters Joint 0 */ 
 M0   = 1.071550000000000;
 
 MX0 =   0.023863418500000;
 MY0  = -0.132272132000000;
 MZ0  = -0.006461446500000;
 
 XX0  =  0.064804232698000;
%  XY0  =  0.000000000000000;
%  XZ0  =  0.000000000000000;
 YY0  =  0.058458873030000;
%  YZ0  = -0.014588938940000;
 ZZ0  =  0.008374752388000;
 
%  IA0  =  0.000000000000000;
 
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
 M4  =  0; % doit mettre une masse ici
 
 MX4  =  0;
 MY4  =  0;
 MZ4  =  0.;
 XX4  =  0.;
%  XY4  =  0.000000000000000;
%  XZ4   = 0.000000000000000;
 YY4  =  0.;
%  YZ4 =   0.000000000000000;
 ZZ4  =  0.;
 
 IA4   = 0.800000000000000;

% Function description:

	S2=sin(t1);
	C2=cos(t1);
	S3=sin(t2);
	C3=cos(t2);
	S4=sin(t3);
	C4=cos(t3);
	S5=sin(t4);
	C5=cos(t4);
	DV111=-WX0.^2;
	DV221=-WY0.^2;
	DV331=-WZ0.^2;
	DV121=WX0.*WY0;
	DV131=WX0.*WZ0;
	DV231=WY0.*WZ0;
	U111=DV221 + DV331;
	U121=DV121 - WPZ0;
	U131=DV131 + WPY0;
	U211=DV121 + WPZ0;
	U221=DV111 + DV331;
	U231=DV231 - WPX0;
	U311=DV131 - WPY0;
	U321=DV231 + WPX0;
	U331=DV111 + DV221;
	VSP11=9.81 + VPX0;
	F11=MX0.*U111 + MY0.*U121 + MZ0.*U131 + M0.*VSP11;
	F21=MX0.*U211 + MY0.*U221 + MZ0.*U231 + M0.*VPY0;
	F31=MX0.*U311 + MY0.*U321 + MZ0.*U331 + M0.*VPZ0;
	PIS11=-YY0 + ZZ0;
	PIS21=XX0 - ZZ0;
	PIS31=-XX0 + YY0;
	No11=DV231.*PIS11 + WPX0.*XX0;
	No21=DV131.*PIS21 + WPY0.*YY0;
	No31=DV121.*PIS31 + WPZ0.*ZZ0;
	WI12=C2.*WX0 + S2.*WY0;
	WI22=-(S2.*WX0) + C2.*WY0;
	W32=QP1 + WZ0;
	WP12=QP1.*WI22 + C2.*WPX0 + S2.*WPY0;
	WP22=-(QP1.*WI12) - S2.*WPX0 + C2.*WPY0;
	WP32=QDP1 + WPZ0;
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
	VSP12=L2.*U111 - L1.*U131 + VSP11;
	VSP22=L2.*U211 - L1.*U231 + VPY0;
	VSP32=L2.*U311 - L1.*U331 + VPZ0;
	VP12=C2.*VSP12 + S2.*VSP22;
	VP22=-(S2.*VSP12) + C2.*VSP22;
	F12=MX1.*U112 + MY1.*U122 + MZ1.*U132 + M1.*VP12;
	F22=MX1.*U212 + MY1.*U222 + MZ1.*U232 + M1.*VP22;
	F32=MX1.*U312 + MY1.*U322 + MZ1.*U332 + M1.*VSP32;
	PIS12=-YY1 + ZZ1;
	PIS22=XX1 - ZZ1;
	PIS32=-XX1 + YY1;
	No12=DV232.*PIS12 + WP12.*XX1;
	No22=DV132.*PIS22 + WP22.*YY1;
	No32=DV122.*PIS32 + WP32.*ZZ1;
	WI13=S3.*W32 + C3.*WI12;
	WI23=C3.*W32 - S3.*WI12;
	W33=QP2 - WI22;
	WP13=QP2.*WI23 + C3.*WP12 + S3.*WP32;
	WP23=-(QP2.*WI13) - S3.*WP12 + C3.*WP32;
	WP33=QDP2 - WP22;
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
	VP13=C3.*VP12 + S3.*VSP32;
	VP23=-(S3.*VP12) + C3.*VSP32;
	F13=MX2.*U113 + MY2.*U123 + MZ2.*U133 + M2.*VP13;
	F23=MX2.*U213 + MY2.*U223 + MZ2.*U233 + M2.*VP23;
	F33=MX2.*U313 + MY2.*U323 + MZ2.*U333 - M2.*VP22;
	PIS13=-YY2 + ZZ2;
	PIS23=XX2 - ZZ2;
	PIS33=-XX2 + YY2;
	No13=DV233.*PIS13 + WP13.*XX2;
	No23=DV133.*PIS23 + WP23.*YY2;
	No33=DV123.*PIS33 + WP33.*ZZ2;
	WI14=C4.*WI13 + S4.*WI23;
	WI24=-(S4.*WI13) + C4.*WI23;
	W34=QP3 + W33;
	WP14=QP3.*WI24 + C4.*WP13 + S4.*WP23;
	WP24=-(QP3.*WI14) - S4.*WP13 + C4.*WP23;
	WP34=QDP3 + WP33;
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
	VSP14=L3.*U113 + VP13;
	VSP24=L3.*U213 + VP23;
	VSP34=L3.*U313 - VP22;
	VP14=C4.*VSP14 + S4.*VSP24;
	VP24=-(S4.*VSP14) + C4.*VSP24;
	F14=MX3.*U114 + MY3.*U124 + MZ3.*U134 + M3.*VP14;
	F24=MX3.*U214 + MY3.*U224 + MZ3.*U234 + M3.*VP24;
	F34=MX3.*U314 + MY3.*U324 + MZ3.*U334 + M3.*VSP34;
	PIS14=-YY3 + ZZ3;
	PIS24=XX3 - ZZ3;
	PIS34=-XX3 + YY3;
	No14=DV234.*PIS14 + WP14.*XX3;
	No24=DV134.*PIS24 + WP24.*YY3;
	No34=DV124.*PIS34 + WP34.*ZZ3;
	WI15=C5.*WI14 + S5.*WI24;
	WI25=-(S5.*WI14) + C5.*WI24;
	W35=QP4 + W34;
	WP15=QP4.*WI25 + C5.*WP14 + S5.*WP24;
	WP25=-(QP4.*WI15) - S5.*WP14 + C5.*WP24;
	WP35=QDP4 + WP34;
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
	VSP15=L4.*U114 + VP14;
	VSP25=L4.*U214 + VP24;
	VSP35=L4.*U314 + VSP34;
	VP15=C5.*VSP15 + S5.*VSP25;
	VP25=-(S5.*VSP15) + C5.*VSP25;
	F15=MX4.*U115 + MY4.*U125 + MZ4.*U135 + M4.*VP15;
	F25=MX4.*U215 + MY4.*U225 + MZ4.*U235 + M4.*VP25;
	F35=MX4.*U315 + MY4.*U325 + MZ4.*U335 + M4.*VSP35;
	PIS15=-YY4 + ZZ4;
	PIS25=XX4 - ZZ4;
	PIS35=-XX4 + YY4;
	No15=DV235.*PIS15 + WP15.*XX4;
	No25=DV135.*PIS25 + WP25.*YY4;
	No35=DV125.*PIS35 + WP35.*ZZ4;
	N15=No15 - MZ4.*VP25 + MY4.*VSP35;
	N25=No25 + MZ4.*VP15 - MX4.*VSP35;
	N35=No35 - MY4.*VP15 + MX4.*VP25;
	FDI15=C5.*F15 - F25.*S5;
	FDI25=C5.*F25 + F15.*S5;
	E14=F14 + FDI15;
	E24=F24 + FDI25;
	E34=F34 + F35;
	N14=C5.*N15 + No14 - N25.*S5 - MZ3.*VP24 + MY3.*VSP34;
	N24=-(F35.*L4) + C5.*N25 + No24 + N15.*S5 + MZ3.*VP14 - MX3.*VSP34;
	N34=FDI25.*L4 + N35 + No34 - MY3.*VP14 + MX3.*VP24;
	FDI14=C4.*E14 - E24.*S4;
	FDI24=C4.*E24 + E14.*S4;
	E13=F13 + FDI14;
	E23=F23 + FDI24;
	E33=E34 + F33;
	N13=C4.*N14 + No13 - N24.*S4 - MY2.*VP22 - MZ2.*VP23;
	N23=-(E34.*L3) + C4.*N24 + No23 + N14.*S4 + MZ2.*VP13 + MX2.*VP22;
	N33=FDI24.*L3 + N34 + No33 - MY2.*VP13 + MX2.*VP23;
	FDI13=C3.*E13 - E23.*S3;
	FDI33=C3.*E23 + E13.*S3;
	E12=F12 + FDI13;
	E22=-E33 + F22;
	E32=F32 + FDI33;
	N12=C3.*N13 + No12 - N23.*S3 - MZ1.*VP22 + MY1.*VSP32;
	N22=-N33 + No22 + MZ1.*VP12 - MX1.*VSP32;
	N32=C3.*N23 + No32 + N13.*S3 - MY1.*VP12 + MX1.*VP22;
	FDI12=C2.*E12 - E22.*S2;
	FDI22=C2.*E22 + E12.*S2;
	E11=F11 + FDI12;
	E21=F21 + FDI22;
	E31=E32 + F31;
	N11=FDI22.*L1 + C2.*N12 + No11 - N22.*S2 - MZ0.*VPY0 + MY0.*VPZ0;
	N21=-(FDI12.*L1) - E32.*L2 + C2.*N22 + No21 + N12.*S2 - MX0.*VPZ0 + MZ0.*VSP11;
	N31=FDI22.*L2 + N32 + No31 + MX0.*VPY0 - MY0.*VSP11;
	GAM2=N32 + IA1.*QDP1;
	GAM3=N33 + IA2.*QDP2;
	GAM4=N34 + IA3.*QDP3;
	GAM5=N35 + IA4.*QDP4;
	E10=E11;
	E20=E21;
	E30=E31;
	N10=N11;
	N20=N21;
	N30=N31;

Torque(1,:) = GAM2;
	Torque(2,:) = GAM3;
	Torque(3,:) = GAM4;
	Torque(4,:) = GAM5;

    
    F_foot(1,:) = E10;
	F_foot(2,:) = E20;
	F_foot(3,:) = E30;
	M_foot(1,:) = N10;
	M_foot(2,:) = N20;
	M_foot(3,:) = N30;
% *=*
% Number of operations : 255 '+' or '-', 262 '*' or '/'
end