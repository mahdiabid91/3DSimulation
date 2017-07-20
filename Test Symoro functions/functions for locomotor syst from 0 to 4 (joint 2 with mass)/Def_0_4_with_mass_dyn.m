% (********************************************)
% (** SYMORO+ : SYmbolic MOdelling of RObots **)
% (**========================================**)
% (**      IRCCyN-ECN - 1, rue de la Noe     **)
% (**      B.P.92101                         **)
% (**      44321 Nantes cedex 3, FRANCE      **)
% (**      www.irccyn.ec-nantes.fr           **)
% (********************************************)


%    Name of file : D:\The`se\3D_simulation\Test Symoro functions\functions for locomotor syst from 0 to 4 (joint 2 with mass)\Def_0_4_with_mass.dyn




%      Geometric parameters   


% j     ant   mu    sigma gamma b     alpha d     theta r


% 1     0     1     0     0     0     0     L2    t1    -L1

%                                     Pi
% 2     1     1     0     0     0     --    0     t2    0
%                                     2

% 3     2     1     0     0     0     0     L3    t3    0


% 4     3     1     0     0     0     0     L4    t4    0




%              Inertial parameters

% j     XX    XY    XZ    YY    YZ    ZZ    MX    MY    MZ    M     Ia

% 1     XX1   0     0     YY1   0     ZZ1   MX1   MY1   MZ1   M1    0

% 2     0     0     0     0     0     0     0     0     0     M3    0

% 3     XX3   0     0     YY3   0     ZZ3   MX3   MY3   MZ3   M4    0

% 4     XX4   0     0     YY4   0     ZZ4   MX4   MY4   MZ4   M5    0



%  External forces,friction parameters, joint velocities and accelerations

% j      FX     FY     FZ     CX     CY     CZ     FS     FV     QP     QDP

% 1      0      0      0      0      0      0      0      0      QP1    QDP1

% 2      0      0      0      0      0      0      0      0      QP2    QDP2

% 3      0      0      0      0      0      0      0      0      QP3    QDP3

% 4      0      0      0      0      0      0      0      0      QP4    QDP4

% Base velocity, base accelerations, and gravity

% j       W0      WP0     V0      VP0     G

% 1       WX0     WPX0    VX0     VPX0    -9.81

% 2       WY0     WPY0    VY0     VPY0    0

% 3       WZ0     WPZ0    VZ0     VPZ0    0

%  Dynamic model: Newton Euler method
% Equations:

% Declaration of the function
function [F_foot, M_foot, Torque]=Def_0_4_with_mass_dyn(Q, QD, QDD, OVDotO,OWDotO,OWO)


% Declaration of global input variables
global Lt L1 L2 L3 L4 L5 L6 L7 L8 L9 L10 L11 Lp lp L
global M1 M3 M4 M11 M12 M14 M15 M16 M19 M20 M23 M24 M25
global MX1 MX3 MX4 MX11 MX12 MX14 MX15 MX16 MX19 MX20 MX23 MX24 MX25
global MY1 MY3 MY4 MY11 MY12 MY14 MY15 MY16 MY19 MY20 MY23 MY24 MY25
global MZ1 MZ3 MZ4 MZ11 MZ12 MZ14 MZ15 MZ16 MZ19 MZ20 MZ23 MZ24 MZ25
global XX1 XX3 XX4 XX11 XX12 XX14 XX15 XX16 XX19 XX20 XX23 XX24 XX25
global YY1 YY3 YY4 YY11 YY12 YY14 YY15 YY16 YY19 YY20 YY23 YY24 YY25
global ZZ1 ZZ3 ZZ4 ZZ11 ZZ12 ZZ14 ZZ15 ZZ16 ZZ19 ZZ20 ZZ23 ZZ24 ZZ25



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

% Function description:

	S1=sin(t1);
	C1=cos(t1);
	S2=sin(t2);
	C2=cos(t2);
	S3=sin(t3);
	C3=cos(t3);
	S4=sin(t4);
	C4=cos(t4);
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
	VSP11=9.81 + VPX0 - L1.*(WPY0 + WX0.*WZ0) + L2.*(-WY0.^2 - WZ0.^2);
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
	DV222=-WI22.^2;
	DV332=-W32.^2;
	DV122=WI12.*WI22;
	DV132=W32.*WI12;
	U112=DV222 + DV332;
	U212=DV122 + WP32;
	U312=DV132 - WP22;
	VP12=C2.*VP11 + S2.*VSP31;
	VP22=-(S2.*VP11) + C2.*VSP31;
	F12=M3.*VP12;
	F22=M3.*VP22;
	F32=-(M3.*VP21);
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
	F13=MX3.*U113 + MY3.*U123 + MZ3.*U133 + M4.*VP13;
	F23=MX3.*U213 + MY3.*U223 + MZ3.*U233 + M4.*VP23;
	F33=MX3.*U313 + MY3.*U323 + MZ3.*U333 + M4.*VSP33;
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
	F14=MX4.*U114 + MY4.*U124 + MZ4.*U134 + M11.*VP14;
	F24=MX4.*U214 + MY4.*U224 + MZ4.*U234 + M11.*VP24;
	F34=MX4.*U314 + MY4.*U324 + MZ4.*U334 + M11.*VSP34;
	PIS14=-YY4 + ZZ4;
	PIS24=XX4 - ZZ4;
	PIS34=-XX4 + YY4;
	No14=DV234.*PIS14 + WP14.*XX4;
	No24=DV134.*PIS24 + WP24.*YY4;
	No34=DV124.*PIS34 + WP34.*ZZ4;
	N14=No14 - MZ4.*VP24 + MY4.*VSP34;
	N24=No24 + MZ4.*VP14 - MX4.*VSP34;
	N34=No34 - MY4.*VP14 + MX4.*VP24;
	FDI14=C4.*F14 - F24.*S4;
	FDI24=C4.*F24 + F14.*S4;
	E13=F13 + FDI14;
	E23=F23 + FDI24;
	E33=F33 + F34;
	N13=C4.*N14 + No13 - N24.*S4 - MZ3.*VP23 + MY3.*VSP33;
	N23=-(F34.*L4) + C4.*N24 + No23 + N14.*S4 + MZ3.*VP13 - MX3.*VSP33;
	N33=FDI24.*L4 + N34 + No33 - MY3.*VP13 + MX3.*VP23;
	FDI13=C3.*E13 - E23.*S3;
	FDI23=C3.*E23 + E13.*S3;
	E12=F12 + FDI13;
	E22=F22 + FDI23;
	E32=E33 + F32;
	N12=C3.*N13 - N23.*S3;
	N22=-(E33.*L3) + C3.*N23 + N13.*S3;
	N32=FDI23.*L3 + N33;
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
	GAM1=N31;
	GAM2=N32;
	GAM3=N33;
	GAM4=N34;
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

    
    F_foot(1,:) = E10;
	F_foot(2,:) = E20;
	F_foot(3,:) = E30;
	M_foot(1,:) = N10;
	M_foot(2,:) = N20;
	M_foot(3,:) = N30;
% *=*
% Number of operations : 191 '+' or '-', 213 '*' or '/'
end