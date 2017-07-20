% (********************************************)
% (** SYMORO+ : SYmbolic MOdelling of RObots **)
% (**========================================**)
% (**      IRCCyN-ECN - 1, rue de la Noe     **)
% (**      B.P.92101                         **)
% (**      44321 Nantes cedex 3, FRANCE      **)
% (**      www.irccyn.ec-nantes.fr           **)
% (********************************************)


%    Name of file : D:\The`se\3D_simulation\Test Symoro functions\functions for 3dbiped with tuned BSIPs fct of anthropo with IAs\Def3Dbiped_tuned3.dyn




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

% 1      xx1    0      0      yy1    0      zz1    mx1    my1    mz1    m1     IA1

% 2      xx2    0      0      yy2    0      zz2    mx2    my2    mz2    m2     IA2

% 3      xx3    0      0      yy3    0      zz3    mx3    my3    mz3    m3     IA3

% 4      xx4    0      0      yy4    0      zz4    mx4    my4    mz4    m4     IA4

% 5      xx5    0      0      yy5    0      zz5    mx5    my5    mz5    m5     IA5

% 6      xx6    0      0      yy6    0      zz6    mx6    my6    mz6    m6     IA6

% 7      xx7    0      0      yy7    0      zz7    mx7    my7    mz7    m7     IA7

% 8      xx8    0      0      yy8    0      zz8    mx8    my8    mz8    m8     IA8

% 9      xx9    0      0      yy9    0      zz9    mx9    my9    mz9    m9     IA9

% 10     xx10   0      0      yy10   0      zz10   mx10   my10   mz10   m10    IA10

% 11     xx11   0      0      yy11   0      zz11   mx11   my11   mz11   m11    IA11

% 12     xx12   0      0      yy12   0      zz12   mx12   my12   mz12   m12    IA12

% 13     xx13   0      0      yy13   0      zz13   mx13   my13   mz13   m13    IA13

% 14     xx14   0      0      yy14   0      zz14   mx14   my14   mz14   m14    IA14

% 15     xx15   0      0      yy15   0      zz15   mx15   my15   mz15   m15    IA15

% 16     xx16   0      0      yy16   0      zz16   mx16   my16   mz16   m16    IA16

% 17     xx17   0      0      yy17   0      zz17   mx17   my17   mz17   m17    IA17

% 18     xx18   0      0      yy18   0      zz18   mx18   my18   mz18   m18    IA18

% 19     xx19   0      0      yy19   0      zz19   mx19   my19   mz19   m19    IA19

% 20     xx20   0      0      yy20   0      zz20   mx20   my20   mz20   m20    IA20

% 21     xx21   0      0      yy21   0      zz21   mx21   my21   mz21   m21    IA21

% 22     xx22   0      0      yy22   0      zz22   mx22   my22   mz22   m22    IA22

% 23     xx23   0      0      yy23   0      zz23   mx23   my23   mz23   m23    IA23

% 24     xx24   0      0      yy24   0      zz24   mx24   my24   mz24   m24    IA24

% 25     xx25   0      0      yy25   0      zz25   mx25   my25   mz25   m25    IA25



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

% j      W0     WP0    V0     VP0    G

% 1      WX0    WPX0   VX0    VPX0   G1

% 2      WY0    WPY0   VY0    VPY0   0

% 3      WZ0    WPZ0   VZ0    VPZ0   0

%  Dynamic model: Newton Euler method
% Equations:

% Declaration of the function
function [F_foot, M_foot, Torque, ZMP] = Def3Dbiped_tuned3_dyn_IA(Q, QD, QDD, OVDotO,OWDotO,OWO,F,M,G1)

% return the reaction force and moments on the stance foot (right)
% torque, Q,QD,QDD is ndof x nsamples matrix
% F_foot, M_foot,F,M is 3 x nsamples matrix
% ZMP is 2 x nsamples matrix
global nsamples

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

%/* Parameters Joint 1 */ 
 m1   =  M1;
 
 mx1 =   MX1;
 my1 =  MY1;
 mz1 =  MZ1;
 
 xx1 =  XX1;
 yy1  =  YY1;
 zz1  =  ZZ1;
 
 IA1=0.8;
%/* Parameters Joint 2 */ 
 m2  =  0;
 
 mx2  =  0;
 my2  =  0;
 mz2  =  0;
 
 xx2  =  XX1;
 yy2  =  YY1;
 zz2  = ZZ1;
 
 IA2=0.8;

%/* Parameters Joint 3 */ 
 m3  =  M3;
 
 mx3 =   MX3;
 my3 =  MY3;
 mz3 =  MZ3;
 
 xx3 =  XX3;
 yy3  =  YY3;
 zz3  =  ZZ3;
  
  IA3=0.8;

%/* Parameters Joint 4 */ 
 m4  =  M4;
 
 mx4 =   MX4;
 my4 =  MY4;
 mz4 =  MZ4;
 
 xx4 =  XX4;
 yy4  =  YY4;
 zz4  =  ZZ4;
 
  IA4=0.8;

%/* Parameters Joint 5 */ 
 m5  =  0;
 
 mx5    =0;
 my5    =0;
 mz5   =0;
 
 xx5    =ZZ4;
 yy5    =XX4;
 zz5    =YY4;
 
  IA5=0.8;

%/* Parameters Joint 6 */ 
 m6    =0;
 
 mx6  = 0;
 my6   = 0;
 mz6  = 0;
 
 xx6    =ZZ4;
 yy6    =YY4;
 zz6    =XX4;
 
  IA6=0.8;

%/* Parameters Joint 7 */ 
 m7  =  0;
 
 mx7  = 0;
 my7  = 0;
 mz7  = 0;
 
 xx7  =  XX15;
 yy7   = YY15;
 zz7   = ZZ15;
 
   IA7=0;

%/* Parameters Joint 8 */ 
 m8  =  0;
 
 mx8 =   0;
 my8 =   0;
 mz8  =  0;
 
 xx8  =  ZZ4;
 yy8  =  YY4;
 zz8  =  XX4;
 
  IA8=0.8;

%/* Parameters Joint 9 */ 
 m9    =0;
 
 mx9    =0;
 my9    =0;
 mz9    =0;
 
 xx9    =XX4;
 yy9    =ZZ4;
 zz9    =YY4;
 
   IA9=0.8;

%/* Parameters Joint 10 */ 
 m10  =  0;
 
 mx10 =  0;
 my10  = 0;
 mz10  = 0;
 
 xx10    =XX4;
 yy10    =YY4;
 zz10    =ZZ4;
 
   IA10=0.8;

%/* Parameters Joint 11 */ 
 m11   = M11;
 
 mx11 =   MX11;
 my11 =  MY11;
 mz11 =  MZ11;
 
 xx11 =  XX11;
 yy11  =  YY11;
 zz11  =  ZZ11;
 
  IA11=0.8;

%/* Parameters Joint 12 */ ;
 m12    =M12;
 
 mx12 =   MX12;
 my12 =  MY12;
 mz12 =  MZ12;
 
 xx12 =  XX12;
 yy12  =  YY12;
 zz12  =  ZZ12;
  
  IA12=0.8;

%/* Parameters Joint 13 */ 
 m13   = 0;
 
 mx13  = 0;
 my13  = 0;
 mz13  = 0;
 
 xx13    =XX14;
 yy13    =YY14;
 zz13    =ZZ14;
 
  IA13=0.8;

%/* Parameters Joint 14 */ 
 m14    =M14;
 
 mx14 =   MX14;
 my14 =  MY14;
 mz14 =  MZ14;
 
 xx14 =  XX14;
 yy14  =  YY14;
 zz14  =  ZZ14;
 
   IA14=0;

%/* Parameters Joint 15 */ 
 m15   = M15;
 
 mx15 =   MX15;
 my15 =  MY15;
 mz15 =  MZ15;
 
 xx15 =  XX15;
 yy15  =  YY15;
 zz15  =  ZZ15;
 
   IA15=0.8;

%/* Parameters Joint 16 */ 
 m16  =  M16;
 
 mx16 =   MX16;
 my16 =  MY16;
 mz16 =  MZ16;
 
 xx16 =  XX16;
 yy16  =  YY16;
 zz16  =  ZZ16;
 
  IA16=0.8;

%/* Parameters Joint 17 */ 
 m17    =0;
 
 mx17    =0;
 my17    =0;
 mz17    =0;
 
 xx17  = XX19;
 yy17  = ZZ19;
 zz17  = YY19;
  
  IA17=0.8;

%/* Parameters Joint 18 */ 
 m18   = 0;
 
 mx18  =  0;
 my18  = 0;
 mz18  = 0;
 
 xx18   = XX19;
 yy18   = YY19;
 zz18   = ZZ19;
  
  IA18=0.8;

%/* Parameters Joint 19 */ 
 m19    =M19;
 
 mx19 =  MX19;
 my19 =  MY19;
 mz19 =  MZ19;
 
 xx19 =  XX19;
 yy19 =  YY19;
 zz19 =  ZZ19;
  
  IA19=0.8;

%/* Parameters Joint 20 */ 
 m20    =M20;
 
 mx20 =   MX20;
 my20 =  MY20;
 mz20 =  MZ20;
 
 xx20 =  XX20;
 yy20  =  YY20;
 zz20  =  ZZ20;
 
  IA20=0;

%/* Parameters Joint 21 */ 
 m21   = 0;
 
 mx21  = 0;
 my21  = 0;
 mz21  = 0;
 
 xx21  = XX23;
 yy21  =  ZZ23;
 zz21  =  YY23;
  
  IA21=0.8;

%/* Parameters Joint 22 */ 
 m22  =  0;
 
 mx22 =  0;
 my22  = 0;
 mz22  = 0;
 
 xx22  = XX23;
 yy22  =  YY23;
 zz22  =  ZZ23;
 
  IA22=0.8;

%/* Parameters Joint 23 */ 
 m23    =M23;
 
 mx23 =   MX23;
 my23 =  MY23;
 mz23 =  MZ23;
 
 xx23 =  XX23;
 yy23  =  YY23;
 zz23  =  ZZ23;
 
  IA23=0.8;

%/* Parameters Joint 24 */ 
 m24  =  M24;
 
 mx24 =   MX24;
 my24 =  MY24;
 mz24 =  MZ24;
 
 xx24 =  XX24;
 yy24  =  YY24;
 zz24  =  ZZ24;
 
  IA24=0;

%/* Parameters Joint 25 */ 
 m25  =  M25;
 
 mx25 =   MX25;
 my25 =  MY25;
 mz25 =  MZ25;
 
 xx25 =  XX25;
 yy25  =  YY25;
 zz25  =  ZZ25;
 
 IA25=0;

% Function description:
%% 
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
	VSP11=-G1 + VPX0 - L1.*(WPY0 + WX0.*WZ0) + L2.*(-WY0.^2 - WZ0.^2);
	VSP21=VPY0 + L2.*(WPZ0 + WX0.*WY0) - L1.*(-WPX0 + WY0.*WZ0);
	VSP31=VPZ0 - L1.*(-WX0.^2 - WY0.^2) + L2.*(-WPY0 + WX0.*WZ0);
	VP11=C1.*VSP11 + S1.*VSP21;
	VP21=-(S1.*VSP11) + C1.*VSP21;
	F11=mx1.*U111 + my1.*U121 + mz1.*U131 + m1.*VP11;
	F21=mx1.*U211 + my1.*U221 + mz1.*U231 + m1.*VP21;
	F31=mx1.*U311 + my1.*U321 + mz1.*U331 + m1.*VSP31;
	PIS11=-yy1 + zz1;
	PIS21=xx1 - zz1;
	PIS31=-xx1 + yy1;
	No11=DV231.*PIS11 + WP11.*xx1;
	No21=DV131.*PIS21 + WP21.*yy1;
	No31=DV121.*PIS31 + WP31.*zz1;
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
	F12=mx2.*U112 + my2.*U122 + mz2.*U132 + m2.*VP12;
	F22=mx2.*U212 + my2.*U222 + mz2.*U232 + m2.*VP22;
	F32=mx2.*U312 + my2.*U322 + mz2.*U332 - m2.*VP21;
	PIS12=-yy2 + zz2;
	PIS22=xx2 - zz2;
	PIS32=-xx2 + yy2;
	No12=DV232.*PIS12 + WP12.*xx2;
	No22=DV132.*PIS22 + WP22.*yy2;
	No32=DV122.*PIS32 + WP32.*zz2;
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
	F13=mx3.*U113 + my3.*U123 + mz3.*U133 + m3.*VP13;
	F23=mx3.*U213 + my3.*U223 + mz3.*U233 + m3.*VP23;
	F33=mx3.*U313 + my3.*U323 + mz3.*U333 + m3.*VSP33;
	PIS13=-yy3 + zz3;
	PIS23=xx3 - zz3;
	PIS33=-xx3 + yy3;
	No13=DV233.*PIS13 + WP13.*xx3;
	No23=DV133.*PIS23 + WP23.*yy3;
	No33=DV123.*PIS33 + WP33.*zz3;
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
	F14=mx4.*U114 + my4.*U124 + mz4.*U134 + m4.*VP14;
	F24=mx4.*U214 + my4.*U224 + mz4.*U234 + m4.*VP24;
	F34=mx4.*U314 + my4.*U324 + mz4.*U334 + m4.*VSP34;
	PIS14=-yy4 + zz4;
	PIS24=xx4 - zz4;
	PIS34=-xx4 + yy4;
	No14=DV234.*PIS14 + WP14.*xx4;
	No24=DV134.*PIS24 + WP24.*yy4;
	No34=DV124.*PIS34 + WP34.*zz4;
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
	F15=mx5.*U115 + my5.*U125 + mz5.*U135 + m5.*VP15;
	F25=mx5.*U215 + my5.*U225 + mz5.*U235 + m5.*VP25;
	F35=mx5.*U315 + my5.*U325 + mz5.*U335 + m5.*VP24;
	PIS15=-yy5 + zz5;
	PIS25=xx5 - zz5;
	PIS35=-xx5 + yy5;
	No15=DV235.*PIS15 + WP15.*xx5;
	No25=DV135.*PIS25 + WP25.*yy5;
	No35=DV125.*PIS35 + WP35.*zz5;
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
	F16=mx6.*U116 + my6.*U126 + mz6.*U136 + m6.*VP16;
	F26=mx6.*U216 + my6.*U226 + mz6.*U236 + m6.*VP26;
	F36=mx6.*U316 + my6.*U326 + mz6.*U336 + m6.*VP25;
	PIS16=-yy6 + zz6;
	PIS26=xx6 - zz6;
	PIS36=-xx6 + yy6;
	No16=DV236.*PIS16 + WP16.*xx6;
	No26=DV136.*PIS26 + WP26.*yy6;
	No36=DV126.*PIS36 + WP36.*zz6;
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
	F17=mx7.*U117 + my7.*U127 + mz7.*U137 + m7.*VSP17;
	F27=mx7.*U217 + my7.*U227 + mz7.*U237 + m7.*VSP27;
	F37=mx7.*U317 + my7.*U327 + mz7.*U337 + m7.*VSP37;
	PIS17=-yy7 + zz7;
	PIS27=xx7 - zz7;
	PIS37=-xx7 + yy7;
	No17=DV237.*PIS17 + WP16.*xx7;
	No27=DV137.*PIS27 + WP26.*yy7;
	No37=DV127.*PIS37 + WP36.*zz7;
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
	F18=mx8.*U118 + my8.*U128 + mz8.*U138 + m8.*VP18;
	F28=mx8.*U218 + my8.*U228 + mz8.*U238 + m8.*VP28;
	F38=mx8.*U318 + my8.*U328 + mz8.*U338 + m8.*VSP38;
	PIS18=-yy8 + zz8;
	PIS28=xx8 - zz8;
	PIS38=-xx8 + yy8;
	No18=DV238.*PIS18 + WP18.*xx8;
	No28=DV138.*PIS28 + WP28.*yy8;
	No38=DV128.*PIS38 + WP38.*zz8;
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
	F19=mx9.*U119 + my9.*U129 + mz9.*U139 + m9.*VP19;
	F29=mx9.*U219 + my9.*U229 + mz9.*U239 + m9.*VP29;
	F39=mx9.*U319 + my9.*U329 + mz9.*U339 - m9.*VP28;
	PIS19=-yy9 + zz9;
	PIS29=xx9 - zz9;
	PIS39=-xx9 + yy9;
	No19=DV239.*PIS19 + WP19.*xx9;
	No29=DV139.*PIS29 + WP29.*yy9;
	No39=DV129.*PIS39 + WP39.*zz9;
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
	F110=mx10.*U1110 + my10.*U1210 + mz10.*U1310 + m10.*VP110;
	F210=mx10.*U2110 + my10.*U2210 + mz10.*U2310 + m10.*VP210;
	F310=mx10.*U3110 + my10.*U3210 + mz10.*U3310 + m10.*VP29;
	PIS110=-yy10 + zz10;
	PIS210=xx10 - zz10;
	PIS310=-xx10 + yy10;
	No110=DV2310.*PIS110 + WP110.*xx10;
	No210=DV1310.*PIS210 + WP210.*yy10;
	No310=DV1210.*PIS310 + WP310.*zz10;
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
	F111=mx11.*U1111 + my11.*U1211 + mz11.*U1311 + m11.*VP111;
	F211=mx11.*U2111 + my11.*U2211 + mz11.*U2311 + m11.*VP211;
	F311=mx11.*U3111 + my11.*U3211 + mz11.*U3311 + m11.*VSP311;
	PIS111=-yy11 + zz11;
	PIS211=xx11 - zz11;
	PIS311=-xx11 + yy11;
	No111=DV2311.*PIS111 + WP111.*xx11;
	No211=DV1311.*PIS211 + WP211.*yy11;
	No311=DV1211.*PIS311 + WP311.*zz11;
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
	F112=mx12.*U1112 + my12.*U1212 + mz12.*U1312 + m12.*VP112;
	F212=mx12.*U2112 + my12.*U2212 + mz12.*U2312 + m12.*VP212;
	F312=mx12.*U3112 + my12.*U3212 + mz12.*U3312 + m12.*VSP312;
	PIS112=-yy12 + zz12;
	PIS212=xx12 - zz12;
	PIS312=-xx12 + yy12;
	No112=DV2312.*PIS112 + WP112.*xx12;
	No212=DV1312.*PIS212 + WP212.*yy12;
	No312=DV1212.*PIS312 + WP312.*zz12;
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
	F113=mx13.*U1113 + my13.*U1213 + mz13.*U1313 + m13.*VP113;
	F213=mx13.*U2113 + my13.*U2213 + mz13.*U2313 + m13.*VP213;
	F313=mx13.*U3113 + my13.*U3213 + mz13.*U3313 - m13.*VP212;
	PIS113=-yy13 + zz13;
	PIS213=xx13 - zz13;
	PIS313=-xx13 + yy13;
	No113=DV2313.*PIS113 + WP113.*xx13;
	No213=DV1313.*PIS213 + WP213.*yy13;
	No313=DV1213.*PIS313 + WP313.*zz13;
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
	F114=mx14.*U1114 + my14.*U1214 + mz14.*U1314 + m14.*VSP114;
	F214=mx14.*U2114 + my14.*U2214 + mz14.*U2314 + m14.*VSP214;
	F314=mx14.*U3114 + my14.*U3214 + mz14.*U3314 + m14.*VSP314;
	PIS114=-yy14 + zz14;
	PIS214=xx14 - zz14;
	PIS314=-xx14 + yy14;
	No114=DV2314.*PIS114 + WP113.*xx14;
	No214=DV1314.*PIS214 + WP213.*yy14;
	No314=DV1214.*PIS314 + WP313.*zz14;
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
	F115=mx15.*U1115 + my15.*U1215 + mz15.*U1315 + m15.*VP115;
	F215=mx15.*U2115 + my15.*U2215 + mz15.*U2315 + m15.*VP215;
	F315=mx15.*U3115 + my15.*U3215 + mz15.*U3315 + m15.*VSP315;
	PIS115=-yy15 + zz15;
	PIS215=xx15 - zz15;
	PIS315=-xx15 + yy15;
	No115=DV2315.*PIS115 + WP115.*xx15;
	No215=DV1315.*PIS215 + WP215.*yy15;
	No315=DV1215.*PIS315 + WP315.*zz15;
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
	F116=mx16.*U1116 + my16.*U1216 + mz16.*U1316 + m16.*VSP116;
	F216=mx16.*U2116 + my16.*U2216 + mz16.*U2316 + m16.*VSP216;
	F316=mx16.*U3116 + my16.*U3216 + mz16.*U3316 + m16.*VSP316;
	PIS116=-yy16 + zz16;
	PIS216=xx16 - zz16;
	PIS316=-xx16 + yy16;
	No116=DV2316.*PIS116 + WP115.*xx16;
	No216=DV1316.*PIS216 + WP215.*yy16;
	No316=DV1216.*PIS316 + WP315.*zz16;
	WI117=S17.*W315 + C17.*WI115;
	WI217=C17.*W315 - S17.*WI115;
	W317=QP17 - WI215;
	WP117=QP17.*WI217 + C17.*WP115 + S17.*WP315;
	WP217=-(QP17.*WI117) - S17.*WP115 + C17.*WP315;
	WP317=QDP17 - WP215;
	DV1117=-WI117.^2;
	DV2217=-WI217.^2;
	DV3317=-W317.^2;
	DV1217=WI117.*WI217;
	DV1317=W317.*WI117;
	DV2317=W317.*WI217;
	U1117=DV2217 + DV3317;
	U1217=DV1217 - WP317;
	U1317=DV1317 + WP217;
	U2117=DV1217 + WP317;
	U2217=DV1117 + DV3317;
	U2317=DV2317 - WP117;
	U3117=DV1317 - WP217;
	U3217=DV2317 + WP117;
	U3317=DV1117 + DV2217;
	VSP117=-(L8.*U1116) + VSP116;
	VSP217=-(L8.*U2116) + VSP216;
	VSP317=-(L8.*U3116) + VSP316;
	VP117=C17.*VSP117 + S17.*VSP317;
	VP217=-(S17.*VSP117) + C17.*VSP317;
	F117=mx17.*U1117 + my17.*U1217 + mz17.*U1317 + m17.*VP117;
	F217=mx17.*U2117 + my17.*U2217 + mz17.*U2317 + m17.*VP217;
	F317=mx17.*U3117 + my17.*U3217 + mz17.*U3317 - m17.*VSP217;
	PIS117=-yy17 + zz17;
	PIS217=xx17 - zz17;
	PIS317=-xx17 + yy17;
	No117=DV2317.*PIS117 + WP117.*xx17;
	No217=DV1317.*PIS217 + WP217.*yy17;
	No317=DV1217.*PIS317 + WP317.*zz17;
	WI118=S18.*W317 + C18.*WI117;
	WI218=C18.*W317 - S18.*WI117;
	W318=QP18 - WI217;
	WP118=QP18.*WI218 + C18.*WP117 + S18.*WP317;
	WP218=-(QP18.*WI118) - S18.*WP117 + C18.*WP317;
	WP318=QDP18 - WP217;
	DV1118=-WI118.^2;
	DV2218=-WI218.^2;
	DV3318=-W318.^2;
	DV1218=WI118.*WI218;
	DV1318=W318.*WI118;
	DV2318=W318.*WI218;
	U1118=DV2218 + DV3318;
	U1218=DV1218 - WP318;
	U1318=DV1318 + WP218;
	U2118=DV1218 + WP318;
	U2218=DV1118 + DV3318;
	U2318=DV2318 - WP118;
	U3118=DV1318 - WP218;
	U3218=DV2318 + WP118;
	U3318=DV1118 + DV2218;
	VP118=C18.*VP117 - S18.*VSP217;
	VP218=-(S18.*VP117) - C18.*VSP217;
	F118=mx18.*U1118 + my18.*U1218 + mz18.*U1318 + m18.*VP118;
	F218=mx18.*U2118 + my18.*U2218 + mz18.*U2318 + m18.*VP218;
	F318=mx18.*U3118 + my18.*U3218 + mz18.*U3318 - m18.*VP217;
	PIS118=-yy18 + zz18;
	PIS218=xx18 - zz18;
	PIS318=-xx18 + yy18;
	No118=DV2318.*PIS118 + WP118.*xx18;
	No218=DV1318.*PIS218 + WP218.*yy18;
	No318=DV1218.*PIS318 + WP318.*zz18;
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
	F119=mx19.*U1119 + my19.*U1219 + mz19.*U1319 + m19.*VP119;
	F219=mx19.*U2119 + my19.*U2219 + mz19.*U2319 + m19.*VP219;
	F319=mx19.*U3119 + my19.*U3219 + mz19.*U3319 + m19.*VSP319;
	PIS119=-yy19 + zz19;
	PIS219=xx19 - zz19;
	PIS319=-xx19 + yy19;
	No119=DV2319.*PIS119 + WP119.*xx19;
	No219=DV1319.*PIS219 + WP219.*yy19;
	No319=DV1219.*PIS319 + WP319.*zz19;
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
	F120=mx20.*U1120 + my20.*U1220 + mz20.*U1320 + m20.*VSP120;
	F220=mx20.*U2120 + my20.*U2220 + mz20.*U2320 + m20.*VSP220;
	F320=mx20.*U3120 + my20.*U3220 + mz20.*U3320 + m20.*VSP320;
	PIS120=-yy20 + zz20;
	PIS220=xx20 - zz20;
	PIS320=-xx20 + yy20;
	No120=DV2320.*PIS120 + WP119.*xx20;
	No220=DV1320.*PIS220 + WP219.*yy20;
	No320=DV1220.*PIS320 + WP319.*zz20;
	WI121=S21.*W315 + C21.*WI115;
	WI221=C21.*W315 - S21.*WI115;
	W321=QP21 - WI215;
	WP121=QP21.*WI221 + C21.*WP115 + S21.*WP315;
	WP221=-(QP21.*WI121) - S21.*WP115 + C21.*WP315;
	WP321=QDP21 - WP215;
	DV1121=-WI121.^2;
	DV2221=-WI221.^2;
	DV3321=-W321.^2;
	DV1221=WI121.*WI221;
	DV1321=W321.*WI121;
	DV2321=W321.*WI221;
	U1121=DV2221 + DV3321;
	U1221=DV1221 - WP321;
	U1321=DV1321 + WP221;
	U2121=DV1221 + WP321;
	U2221=DV1121 + DV3321;
	U2321=DV2321 - WP121;
	U3121=DV1321 - WP221;
	U3221=DV2321 + WP121;
	U3321=DV1121 + DV2221;
	VSP121=L8.*U1116 + VSP116;
	VSP221=L8.*U2116 + VSP216;
	VSP321=L8.*U3116 + VSP316;
	VP121=C21.*VSP121 + S21.*VSP321;
	VP221=-(S21.*VSP121) + C21.*VSP321;
	F121=mx21.*U1121 + my21.*U1221 + mz21.*U1321 + m21.*VP121;
	F221=mx21.*U2121 + my21.*U2221 + mz21.*U2321 + m21.*VP221;
	F321=mx21.*U3121 + my21.*U3221 + mz21.*U3321 - m21.*VSP221;
	PIS121=-yy21 + zz21;
	PIS221=xx21 - zz21;
	PIS321=-xx21 + yy21;
	No121=DV2321.*PIS121 + WP121.*xx21;
	No221=DV1321.*PIS221 + WP221.*yy21;
	No321=DV1221.*PIS321 + WP321.*zz21;
	WI122=S22.*W321 + C22.*WI121;
	WI222=C22.*W321 - S22.*WI121;
	W322=QP22 - WI221;
	WP122=QP22.*WI222 + C22.*WP121 + S22.*WP321;
	WP222=-(QP22.*WI122) - S22.*WP121 + C22.*WP321;
	WP322=QDP22 - WP221;
	DV1122=-WI122.^2;
	DV2222=-WI222.^2;
	DV3322=-W322.^2;
	DV1222=WI122.*WI222;
	DV1322=W322.*WI122;
	DV2322=W322.*WI222;
	U1122=DV2222 + DV3322;
	U1222=DV1222 - WP322;
	U1322=DV1322 + WP222;
	U2122=DV1222 + WP322;
	U2222=DV1122 + DV3322;
	U2322=DV2322 - WP122;
	U3122=DV1322 - WP222;
	U3222=DV2322 + WP122;
	U3322=DV1122 + DV2222;
	VP122=C22.*VP121 - S22.*VSP221;
	VP222=-(S22.*VP121) - C22.*VSP221;
	F122=mx22.*U1122 + my22.*U1222 + mz22.*U1322 + m22.*VP122;
	F222=mx22.*U2122 + my22.*U2222 + mz22.*U2322 + m22.*VP222;
	F322=mx22.*U3122 + my22.*U3222 + mz22.*U3322 - m22.*VP221;
	PIS122=-yy22 + zz22;
	PIS222=xx22 - zz22;
	PIS322=-xx22 + yy22;
	No122=DV2322.*PIS122 + WP122.*xx22;
	No222=DV1322.*PIS222 + WP222.*yy22;
	No322=DV1222.*PIS322 + WP322.*zz22;
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
	F123=mx23.*U1123 + my23.*U1223 + mz23.*U1323 + m23.*VP123;
	F223=mx23.*U2123 + my23.*U2223 + mz23.*U2323 + m23.*VP223;
	F323=mx23.*U3123 + my23.*U3223 + mz23.*U3323 + m23.*VSP323;
	PIS123=-yy23 + zz23;
	PIS223=xx23 - zz23;
	PIS323=-xx23 + yy23;
	No123=DV2323.*PIS123 + WP123.*xx23;
	No223=DV1323.*PIS223 + WP223.*yy23;
	No323=DV1223.*PIS323 + WP323.*zz23;
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
	F124=mx24.*U1124 + my24.*U1224 + mz24.*U1324 + m24.*VSP124;
	F224=mx24.*U2124 + my24.*U2224 + mz24.*U2324 + m24.*VSP224;
	F324=mx24.*U3124 + my24.*U3224 + mz24.*U3324 + m24.*VSP324;
	PIS124=-yy24 + zz24;
	PIS224=xx24 - zz24;
	PIS324=-xx24 + yy24;
	No124=DV2324.*PIS124 + WP123.*xx24;
	No224=DV1324.*PIS224 + WP223.*yy24;
	No324=DV1224.*PIS324 + WP323.*zz24;
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
	F125=mx25.*U1125 + my25.*U1225 + mz25.*U1325 + m25.*VSP125;
	F225=mx25.*U2125 + my25.*U2225 + mz25.*U2325 + m25.*VSP225;
	F325=mx25.*U3125 + my25.*U3225 + mz25.*U3325 + m25.*VSP325;
	PIS125=-yy25 + zz25;
	PIS225=xx25 - zz25;
	PIS325=-xx25 + yy25;
	No125=DV2325.*PIS125 + WP115.*xx25;
	No225=DV1325.*PIS225 + WP215.*yy25;
	No325=DV1225.*PIS325 + WP315.*zz25;
	N125=No125 - mz25.*VSP225 + my25.*VSP325;
	N225=No225 + mz25.*VSP125 - mx25.*VSP325;
	N325=No325 - my25.*VSP125 + mx25.*VSP225;
	N124=No124 - mz24.*VSP224 + my24.*VSP324;
	N224=No224 + mz24.*VSP124 - mx24.*VSP324;
	N324=No324 - my24.*VSP124 + mx24.*VSP224;
	E123=F123 + F124;
	E223=F223 + F224;
	E323=F323 + F324;
	N123=N124 + No123 - mz23.*VP223 + my23.*VSP323;
	N223=F324.*L10 + N224 + No223 + mz23.*VP123 - mx23.*VSP323;
	N323=-(F224.*L10) + N324 + No323 - my23.*VP123 + mx23.*VP223;
	FDI123=C23.*E123 - E223.*S23;
	FDI223=C23.*E223 + E123.*S23;
	E122=F122 + FDI123;
	E222=F222 + FDI223;
	E322=E323 + F322;
	N122=C23.*N123 + No122 - N223.*S23 - my22.*VP221 - mz22.*VP222;
	N222=E323.*L9 + C23.*N223 + No222 + N123.*S23 + mz22.*VP122 + mx22.*VP221;
	N322=-(FDI223.*L9) + N323 + No322 - my22.*VP122 + mx22.*VP222;
	FDI122=C22.*E122 - E222.*S22;
	FDI322=C22.*E222 + E122.*S22;
	E121=F121 + FDI122;
	E221=-E322 + F221;
	E321=F321 + FDI322;
	N121=C22.*N122 + No121 - N222.*S22 - mz21.*VP221 - my21.*VSP221;
	N221=-N322 + No221 + mz21.*VP121 + mx21.*VSP221;
	N321=C22.*N222 + No321 + N122.*S22 - my21.*VP121 + mx21.*VP221;
	FDI121=C21.*E121 - E221.*S21;
	FDI321=C21.*E221 + E121.*S21;
	N120=No120 - mz20.*VSP220 + my20.*VSP320;
	N220=No220 + mz20.*VSP120 - mx20.*VSP320;
	N320=No320 - my20.*VSP120 + mx20.*VSP220;
	E119=F119 + F120;
	E219=F219 + F220;
	E319=F319 + F320;
	N119=N120 + No119 - mz19.*VP219 + my19.*VSP319;
	N219=F320.*L10 + N220 + No219 + mz19.*VP119 - mx19.*VSP319;
	N319=-(F220.*L10) + N320 + No319 - my19.*VP119 + mx19.*VP219;
	FDI119=C19.*E119 - E219.*S19;
	FDI219=C19.*E219 + E119.*S19;
	E118=F118 + FDI119;
	E218=F218 + FDI219;
	E318=E319 + F318;
	N118=C19.*N119 + No118 - N219.*S19 - my18.*VP217 - mz18.*VP218;
	N218=E319.*L9 + C19.*N219 + No218 + N119.*S19 + mz18.*VP118 + mx18.*VP217;
	N318=-(FDI219.*L9) + N319 + No318 - my18.*VP118 + mx18.*VP218;
	FDI118=C18.*E118 - E218.*S18;
	FDI318=C18.*E218 + E118.*S18;
	E117=F117 + FDI118;
	E217=-E318 + F217;
	E317=F317 + FDI318;
	N117=C18.*N118 + No117 - N218.*S18 - mz17.*VP217 - my17.*VSP217;
	N217=-N318 + No217 + mz17.*VP117 + mx17.*VSP217;
	N317=C18.*N218 + No317 + N118.*S18 - my17.*VP117 + mx17.*VP217;
	FDI117=C17.*E117 - E217.*S17;
	FDI317=C17.*E217 + E117.*S17;
	E116=F116 + F125 + FDI117 + FDI121;
	E216=-E317 - E321 + F216 + F225;
	E316=F316 + F325 + FDI317 + FDI321;
	N116=-(F225.*L11) + C17.*N117 + C21.*N121 + N125 + No116 - N217.*S17 - N221.*S21 - mz16.*VSP216 + my16.*VSP316;
	N216=F125.*L11 + FDI317.*L8 - FDI321.*L8 + N225 - N317 - N321 + No216 + mz16.*VSP116 - mx16.*VSP316;
	N316=E317.*L8 - E321.*L8 + C17.*N217 + C21.*N221 + N325 + No316 + N117.*S17 + N121.*S21 - my16.*VSP116 + mx16.*VSP216;
	E115=E116 + F115;
	E215=E216 + F215;
	E315=E316 + F315;
	N115=-(E216.*L7) + N116 + No115 - mz15.*VP215 + my15.*VSP315;
	N215=E116.*L7 + N216 + No215 + mz15.*VP115 - mx15.*VSP315;
	N315=N316 + No315 - my15.*VP115 + mx15.*VP215;
	FDI115=C15.*E115 - E215.*S15;
	FDI215=C15.*E215 + E115.*S15;
	E114=F114 + FX14;
	E214=F214 + FY14;
	E314=F314 + FZ14;
	N114=CX14 + No114 - mz14.*VSP214 + my14.*VSP314;
	N214=CY14 + No214 + mz14.*VSP114 - mx14.*VSP314;
	N314=CZ14 + No314 - my14.*VSP114 + mx14.*VSP214;
	E113=E114 + F113;
	E213=E214 + F213;
	E313=E314 + F313;
	N113=-(E214.*L1) + N114 + No113 - my13.*VP212 - mz13.*VP213;
	N213=E114.*L1 - E314.*L2 + N214 + No213 + mz13.*VP113 + mx13.*VP212;
	N313=E214.*L2 + N314 + No313 - my13.*VP113 + mx13.*VP213;
	FDI113=C13.*E113 - E213.*S13;
	FDI313=C13.*E213 + E113.*S13;
	E112=F112 + FDI113;
	E212=-E313 + F212;
	E312=F312 + FDI313;
	N112=C13.*N113 + No112 - N213.*S13 - mz12.*VP212 + my12.*VSP312;
	N212=-N313 + No212 + mz12.*VP112 - mx12.*VSP312;
	N312=C13.*N213 + No312 + N113.*S13 - my12.*VP112 + mx12.*VP212;
	FDI112=C12.*E112 - E212.*S12;
	FDI212=C12.*E212 + E112.*S12;
	E111=F111 + FDI112;
	E211=F211 + FDI212;
	E311=E312 + F311;
	N111=C12.*N112 + No111 - N212.*S12 - mz11.*VP211 + my11.*VSP311;
	N211=-(E312.*L3) + C12.*N212 + No211 + N112.*S12 + mz11.*VP111 - mx11.*VSP311;
	N311=FDI212.*L3 + N312 + No311 - my11.*VP111 + mx11.*VP211;
	FDI111=C11.*E111 - E211.*S11;
	FDI211=C11.*E211 + E111.*S11;
	E110=F110 + FDI111;
	E210=F210 + FDI211;
	E310=E311 + F310;
	N110=C11.*N111 + No110 - N211.*S11 - mz10.*VP210 + my10.*VP29;
	N210=-(E311.*L4) + C11.*N211 + No210 + N111.*S11 + mz10.*VP110 - mx10.*VP29;
	N310=FDI211.*L4 + N311 + No310 - my10.*VP110 + mx10.*VP210;
	FDI110=C10.*E110 - E210.*S10;
	FDI310=-(C10.*E210) - E110.*S10;
	E19=F19 + FDI110;
	E29=E310 + F29;
	E39=F39 + FDI310;
	N19=C10.*N110 + No19 - N210.*S10 - my9.*VP28 - mz9.*VP29;
	N29=N310 + No29 + mz9.*VP19 + mx9.*VP28;
	N39=-(C10.*N210) + No39 - N110.*S10 - my9.*VP19 + mx9.*VP29;
	FDI19=C9.*E19 - E29.*S9;
	FDI39=C9.*E29 + E19.*S9;
	E18=F18 + FDI19;
	E28=-E39 + F28;
	E38=F38 + FDI39;
	N18=C9.*N19 + No18 - N29.*S9 - mz8.*VP28 + my8.*VSP38;
	N28=-N39 + No28 + mz8.*VP18 - mx8.*VSP38;
	N38=C9.*N29 + No38 + N19.*S9 - my8.*VP18 + mx8.*VP28;
	FDI18=C8.*E18 - E28.*S8;
	FDI28=C8.*E28 + E18.*S8;
	E17=F17 + FDI115 + FDI18;
	E27=F27 + FDI215 + FDI28;
	E37=E315 + E38 + F37;
	N17=-(FDI215.*L6) + C15.*N115 + C8.*N18 + No17 - N215.*S15 - N28.*S8 - mz7.*VSP27 + my7.*VSP37;
	N27=FDI115.*L6 - E38.*LOO18 + C15.*N215 + C8.*N28 + No27 + N115.*S15 + N18.*S8 + mz7.*VSP17 - mx7.*VSP37;
	N37=FDI28.*LOO18 + N315 + N38 + No37 - my7.*VSP17 + mx7.*VSP27;
	E16=E17 + F16;
	E26=E27 + F26;
	E36=E37 + F36;
	N16=N17 + No16 + my6.*VP25 - mz6.*VP26;
	N26=-(E37.*LOO17) + N27 + No26 + mz6.*VP16 - mx6.*VP25;
	N36=E27.*LOO17 + N37 + No36 - my6.*VP16 + mx6.*VP26;
	FDI16=C6.*E16 - E26.*S6;
	FDI36=-(C6.*E26) - E16.*S6;
	E15=F15 + FDI16;
	E25=E36 + F25;
	E35=F35 + FDI36;
	N15=C6.*N16 + No15 - N26.*S6 + my5.*VP24 - mz5.*VP25;
	N25=N36 + No25 + mz5.*VP15 - mx5.*VP24;
	N35=-(C6.*N26) + No35 - N16.*S6 - my5.*VP15 + mx5.*VP25;
	FDI15=C5.*E15 - E25.*S5;
	FDI35=-(C5.*E25) - E15.*S5;
	E14=F14 + FDI15;
	E24=E35 + F24;
	E34=F34 + FDI35;
	N14=C5.*N15 + No14 - N25.*S5 - mz4.*VP24 + my4.*VSP34;
	N24=N35 + No24 + mz4.*VP14 - mx4.*VSP34;
	N34=-(C5.*N25) + No34 - N15.*S5 - my4.*VP14 + mx4.*VP24;
	FDI14=C4.*E14 - E24.*S4;
	FDI24=C4.*E24 + E14.*S4;
	E13=F13 + FDI14;
	E23=F23 + FDI24;
	E33=E34 + F33;
	N13=C4.*N14 + No13 - N24.*S4 - mz3.*VP23 + my3.*VSP33;
	N23=-(E34.*L4) + C4.*N24 + No23 + N14.*S4 + mz3.*VP13 - mx3.*VSP33;
	N33=FDI24.*L4 + N34 + No33 - my3.*VP13 + mx3.*VP23;
	FDI13=C3.*E13 - E23.*S3;
	FDI23=C3.*E23 + E13.*S3;
	E12=F12 + FDI13;
	E22=F22 + FDI23;
	E32=E33 + F32;
	N12=C3.*N13 + No12 - N23.*S3 - my2.*VP21 - mz2.*VP22;
	N22=-(E33.*L3) + C3.*N23 + No22 + N13.*S3 + mz2.*VP12 + mx2.*VP21;
	N32=FDI23.*L3 + N33 + No32 - my2.*VP12 + mx2.*VP22;
	FDI12=C2.*E12 - E22.*S2;
	FDI32=C2.*E22 + E12.*S2;
	E11=F11 + FDI12;
	E21=-E32 + F21;
	E31=F31 + FDI32;
	N11=C2.*N12 + No11 - N22.*S2 - mz1.*VP21 + my1.*VSP31;
	N21=-N32 + No21 + mz1.*VP11 - mx1.*VSP31;
	N31=C2.*N22 + No31 + N12.*S2 - my1.*VP11 + mx1.*VP21;
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
	GAM15=N315 + IA15.*QDP15;
	GAM17=N317 + IA17.*QDP17;
	GAM18=N318 + IA18.*QDP18;
	GAM19=N319 + IA19.*QDP19;
	GAM21=N321 + IA21.*QDP21;
	GAM22=N322 + IA22.*QDP22;
	GAM23=N323 + IA23.*QDP23;
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
%     ZMP=zeros(2,nsamples);
    
    v_normal=[1;0;0];
    for k=1:n_samples
    pos_ZMP=cross(v_normal,M_foot(:,k))./(v_normal'*F_foot(:,k));
    ZMP(:,k)=pos_ZMP(2:3);
    end

% *=*
% Number of operations : 1287 '+' or '-', 1292 '*' or '/'
end