% 
% /* (********************************************) */
% /* (** SYMORO+ : SYmbolic MOdelling of RObots **) */
% /* (**========================================**) */
% /* (**      IRCCyN-ECN - 1, rue de la Noe     **) */
% /* (**      B.P.92101                         **) */
% /* (**      44321 Nantes cedex 3, FRANCE      **) */
% /* (**      www.irccyn.ec-nantes.fr           **) */
% /* (********************************************) */
% 
% 
% /*    Name of file : G:\travail\Robotex\Romeo\SYMORO\Romeo 1\modele_complet\ROMEO_pied.dyn */
% 
% 
% 
% 
% /*      Geometric parameters    */
% 
% 
% /* j     ant   mu    sigma gamma b     alpha d     theta r */
% 
% 
% /* 1     0     1     2     0     0     0     0     0     0 */
% 
% /*                                     Pi */
% /* 2     1     1     0     0     0     --    d2    t2    -r2 */
% /*                                     2 */
% 
% /* 3     2     1     0     0     0     0     0     t3    0 */
% 
% 
% /* 4     3     1     0     0     0     0     d4    t4    0 */
% 
% /*                                     -Pi */
% /* 5     4     1     0     0     0     ---   d5    t5    0 */
% /*                                      2 */
% /*                                     -Pi */
% /* 6     5     1     0     0     0     ---   0     t6    0 */
% /*                                      2 */
% 
% /* 7     6     1     0     0     0     0     0     t7    0 */
% 
% /*                                     Pi */
% /* 8     7     1     0     0     0     --    -d8   t8    0 */
% /*                                     2 */
% /*                                     Pi */
% /* 9     8     1     0     0     0     --    0     t9    0 */
% /*                                     2 */
% 
% /* 10    9     1     0     0     0     0     0     t10   0 */
% 
% 
% /* 11    10    1     0     0     0     0     -d11  t11   0 */
% 
% /*                                     -Pi */
% /* 12    11    1     0     0     0     ---   -d12  t12   0 */
% /*                                      2 */
% 
% /* 13    12    1     0     0     0     0     0     t13   r13 */
% 
% /*                                     -Pi */
% /* 14    13    1     2     0     0     ---   -d14  -Pi/2     0 */
% /*                                      2 */
% /*                                     Pi */
% /* 15    7     1     0     0     b15   --    -d15  t15   r15 */
% /*                                     2 */
% /*                                     -Pi */
% /* 16    15    1     0     0     0     ---   d16   t16   r16 */
% /*                                      2 */
% /*                                     Pi */
% /* 17    16    1     0     0     0     --    0     t17   -r17 */
% /*                                     2 */
% /*                                     Pi */
% /* 18    17    1     0     0     0     --    0     t18   0 */
% /*                                     2 */
% /*                                     Pi */
% /* 19    18    1     0     0     0     --    0     t19   -r19 */
% /*                                     2 */
% /*                                     Pi */
% /* 20    19    1     0     0     0     --    0     t20   0 */
% /*                                     2 */
% /*                                     -Pi */
% /* 21    20    1     0     0     0     ---   0     t21   0 */
% /*                                      2 */
% /*                                     Pi */
% /* 22    21    1     0     0     0     --    0     t22   0 */
% /*                                     2 */
% /*                                     -Pi */
% /* 23    15    1     0     0     0     ---   d23   t23   -r23 */
% /*                                      2 */
% /*                                     Pi */
% /* 24    23    1     0     0     0     --    0     t24   -r24 */
% /*                                     2 */
% /*                                     Pi */
% /* 25    24    1     0     0     0     --    0     t25   0 */
% /*                                     2 */
% /*                                     Pi */
% /* 26    25    1     0     0     0     --    0     t26   -r26 */
% /*                                     2 */
% /*                                     Pi */
% /* 27    26    1     0     0     0     --    0     t27   0 */
% /*                                     2 */
% 
% /* 28    27    1     0     0     0     0     0     t28   0 */
% 
% /*                                     -Pi */
% /* 29    28    1     0     0     0     ---   0     t29   0 */
% /*                                      2 */
% /*                                     -Pi */
% /* 30    15    1     0     0     b30   ---   0     t30   0 */
% /*                                      2 */
% /*                                     Pi */
% /* 31    30    1     0     0     0     --    0     t31   0 */
% /*                                     2 */
% 
% /* 32    31    1     0     0     0     0     0     t32   r32 */
% 
% 
% /* 33    32    1     0     0     0     0     0     t33   0 */
% 
% 
% 
% 
% /*              Inertial parameters */
% 
% /* j      XX     XY     XZ     YY     YZ     ZZ     MX     MY     MZ     M      Ia */
% 
% /* 1      XX1    XY1    XZ1    YY1    YZ1    ZZ1    MX1    MY1    MZ1    M1     0 */
% 
% /* 2      XX2    XY2    XZ2    YY2    YZ2    ZZ2    MX2    MY2    MZ2    M2     IA2 */
% 
% /* 3      XX3    XY3    XZ3    YY3    YZ3    ZZ3    MX3    MY3    MZ3    M3     IA3 */
% 
% /* 4      XX4    XY4    XZ4    YY4    YZ4    ZZ4    MX4    MY4    MZ4    M4     IA4 */
% 
% /* 5      XX5    XY5    XZ5    YY5    YZ5    ZZ5    MX5    MY5    MZ5    M5     IA5 */
% 
% /* 6      XX6    XY6    XZ6    YY6    YZ6    ZZ6    MX6    MY6    MZ6    M6     IA6 */
% 
% /* 7      XX7    XY7    XZ7    YY7    YZ7    ZZ7    MX7    MY7    MZ7    M7     IA7 */
% 
% /* 8      XX8    XY8    XZ8    YY8    YZ8    ZZ8    MX8    MY8    MZ8    M8     IA8 */
% 
% /* 9      XX9    XY9    XZ9    YY9    YZ9    ZZ9    MX9    MY9    MZ9    M9     IA9 */
% 
% /* 10     XX10   XY10   XZ10   YY10   YZ10   ZZ10   MX10   MY10   MZ10   M10    IA10 */
% 
% /* 11     XX11   XY11   XZ11   YY11   YZ11   ZZ11   MX11   MY11   MZ11   M11    IA11 */
% 
% /* 12     XX12   XY12   XZ12   YY12   YZ12   ZZ12   MX12   MY12   MZ12   M12    IA12 */
% 
% /* 13     XX13   XY13   XZ13   YY13   YZ13   ZZ13   MX13   MY13   MZ13   M13    IA13 */
% 
% /* 14     0      0      0      0      0      0      0      0      0      0      0 */
% 
% /* 15     XX15   XY15   XZ15   YY15   YZ15   ZZ15   MX15   MY15   MZ15   M15    IA15 */
% 
% /* 16     XX16   XY16   XZ16   YY16   YZ16   ZZ16   MX16   MY16   MZ16   M16    IA16 */
% 
% /* 17     XX17   XY17   XZ17   YY17   YZ17   ZZ17   MX17   MY17   MZ17   M17    IA17 */
% 
% /* 18     XX18   XY18   XZ18   YY18   YZ18   ZZ18   MX18   MY18   MZ18   M18    IA18 */
% 
% /* 19     XX19   XY19   XZ19   YY19   YZ19   ZZ19   MX19   MY19   MZ19   M19    IA19 */
% 
% /* 20     XX20   XY20   XZ20   YY20   YZ20   ZZ20   MX20   MY20   MZ20   M20    IA20 */
% 
% /* 21     XX21   XY21   XZ21   YY21   YZ21   ZZ21   MX21   MY21   MZ21   M21    IA21 */
% 
% /* 22     XX22   XY22   XZ22   YY22   YZ22   ZZ22   MX22   MY22   MZ22   M22    IA22 */
% 
% /* 23     XX23   XY23   XZ23   YY23   YZ23   ZZ23   MX23   MY23   MZ23   M23    IA23 */
% 
% /* 24     XX24   XY24   XZ24   YY24   YZ24   ZZ24   MX24   MY24   MZ24   M24    IA24 */
% 
% /* 25     XX25   XY25   XZ25   YY25   YZ25   ZZ25   MX25   MY25   MZ25   M25    IA25 */
% 
% /* 26     XX26   XY26   XZ26   YY26   YZ26   ZZ26   MX26   MY26   MZ26   M26    IA26 */
% 
% /* 27     XX27   XY27   XZ27   YY27   YZ27   ZZ27   MX27   MY27   MZ27   M27    IA27 */
% 
% /* 28     XX28   XY28   XZ28   YY28   YZ28   ZZ28   MX28   MY28   MZ28   M28    IA28 */
% 
% /* 29     XX29   XY29   XZ29   YY29   YZ29   ZZ29   MX29   MY29   MZ29   M29    IA29 */
% 
% /* 30     XX30   XY30   XZ30   YY30   YZ30   ZZ30   MX30   MY30   MZ30   M30    IA30 */
% 
% /* 31     XX31   XY31   XZ31   YY31   YZ31   ZZ31   MX31   MY31   MZ31   M31    IA31 */
% 
% /* 32     XX32   XY32   XZ32   YY32   YZ32   ZZ32   MX32   MY32   MZ32   M32    IA32 */
% 
% /* 33     XX33   XY33   XZ33   YY33   YZ33   ZZ33   MX33   MY33   MZ33   M33    IA33 */
% 
% 
% 
% /*  External forces,friction parameters, joint velocities and accelerations */
% 
% /* j       FX      FY      FZ      CX      CY      CZ      FS      FV      QP      QDP */
% 
% /* 1       0       0       0       0       0       0       0       0       0       0 */
% 
% /* 2       0       0       0       0       0       0       0       0       QP2     QDP2 */
% 
% /* 3       0       0       0       0       0       0       0       0       QP3     QDP3 */
% 
% /* 4       0       0       0       0       0       0       0       0       QP4     QDP4 */
% 
% /* 5       0       0       0       0       0       0       0       0       QP5     QDP5 */
% 
% /* 6       0       0       0       0       0       0       0       0       QP6     QDP6 */
% 
% /* 7       0       0       0       0       0       0       0       0       QP7     QDP7 */
% 
% /* 8       0       0       0       0       0       0       0       0       QP8     QDP8 */
% 
% /* 9       0       0       0       0       0       0       0       0       QP9     QDP9 */
% 
% /* 10      0       0       0       0       0       0       0       0       QP10    QDP10 */
% 
% /* 11      0       0       0       0       0       0       0       0       QP11    QDP11 */
% 
% /* 12      0       0       0       0       0       0       0       0       QP12    QDP12 */
% 
% /* 13      0       0       0       0       0       0       0       0       QP13    QDP13 */
% 
% /* 14      FX14    FY14    FZ14    CX14    CY14    CZ14    0       0       0       0 */
% 
% /* 15      0       0       0       0       0       0       0       0       QP15    QDP15 */
% 
% /* 16      0       0       0       0       0       0       0       0       QP16    QDP16 */
% 
% /* 17      0       0       0       0       0       0       0       0       QP17    QDP17 */
% 
% /* 18      0       0       0       0       0       0       0       0       QP18    QDP18 */
% 
% /* 19      0       0       0       0       0       0       0       0       QP19    QDP19 */
% 
% /* 20      0       0       0       0       0       0       0       0       QP20    QDP20 */
% 
% /* 21      0       0       0       0       0       0       0       0       QP21    QDP21 */
% 
% /* 22      0       0       0       0       0       0       0       0       QP22    QDP22 */
% 
% /* 23      0       0       0       0       0       0       0       0       QP23    QDP23 */
% 
% /* 24      0       0       0       0       0       0       0       0       QP24    QDP24 */
% 
% /* 25      0       0       0       0       0       0       0       0       QP25    QDP25 */
% 
% /* 26      0       0       0       0       0       0       0       0       QP26    QDP26 */
% 
% /* 27      0       0       0       0       0       0       0       0       QP27    QDP27 */
% 
% /* 28      0       0       0       0       0       0       0       0       QP28    QDP28 */
% 
% /* 29      0       0       0       0       0       0       0       0       QP29    QDP29 */
% 
% /* 30      0       0       0       0       0       0       0       0       QP30    QDP30 */
% 
% /* 31      0       0       0       0       0       0       0       0       QP31    QDP31 */
% 
% /* 32      0       0       0       0       0       0       0       0       QP32    QDP32 */
% 
% /* 33      0       0       0       0       0       0       0       0       QP33    QDP33 */
% 
% /* Base velocity, base accelerations, and gravity */
% 
% /* j      W0     WP0    V0     VP0    G */
% 
% /* 1      WX0    WPX0   VX0    VPX0   -9.81 */
% 
% /* 2      WY0    WPY0   VY0    VPY0   0 */
% 
% /* 3      WZ0    WPZ0   VZ0    VPZ0   0 */
% 
% /*  Dynamic model: Newton Euler method */
% /* Equations: */
% 
% #include <stdio.h>
% #include <math.h>
% #include "mex.h"
%  Real double
%  NJoints 31
%  sign(x) (x<0.0 ? -1.0 : (x=0.0 ? 0.0 : 1.0))

function [F_foot,M_foot,Torque] = IDM_romeo( Q, QD, QDD, OVDotO,OWDotO,OWO,F,M)

% /* Geometric parameters */
 d2 = 0.0674;
 d4 = 0.290;
 d5  =0.320;
 d8 = 0.192;
 d11 = 0.320;
 d12 = 0.290;
 d14 = 0.0674;
 d15 = 0.096;
 d16 = 0.005;
 d23= 0.005;

 r2  =0.202;
 r13 =0.202;
 r15 = 0.200;
 r16 = 0.190;
 r17  =0.205;
 r19  =0.1823;
 r23 = 0.190;
 r24 = 0.205;
 r26 = 0.1823;
 r32 = 0.09511;

 b15  = 0.20004;
 b30 = 0.0835;

%/* Parameters Joint 1 */ 
 M1   = 1.071550000000000;
 
 MX1 =   0.023863418500000;
 MY1  = -0.132272132000000;
 MZ1  = -0.006461446500000;
 
 XX1  =  0.064804232698000;
 XY1  =  0.000000000000000;
 XZ1  =  0.000000000000000;
 YY1  =  0.058458873030000;
 YZ1  = -0.014588938940000;
 ZZ1  =  0.008374752388000;
 
 IA1  =  0.000000000000000;
 
%/* Parameters Joint 2 */ 
 M2  =  0.500800000000000;
 
 MX2  =  0.000190304000000;
 MY2  = -0.000255408000000;
 MZ2  =  0.000295472000000;
 
 XX2  =  0.000527664790000;
 XY2  =  0.000000000000000;
 XZ2  =  0.000000000000000;
 YY2  =  0.000281451450000;
 YZ2  =  0.000000000000000;
 ZZ2  =  0.000429951950000;
 
 IA2 =   0.800000000000000;
 
%/* Parameters Joint 3 */ 
 M3  =  2.610630000000000;
 
 MX3  =  0.437071674600000;
 MY3 =  -0.013888551600000;
 MZ3  = -0.001957972500000;
 
 XX3  =  0.274520330550000;
 XY3  =  0.000000000000000;
 XZ3  =  0.000000000000000;
 YY3  =  0.003984816960000;
 YZ3  =  0.000000000000000;
 ZZ3  =  0.274467013610000;
 
 IA3  =  0.800000000000000;
 
%/* Parameters Joint 4 */ 
 M4  =  4.339350000000000;
 
 MX4  =  0.734087839500000;
 MY4  = -0.042135088500000;
 MZ4  =  0.005858122500000;
 
 XX4  =  0.578326835580000;
 XY4  =  0.000000000000000;
 XZ4   = 0.000000000000000;
 YY4  =  0.012168725850000;
 YZ4 =   0.000000000000000;
 ZZ4  =  0.577244489510000;
 
 IA4   = 0.800000000000000;
 
%/* Parameters Joint 5 */ 
 M5  =  0.660700000000000;
 
 MX5    =0.000072677000000;
 MY5    =0.001935851000000;
 MZ5   =-0.000178389000000;
 
 XX5    =0.000509559010000;
 XY5    =0.000000000000000;
 XZ5    =0.000000000000000;
 YY5    =0.000935391880000;
 YZ5    =0.000000000000000;
 ZZ5    =0.000898620240000;
 
 IA5    =0.800000000000000;
 
%/* Parameters Joint 6 */ 
 M6    =0.494770000000000;
 
 MX6  = -0.000108849400000;
 MY6   = 0.031264516300000;
 MZ6  = -0.004309446700000;
 
 XX6    =0.000622772650000;
 XY6    =0.000000000000000;
 XZ6    =0.000000000000000;
 YY6    =0.003036679040000;
 YZ6    =0.000000000000000;
 ZZ6    =0.003479977800000;
 
 IA6    =0.800000000000000;
 
%/* Parameters Joint 7 */ 
 M7  =  4.162770000000000;
 
 MX7  = -0.397544535000000;
 MY7  = -0.038797016400000;
 MZ7  = -0.049370452200000;
 
 XX7  =  0.404745124170432;
 XY7  = -0.000068896350000;
 XZ7   = 0.080247421186800;
 YY7   = 0.446820866360432;
 YZ7   =-0.002829154690000;
 ZZ7   = 0.059837944310000;
 
 IA7  =  0.800000000000000;
 
%/* Parameters Joint 8 */ 
 M8  =  0.494770000000000;
 
 MX8 =   0.000108849400000;
 MY8 =   0.004309446700000;
 MZ8  =  0.031264516300000;
 
 XX8  =  0.003479977800000;
 XY8  =  0.000000000000000;
 XZ8  =  0.000000000000000;
 YY8  =  0.003036679040000;
 YZ8  =  0.000000000000000;
 ZZ8  =  0.000622772650000;
 
 IA8  =  0.800000000000000;
 
%/* Parameters Joint 9 */ 
 M9    =0.660700000000000;
 
 MX9    =0.000072677000000;
 MY9    =0.000178389000000;
 MZ9    =0.001935851000000;
 
 XX9    =0.000935391880000;
 XY9    =0.000000000000000;
 XZ9    =0.000000000000000;
 YY9    =0.000509559010000;
 YZ9    =0.000000000000000;
 ZZ9    =0.000898620240000;
 
 IA9    =0.800000000000000;
 
%/* Parameters Joint 10 */ 
 M10  =  4.339350000000000;
 
 MX10 =  -0.654504160500000;
 MY10  = -0.042135088500000;
 MZ10  = -0.005858122500000;
 
 XX10    =0.133977395580000;
 XY10    =0.000000000000000;
 XZ10    =0.000000000000000;
 YY10    =0.012168725850000;
 YZ10    =0.000000000000000;
 ZZ10    =0.132895049510000;
 
 IA10    =0.800000000000000;
 
%/* Parameters Joint 11 */ 
 M11   = 2.610630000000000;
 
 MX11  = -0.320011025400000;
 MY11  = -0.013888551600000;
 MZ11   = 0.001957972500000;
 
 XX11   = 0.054966347550000;
 XY11    =0.000000000000000;
 XZ11    =0.000000000000000;
 YY11    =0.003984816960000;
 YZ11    =0.000000000000000;
 ZZ11    =0.054913030610000;
 
 IA11    =0.800000000000000;
 
%/* Parameters Joint 12 */ ;
 M12    =0.500800000000000;
 
 MX12    =0.000190304000000;
 MY12    =0.000295472000000;
 MZ12  = -0.000255408000000;
 
 XX12    =0.000281451450000;
 XY12    =0.000000000000000;
 XZ12    =0.000000000000000;
 YY12    =0.000527664790000;
 YZ12    =0.000000000000000;
 ZZ12    =0.000429951950000;
 
 IA12    =0.800000000000000;
 
%/* Parameters Joint 13 */ 
 M13   = 1.071550000000000;
 
 MX13  = -0.048359051500000;
 MY13  = -0.006461446500000;
 MZ13  = -0.132272132000000;
 
 XX13    =0.058458873030000;
 XY13    =0.000000000000000;
 XZ13    =0.000000000000000;
 YY13    =0.059936438220000;
 YZ13    =0.000000000000000;
 ZZ13    =0.003506957910000;
 
 IA13    =0.800000000000000;
 
%/* Parameters Joint 14 */ 
 M14    =0.000000000000000;
 
 MX14    =0.000000000000000;
 MY14    =0.000000000000000;
 MZ14    =0.000000000000000;
 
 XX14    =0.000000000000000;
 XY14    =0.000000000000000;
 XZ14    =0.000000000000000;
 YY14    =0.000000000000000;
 YZ14    =0.000000000000000;
 ZZ14    =0.000000000000000;
 
 IA14    =0.000000000000000;
 
%/* Parameters Joint 15 */ 
 M15   = 9.921600000000000;
 
 MX15   = 0.022819680000000;
 MY15  =  0.003770208000000;
 MZ15  = -0.481594464000000;
 
 XX15  =  0.129332352990000;
 XY15  =  0.000359651490000;
 XZ15  = -0.002838880030000;
 YY15  =  0.126831089850000;
 YZ15  =  0.002008426240000;
 ZZ15  =  0.110627390820000;
 
 IA15  =  0.800000000000000;
 
%/* Parameters Joint 16 */ 
 M16  =  0.694020000000000;
 
 MX16  =  0.000124923600000;
 MY16  =  0.001034089800000;
 MZ16  = -0.022895719800000;
 
 XX16  =  0.000002167930000;
 XY16  =  0.001940678790000;
 XZ16  =  0.000008278320000;
 YY16  = -0.000002167930000;
 YZ16  = -0.000002375950000;
 ZZ16  =  0.000570625880000;
 
 IA16    =0.800000000000000;
 
%/* Parameters Joint 17 */ 
 M17    =0.571510000000000;
 
 MX17    =0.000588655300000;
 MY17    =0.007846832300000;
 MZ17    =0.063626208300000;
 
 XX17    =0.024090551550000;
 XY17    =0.000012515690000;
 XZ17    =0.006644338860000;
 YY17    =0.030519730790000;
 YZ17    =0.000012515690000;
 ZZ17  = -0.000072843800000;
 
 IA17   = 0.800000000000000;
 
%/* Parameters Joint 18 */ 
 M18   = 0.398480000000000;
 
 MX18  =  0.000000000000000;
 MY18  = -0.008890088800000;
 MZ18  = -0.000956352000000;
 
 XX18   =-0.000000013760000;
 XY18   = 0.000779560480000;
 XZ18    =0.000000080070000;
 YY18    =0.000000013760000;
 YZ18    =0.000002255550000;
 ZZ18    =0.000804322250000;
 
 IA18    =0.800000000000000;
 
%/* Parameters Joint 19 */ 
 M19    =0.312650000000000;
 
 MX19    =0.003260939500000;
 MY19    =0.000096921500000;
 MZ19    =0.035929738000000;
 
 XX19    =0.012487664088500;
 XY19  = -0.000225283380000;
 XZ19  =  0.000002746130000;
 YY19  =  0.010387807388500;
 YZ19  =  0.002110647980000;
 ZZ19  =  0.000002580730000;
 
 IA19    =0.800000000000000;
 
%/* Parameters Joint 20 */ 
 M20    =0.175630000000000;
 
 MX20    =0.010414859000000;
 MY20    =0.000008781500000;
 MZ20  =-0.000121184700000;
 
 XX20  = -0.000013580950000;
 XY20  =  0.000000637300000;
 XZ20  = -0.000067214540000;
 YY20  =  0.000851195680000;
 YZ20  = -0.000000637300000;
 ZZ20  =  0.000013580950000;
 
 IA20  =  0.800000000000000;
 
%/* Parameters Joint 21 */ 
 M21   = 0.075950000000000;
 
 MX21  = -0.000016709000000;
 MY21  = -0.000566587000000;
 MZ21  = -0.000012152000000;
 
 XX21  = -0.000000076740000;
 XY21  =  0.000038178710000;
 XZ21  =  0.000000003080000;
 YY21  =  0.000000076740000;
 YZ21  =  0.000000041570000;
 ZZ21  =  0.000039190690000;
 
 IA21  =  0.800000000000000;
 
%/* Parameters Joint 22 */ 
 M22  =  0.165690000000000;
 
 MX22 =  -0.000273388500000;
 MY22  = -0.000631278900000;
 MZ22  = -0.011576760300000;
 
 XX22  = -0.000017040360000;
 XY22  =  0.000015476100000;
 XZ22  =  0.001153670430000;
 YY22  =  0.001079817780000;
 YZ22  =  0.000015476100000;
 ZZ22  =  0.000017040360000;
 
 IA22    =0.800000000000000;
 
%/* Parameters Joint 23 */ 
 M23    =0.694020000000000;
 
 MX23  = -0.000124923600000;
 MY23  =  0.001034089800000;
 MZ23   = 0.022895719800000;
 
 XX23  = -0.000002167930000;
 XY23  =  0.001940678790000;
 XZ23  =  0.000008278320000;
 YY23  =  0.000002167930000;
 YZ23  =  0.000002375950000;
 ZZ23  =  0.000570625880000;
 
 IA23  =  0.800000000000000;
 
%/* Parameters Joint 24 */ 
 M24  =  0.570710000000000;
 
 MX24 =  -0.000393789900000;
 MY24 =  -0.007835848300000;
 MZ24 =   0.063520023000000;
 
 XX24 =   0.023924235620000;
 XY24  =  0.000010741740000;
 XZ24  =  0.000664209089000;
 YY24  =  0.030483972770000;
 YZ24 =   0.000001074174000;
 ZZ24 =   0.000005985213000;
 
 IA24  =  0.800000000000000;
 
%/* Parameters Joint 25 */ 
 M25  =  0.398480000000000;
 
 MX25 =   0.000000000000000;
 MY25 =  -0.008890088800000;
 MZ25 =  -0.000956352000000;
 
 XX25 =  -0.000000013760000;
 XY25  =  0.000779560480000;
 XZ25  =  0.000000080070000;
 YY25  =  0.000000013760000;
 YZ25  =  0.000002255550000;
 ZZ25  =  0.000804322250000;
 
 IA25  =  0.800000000000000;
 
%/* Parameters Joint 26 */ 
 M26  =  0.314030000000000;
 
 MX26 =  -0.002791726700000;
 MY26  = -0.000069086600000;
 MZ26 =   0.036041223100000;
 
 XX26   = 0.012547288478700;
 XY26  =  0.000185631230000;
 XZ26  =  0.000000319320000;
 YY26  =  0.010441629108700;
 YZ26  =  0.000211493035000;
 ZZ26  = -0.000000537905000;
 
 IA26   = 0.800000000000000;
 
%/* Parameters Joint 27 */ 
 M27   = 0.175630000000000;
 
 MX27  =  0.010414859000000;
 MY27  =  0.000008781500000;
 MZ27  = -0.000121184700000;
 
 XX27 =  -0.000013580950000;
 XY27  =  0.000000637300000;
 XZ27 =  -0.000067214540000;
 YY27  =  0.000851195680000;
 YZ27  = -0.000000637300000;
 ZZ27  =  0.000013580950000;
 
 IA27 =   0.800000000000000;
 
%/* Parameters Joint 28 */ 
 M28  =  0.075950000000000;
 
 MX28 =  -0.000016709000000;
 MY28 =  -0.000566587000000;
 MZ28 =  -0.000012152000000;
 
 XX28  = -0.000000076740000;
 XY28  =  0.000038178710000;
 XZ28  =  0.000000003080000;
 YY28  =  0.000000076740000;
 YZ28  =  0.000000041570000;
 ZZ28  =  0.000039190690000;
 
 IA28  =  0.800000000000000;
 
%/* Parameters Joint 29 */ 
 M29   = 0.165690000000000;
 
 MX29  = -0.000273388500000;
 MY29 =   0.000631278900000;
 MZ29 =  -0.011576760300000;
 
 XX29 =   0.000000000000000;
 XY29 =   0.000000000000000;
 XZ29 =   0.001153670430000;
 YY29  =  0.001079817780000;
 YZ29  =  0.000000000000000;
 ZZ29  =  0.000000000000000;
 
 IA29  =  0.800000000000000;
 
%/* Parameters Joint 30 */ 
 M30  =  0.510160000000000;
 
 MX30  =  0.000000000000000;
 MY30  = -0.000933592800000;
 MZ30  = -0.015682318400000;
 
 XX30  =  0.001221589120000;
 XY30 =   0.000000080140000;
 XZ30 =  -0.000000011450000;
 YY30 =  0.001246078260000;
 YZ30  =  0.000001840950000;
 ZZ30  =  0.000187965050000;
 
 IA30 =   0.800000000000000;
 
%/* Parameters Joint 31 */ ;
 M31   = 0.238750000000000;
 
 MX31  = -0.001126900000000;
 MY31  = -0.010581400000000;
 MZ31  = -0.000128925000000;
 
 XX31  =  0.000866022500000;
 XY31  = -0.000061382550000;
 XZ31  = -0.000001572630000;
 YY31  =  0.000238918950000;
 YZ31 =   0.000009695150000;
 ZZ31 =   0.000818286660000;
 
 IA31  =  0.800000000000000;
 
%/* Parameters Joint 32 */ 
 M32  =  0.139810000000000;
 
 MX32 =   0.000037748700000;
 MY32  = -0.000191539700000;
 MZ32  = -0.000896182100000;
 
 XX32  =  0.000072546530000;
 XY32 =  -0.000000038140000;
 XZ32 =  -0.000000006460000;
 YY32 =   0.000038960100000;
 YZ32 =   0.000002296220000;
 ZZ32 =   0.000053765010000;
 
 IA32 =   0.800000000000000;
 
%/* Parameters Joint 33 */ 
 M33  =  1.412820000000000;
 
 MX33  =  0.002373537600000;
 MY33  =  0.106950474000000;
 MZ33  =  0.022845299400000;
 
 XX33  =  0.007354745890000;
 XY33  =  0.000684893440000;
 XZ33  =  0.000191527380000;
 YY33  =  0.014908741080000;
 YZ33  =  0.000051420930000;
 ZZ33  =  0.017318910790000;
 
 IA33 =   0.800000000000000;
 


%/* Declaration of the function */
% void InvDynModel_FlatFoot(Real *, Real *, Real *, Real *, Real *, 
%                           Real *, Real *, Real *, Real *, Real *, Real *);

%/* Interface function: This function will be called as:
 
%  (F_foot,M_foot,Torque) = InvDynModel_FlatFoot( Q, QD, QDD, OVDotO,OWDotO,OWO,F,M);*/

% void mexFunction( int nlhs, mxArray *plhs(),
%                   int nrhs, const mxArray *prhs() )
% {
% /* Declaration of input variables */
% Real *Q, *QD, *QDD, *OVDotO, *OWDotO, *OWO, *F, *M;
% /* Declaration of output variables */
% Real *F_foot, *M_foot, *Torque;
% 
% /* Check for proper number of arguments */
% 
% /* Getting input arguments */
% Q           = mxGetPr(prhs(0));
% QD          = mxGetPr(prhs(1));
% QDD         = mxGetPr(prhs(2));
% OVDotO      = mxGetPr(prhs(3));
% OWDotO      = mxGetPr(prhs(4));
% OWO         = mxGetPr(prhs(5));
% F           = mxGetPr(prhs(6));
% M           = mxGetPr(prhs(7));

 
% /* Memory allocation for output arguments */
% plhs(0)     = mxCreateDoubleMatrix(3,1, mxREAL);
% F_foot      = mxGetPr(plhs(0));
% plhs(1)     = mxCreateDoubleMatrix(3,1, mxREAL);
% M_foot      = mxGetPr(plhs(1));
% plhs(2)     = mxCreateDoubleMatrix(NJoints,1, mxREAL);
% Torque      = mxGetPr(plhs(2));
% 
% InvDynModel_FlatFoot(F_foot, M_foot, Torque, Q, QD, QDD, OVDotO, OWDotO,
%                      OWO, F, M);
% }
% /* Declaration of the function */
% void InvDynModel_FlatFoot(Real *F_foot, Real *M_foot, Real *Torque, Real *Q, Real *QD,
%                           Real *QDD, Real *OVDotO, Real *OWDotO, Real *OWO,
%                           Real *F, Real *M)
% {
% 
% /* Declaration of the input variables */
% double t1, t2, t3, t4, t5, t6, t7, t8, t9, t10;
% double t11, t12, t13, t14, t15, t16, t17, t18, t19, t20;
% double t21, t22, t23, t24, t25, t26, t27, t28 , t29, t30, t31, t32, t33;
% double OWDXO, OWDYO, OWZO, OWDZO, OVDXO, OWXO, OWYO, OVDYO;
% double OVDZO, QP1, QDP1;
% double QP2, QDP2;
% double QP3, QDP3, QP4, QDP4;
% double QP5, QDP5;
% double QP6, QDP6, QP7, QDP7;
% double QP8, QDP8, QP9, QDP9;
% double QP10, QDP10;
% double QP11, QDP11, QP12, QDP12;
% double QP13, QDP13;
% double QP14, QDP14;
% double QP15, QDP15, QP16, QDP16;
% double QP17;
% double QDP17, QP18, QDP18;
% double QP19, QDP19, QP20, QDP20;
% double QP21, QDP21;
% double QP22, QDP22;
% double QP23, QDP23, QP24;
% double QDP24, QP25, QDP25;
% double QP26, QDP26;
% double QP27, QDP27;
% double QP28, QDP28;
% double QP29, QDP29;
% double QP30, QDP30;
% double QP31, QDP31;
% double QP32, QDP32;
% double QP33, QDP33;
% double FX14, FY14, FZ14, CX14;
% double CY14, CZ14;
% 
% /* Declaration of the output variables */
% double GAM1, GAM2, GAM3, GAM4, GAM5, GAM6, GAM7, GAM8, GAM9, GAM10, GAM11;
% double GAM12, GAM13, GAM14, GAM15, GAM16, GAM17, GAM18, GAM19, GAM20, GAM21, GAM22;
% double GAM23, GAM24, GAM25, GAM26, GAM27, GAM28, GAM29, GAM30, GAM31, GAM32, GAM33, E10, E20, E30, N10;
% double N20, N30, WX0, WY0, WZ0, WPX0, WPY0, WPZ0, VPX0, VPY0, VPZ0;
% 
% double S2, C2, S3, C3, S4, C4, S5, C5, S6, C6;
% double S7, C7, S8, C8, S9, C9, S10, C10, S11, C11;
% double S12, C12, S13, C13, S15, C15, LOO315, S16, C16, S17;
% double C17, S18, C18, S19, C19, S20, C20, S21, C21, S22;
% double C22, S23, C23, S24, C24, S25, C25, S26, C26, S27;
% double C27, S28, C28, S29, C29, S30, C30, S31, C31, S32;
% double C32, S33, C33, DV111, DV221, DV331, DV121, DV131, DV231, U111;
% double U121, U131, U211, U221, U231, U311, U321, U331, F11, F21;
% double F31, PIS11, PIS21, PIS31, No11, No21, No31, WI12, WI22, W32;
% double WP12, WP22, WP32, DV112, DV222, DV332, DV122, DV132, DV232, U112;
% double U122, U132, U212, U222, U232, U312, U322, U332, VSP12, VSP22;
% double VSP32, VP12, VP22, F12, F22, F32, PIS12, PIS22, PIS32, No12;
% double No22, No32, WI13, WI23, W33, WP13, WP23, WP33, DV113, DV223;
% double DV333, DV123, DV133, DV233, U113, U123, U133, U213, U223, U233;
% double U313, U323, U333, VP13, VP23, F13, F23, F33, PIS13, PIS23;
% double PIS33, No13, No23, No33, WI14, WI24, W34, WP14, WP24, WP34;
% double DV114, DV224, DV334, DV124, DV134, DV234, U114, U124, U134, U214;
% double U224, U234, U314, U324, U334, VSP14, VSP24, VSP34, VP14, VP24;
% double F14, F24, F34, PIS14, PIS24, PIS34, No14, No24, No34, WI15;
% double WI25, W35, WP15, WP25, WP35, DV115, DV225, DV335, DV125, DV135;
% double DV235, U115, U125, U135, U215, U225, U235, U315, U325, U335;
% double VSP15, VSP25, VSP35, VP15, VP25, F15, F25, F35, PIS15, PIS25;
% double PIS35, No15, No25, No35, WI16, WI26, W36, WP16, WP26, WP36;
% double DV116, DV226, DV336, DV126, DV136, DV236, U116, U126, U136, U216;
% double U226, U236, U316, U326, U336, VP16, VP26, F16, F26, F36;
% double PIS16, PIS26, PIS36, No16, No26, No36, WI17, WI27, W37, WP17;
% double WP27, WP37, DV117, DV227, DV337, DV127, DV137, DV237, U117, U127;
% double U137, U217, U227, U237, U317, U327, U337, VP17, VP27, F17;
% double F27, F37, PIS17, PIS27, PIS37, No17, No27, No37, WI18, WI28;
% double W38, WP18, WP28, WP38, DV118, DV228, DV338, DV128, DV138, DV238;
% double U118, U128, U138, U218, U228, U238, U318, U328, U338, VSP18;
% double VSP28, VSP38, VP18, VP28, F18, F28, F38, PIS18, PIS28, PIS38;
% double No18, No28, No38, WI19, WI29, W39, WP19, WP29, WP39, DV119;
% double DV229, DV339, DV129, DV139, DV239, U119, U129, U139, U219, U229;
% double U239, U319, U329, U339, VP19, VP29, F19, F29, F39, PIS19;
% double PIS29, PIS39, No19, No29, No39, WI110, WI210, W310, WP110, WP210;
% double WP310, DV1110, DV2210, DV3310, DV1210, DV1310, DV2310, U1110, U1210, U1310;
% double U2110, U2210, U2310, U3110, U3210, U3310, VP110, VP210, F110, F210;
% double F310, PIS110, PIS210, PIS310, No110, No210, No310, WI111, WI211, W311;
% double WP111, WP211, WP311, DV1111, DV2211, DV3311, DV1211, DV1311, DV2311, U1111;
% double U1211, U1311, U2111, U2211, U2311, U3111, U3211, U3311, VSP111, VSP211;
% double VSP311, VP111, VP211, F111, F211, F311, PIS111, PIS211, PIS311, No111;
% double No211, No311, WI112, WI212, W312, WP112, WP212, WP312, DV1112, DV2212;
% double DV3312, DV1212, DV1312, DV2312, U1112, U1212, U1312, U2112, U2212, U2312;
% double U3112, U3212, U3312, VSP112, VSP212, VSP312, VP112, VP212, F112, F212;
% double F312, PIS112, PIS212, PIS312, No112, No212, No312, WI113, WI213, W313;
% double WP113, WP213, WP313, DV1113, DV2213, DV3313, DV1213, DV1313, DV2313, U1113;
% double U1213, U1313, U2113, U2213, U2313, U3113, U3213, U3313, VSP113, VSP213;
% double VSP313, VP113, VP213, F113, F213, F313, PIS113, PIS213, PIS313, No113;
% double No213, No313, DV1114, DV2214, DV3314, DV1214, DV1314, DV2314, U1114, U1214;
% double U1314, U2114, U2214, U2314, U3114, U3214, U3314, VSP114, VSP214, VSP314;
% double F114, F214, F314, PIS114, PIS214, PIS314, No114, No214, No314, WI115;
% double WI215, W315, WP115, WP215, WP315, DV1115, DV2215, DV3315, DV1215, DV1315;
% double DV2315, U1115, U1215, U1315, U2115, U2215, U2315, U3115, U3215, U3315;
% double VSP115, VSP215, VSP315, VP115, VP215, F115, F215, F315, PIS115, PIS215;
% double PIS315, No115, No215, No315, WI116, WI216, W316, WP116, WP216, WP316;
% double DV1116, DV2216, DV3316, DV1216, DV1316, DV2316, U1116, U1216, U1316, U2116;
% double U2216, U2316, U3116, U3216, U3316, VSP116, VSP216, VSP316, VP116, VP216;
% double F116, F216, F316, PIS116, PIS216, PIS316, No116, No216, No316, WI117;
% double WI217, W317, WP117, WP217, WP317, DV1117, DV2217, DV3317, DV1217, DV1317;
% double DV2317, U1117, U1217, U1317, U2117, U2217, U2317, U3117, U3217, U3317;
% double VSP117, VSP217, VSP317, VP117, VP217, F117, F217, F317, PIS117, PIS217;
% double PIS317, No117, No217, No317, WI118, WI218, W318, WP118, WP218, WP318;
% double DV1118, DV2218, DV3318, DV1218, DV1318, DV2318, U1118, U1218, U1318, U2118;
% double U2218, U2318, U3118, U3218, U3318, VP118, VP218, F118, F218, F318;
% double PIS118, PIS218, PIS318, No118, No218, No318, WI119, WI219, W319, WP119;
% double WP219, WP319, DV1119, DV2219, DV3319, DV1219, DV1319, DV2319, U1119, U1219;
% double U1319, U2119, U2219, U2319, U3119, U3219, U3319, VSP119, VSP219, VSP319;
% double VP119, VP219, F119, F219, F319, PIS119, PIS219, PIS319, No119, No219;
% double No319, WI120, WI220, W320, WP120, WP220, WP320, DV1120, DV2220, DV3320;
% double DV1220, DV1320, DV2320, U1120, U1220, U1320, U2120, U2220, U2320, U3120;
% double U3220, U3320, VP120, VP220, F120, F220, F320, PIS120, PIS220, PIS320;
% double No120, No220, No320, WI121, WI221, W321, WP121, WP221, WP321, DV1121;
% double DV2221, DV3321, DV1221, DV1321, DV2321, U1121, U1221, U1321, U2121, U2221;
% double U2321, U3121, U3221, U3321, VP121, VP221, F121, F221, F321, PIS121;
% double PIS221, PIS321, No121, No221, No321, WI122, WI222, W322, WP122, WP222;
% double WP322, DV1122, DV2222, DV3322, DV1222, DV1322, DV2322, U1122, U1222, U1322;
% double U2122, U2222, U2322, U3122, U3222, U3322, VP122, VP222, F122, F222;
% double F322, PIS122, PIS222, PIS322, No122, No222, No322, WI123, WI223, W323;
% double WP123, WP223, WP323, DV1123, DV2223, DV3323, DV1223, DV1323, DV2323, U1123;
% double U1223, U1323, U2123, U2223, U2323, U3123, U3223, U3323, VSP123, VSP223;
% double VSP323, VP123, VP223, F123, F223, F323, PIS123, PIS223, PIS323, No123;
% double No223, No323, WI124, WI224, W324, WP124, WP224, WP324, DV1124, DV2224;
% double DV3324, DV1224, DV1324, DV2324, U1124, U1224, U1324, U2124, U2224, U2324;
% double U3124, U3224, U3324, VSP124, VSP224, VSP324, VP124, VP224, F124, F224;
% double F324, PIS124, PIS224, PIS324, No124, No224, No324, WI125, WI225, W325;
% double WP125, WP225, WP325, DV1125, DV2225, DV3325, DV1225, DV1325, DV2325, U1125;
% double U1225, U1325, U2125, U2225, U2325, U3125, U3225, U3325, VP125, VP225;
% double F125, F225, F325, PIS125, PIS225, PIS325, No125, No225, No325, WI126;
% double WI226, W326, WP126, WP226, WP326, DV1126, DV2226, DV3326, DV1226, DV1326;
% double DV2326, U1126, U1226, U1326, U2126, U2226, U2326, U3126, U3226, U3326;
% double VSP126, VSP226, VSP326, VP126, VP226, F126, F226, F326, PIS126, PIS226;
% double PIS326, No126, No226, No326, WI127, WI227, W327, WP127, WP227, WP327;
% double DV1127, DV2227, DV3327, DV1227, DV1327, DV2327, U1127, U1227, U1327, U2127;
% double U2227, U2327, U3127, U3227, U3327, VP127, VP227, F127, F227, F327;
% double PIS127, PIS227, PIS327, No127, No227, No327, WI128, WI228, W328, WP128;
% double WP228, WP328, DV1128, DV2228, DV3328, DV1228, DV1328, DV2328, U1128, U1228;
% double U1328, U2128, U2228, U2328, U3128, U3228, U3328, VP128, VP228, F128;
% double F228, F328, PIS128, PIS228, PIS328, No128, No228, No328, WI129, WI229;
% double W329, WP129, WP229, WP329, DV1129, DV2229, DV3329, DV1229, DV1329, DV2329;
% double U1129, U1229, U1329, U2129, U2229, U2329, U3129, U3229, U3329, VP129;
% double VP229, F129, F229, F329, PIS129, PIS229, PIS329, No129, No229, No329;
% double WI130, WI230, W330, WP130, WP230, WP330, DV1130, DV2230, DV3330, DV1230;
% double DV1330, DV2330, U1130, U1230, U1330, U2130, U2230, U2330, U3130, U3230;
% double U3330, VSP130, VSP230, VSP330, VP130, VP230, F130, F230, F330, PIS130;
% double PIS230, PIS330, No130, No230, No330, WI131, WI231, W331, WP131, WP231;
% double WP331, DV1131, DV2231, DV3331, DV1231, DV1331, DV2331, U1131, U1231, U1331;
% double U2131, U2231, U2331, U3131, U3231, U3331, VP131, VP231, F131, F231;
% double F331, PIS131, PIS231, PIS331, No131, No231, No331, WI132, WI232, W332;
% double WP132, WP232, WP332, DV1132, DV2232, DV3332, DV1232, DV1332, DV2332, U1132;
% double U1232, U1332, U2132, U2232, U2332, U3132, U3232, U3332, VSP132, VSP232;
% double VSP332, VP132, VP232, F132, F232, F332, PIS132, PIS232, PIS332, No132;
% double No232, No332, WI133, WI233, W333, WP133, WP233, WP333, DV1133, DV2233;
% double DV3333, DV1233, DV1333, DV2333, U1133, U1233, U1333, U2133, U2233, U2333;
% double U3133, U3233, U3333, VP133, VP233, F133, F233, F333, PIS133, PIS233;
% double PIS333, No133, No233, No333, N133, N233, N333, FDI133, FDI333, E132;
% double E232, E332, N132, N232, N332, FDI132, FDI332, E131, E231, E331;
% double N131, N231, N331, FDI131, FDI331, E130, E230, E330, N130, N230;
% double N330, FDI130, FDI230, N129, N229, N329, FDI129, FDI329, E128, E228;
% double E328, N128, N228, N328, FDI128, FDI328, E127, E227, E327, N127;
% double N227, N327, FDI127, FDI327, E126, E226, E326, N126, N226, N326;
% double FDI126, FDI326, E125, E225, E325, N125, N225, N325, FDI125, FDI325;
% double E124, E224, E324, N124, N224, N324, FDI124, FDI324, E123, E223;
% double E323, N123, N223, N323, FDI123, FDI323, N122, N222, N322, FDI122;
% double FDI322, E121, E221, E321, N121, N221, N321, FDI121, FDI321, E120;
% double E220, E320, N120, N220, N320, FDI120, FDI320, E119, E219, E319;
% double N119, N219, N319, FDI119, FDI319, E118, E218, E318, N118, N218;
% double N318, FDI118, FDI318, E117, E217, E317, N117, N217, N317, FDI117;
% double FDI317, E116, E216, E316, N116, N216, N316, FDI116, FDI316, E115;
% double E215, E315, N115, N215, N315, FDI115, FDI215, E114, E214, E314;
% double N114, N214, N314, E113, E213, E313, N113, N213, N313, FDI113;
% double FDI313, E112, E212, E312, N112, N212, N312, FDI112, FDI212, E111;
% double E211, E311, N111, N211, N311, FDI111, FDI211, E110, E210, E310;
% double N110, N210, N310, FDI110, FDI310, E19, E29, E39, N19, N29;
% double N39, FDI19, FDI39, E18, E28, E38, N18, N28, N38, FDI18;
% double FDI28, E17, E27, E37, N17, N27, N37, FDI17, FDI37, E16;
% double E26, E36, N16, N26, N36, FDI16, FDI36, E15, E25, E35;
% double N15, N25, N35, FDI15, FDI25, E14, E24, E34, N14, N24;
% double N34, FDI14, FDI24, E13, E23, E33, N13, N23, N33, FDI13;
% double FDI33, E12, E22, E32, N12, N22, N32, FDI12, FDI32, E11;
% double E21, E31, N11, N21, N31;


    t2 = Q(1);
    t3 = Q(2);
    t4 = Q(3);
    t5 = Q(4);
    t6 = Q(5);
    t7 = Q(6);
    t8 = Q(7);
    t9 = Q(8);
    t10 = Q(9);
    t11 = Q(10);
    t12 = Q(11);
    t13 = Q(12);
    t15 = Q(13);
    t16 = Q(14);
    t17 = Q(15);
    t18 = Q(16);
    t19 = Q(17);
    t20 = Q(18);
    t21 = Q(19);
    t22 = Q(20);
    t23 = Q(21);
    t24 = Q(22);
    t25 = Q(23);
    t26 = Q(24);
    t27 = Q(25);
    t28 = Q(26);
    t29 = Q(27);
    t30 = Q(28);
    t31 = Q(29);
    t32 = Q(30);
    t33 = Q(31);
    
    QP2 = QD(1);
    QP3 = QD(2);
    QP4 = QD(3);
    QP5 = QD(4);
    QP6 = QD(5);
    QP7 = QD(6);
    QP8 = QD(7);
    QP9 = QD(8);
    QP10 = QD(9);
    QP11 = QD(10);
    QP12 = QD(11);
    QP13 = QD(12);
    QP15 = QD(13);
    QP16 = QD(14);
    QP17 = QD(15);
    QP18 = QD(16);
    QP19 = QD(17);
    QP20 = QD(18);
    QP21 = QD(19);
    QP22 = QD(20);
    QP23 = QD(21);
    QP24 = QD(22);
    QP25 = QD(23);
    QP26 = QD(24);
    QP27 = QD(25);
    QP28 = QD(26);
    QP29 = QD(27);
    QP30 = QD(28);
    QP31 = QD(29);
    QP32 = QD(30);
    QP33 = QD(31);
    

    QDP2 = QDD(1);
    QDP3 = QDD(2);
    QDP4 = QDD(3);
    QDP5 = QDD(4);
    QDP6 = QDD(5);
    QDP7 = QDD(6);
    QDP8 = QDD(7);
    QDP9 = QDD(8);
    QDP10 = QDD(9);
    QDP11 = QDD(10);
    QDP12 = QDD(11);
    QDP13 = QDD(12);
    QDP15 = QDD(13);
    QDP16 = QDD(14);
    QDP17 = QDD(15);
    QDP18 = QDD(16);
    QDP19 = QDD(17);
    QDP20 = QDD(18);
    QDP21 = QDD(19);
    QDP22 = QDD(20);
    QDP23 = QDD(21);
    QDP24 = QDD(22);
    QDP25 = QDD(23);
    QDP26 = QDD(24);
    QDP27 = QDD(25);
    QDP28 = QDD(26);
    QDP29 = QDD(27);
    QDP30 = QDD(28);
    QDP31 = QDD(29);
    QDP32 = QDD(30);
    QDP33 = QDD(31);
    
    WX0 = OWO(1);
    WY0 = OWO(2);
    WZ0 = OWO(3);
    
    WPX0 = OWDotO(1);
    WPY0 = OWDotO(2);
    WPZ0 = OWDotO(3);
            
    VPX0 = OVDotO(1);
    VPY0 = OVDotO(2);
    VPZ0 = OVDotO(3);
    
    FX14 = F(1);
    FY14 = F(2);
    FZ14 = F(3);
    
    CX14 = M(1);
    CY14 = M(2);
    CZ14 = M(3);
    
    
	S2=sin(t2);
	C2=cos(t2);
	S3=sin(t3);
	C3=cos(t3);
	S4=sin(t4);
	C4=cos(t4);
	S5=sin(t5);
	C5=cos(t5);
	S6=sin(t6);
	C6=cos(t6);
	S7=sin(t7);
	C7=cos(t7);
	S8=sin(t8);
	C8=cos(t8);
	S9=sin(t9);
	C9=cos(t9);
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
	LOO315=b15 + r15;
	S16=sin(t16);
	C16=cos(t16);
	S17=sin(t17);
	C17=cos(t17);
	S18=sin(t18);
	C18=cos(t18);
	S19=sin(t19);
	C19=cos(t19);
	S20=sin(t20);
	C20=cos(t20);
	S21=sin(t21);
	C21=cos(t21);
	S22=sin(t22);
	C22=cos(t22);
	S23=sin(t23);
	C23=cos(t23);
	S24=sin(t24);
	C24=cos(t24);
	S25=sin(t25);
	C25=cos(t25);
	S26=sin(t26);
	C26=cos(t26);
	S27=sin(t27);
	C27=cos(t27);
	S28=sin(t28);
	C28=cos(t28);
	S29=sin(t29);
	C29=cos(t29);
	S30=sin(t30);
	C30=cos(t30);
	S31=sin(t31);
	C31=cos(t31);
	S32=sin(t32);
	C32=cos(t32);
	S33=sin(t33);
	C33=cos(t33);
	DV111=-(WX0*WX0);
	DV221=-(WY0*WY0);
	DV331=-(WZ0*WZ0);
	DV121=WX0*WY0;
	DV131=WX0*WZ0;
	DV231=WY0*WZ0;
	U111=DV221 + DV331;
	U121=DV121 - WPZ0;
	U131=DV131 + WPY0;
	U211=DV121 + WPZ0;
	U221=DV111 + DV331;
	U231=DV231 - WPX0;
	U311=DV131 - WPY0;
	U321=DV231 + WPX0;
	U331=DV111 + DV221;
	F11=MX1*U111 + MY1*U121 + MZ1*U131 + M1*VPX0;
	F21=MX1*U211 + MY1*U221 + MZ1*U231 + M1*VPY0;
	F31=MX1*U311 + MY1*U321 + MZ1*U331 + M1*VPZ0;
	PIS11=-YY1 + ZZ1;
	PIS21=XX1 - ZZ1;
	PIS31=-XX1 + YY1;
	No11=DV231*PIS11 + WPX0*XX1 - U311*XY1 + U211*XZ1 + (-DV221 + DV331)*YZ1;
	No21=DV131*PIS21 + U321*XY1 + (DV111 - DV331)*XZ1 + WPY0*YY1 - U121*YZ1;
	No31=DV121*PIS31 + (-DV111 + DV221)*XY1 - U231*XZ1 + U131*YZ1 + WPZ0*ZZ1;
	WI12=C2*WX0 - S2*WZ0;
	WI22=-(S2*WX0) - C2*WZ0;
	W32=QP2 + WY0;
	WP12=QP2*WI22 + C2*WPX0 - S2*WPZ0;
	WP22=-(QP2*WI12) - S2*WPX0 - C2*WPZ0;
	WP32=QDP2 + WPY0;
	DV112=-(WI12*WI12);
	DV222=-(WI22*WI22);
	DV332=-(W32*W32);
	DV122=WI12*WI22;
	DV132=W32*WI12;
	DV232=W32*WI22;
	U112=DV222 + DV332;
	U122=DV122 - WP32;
	U132=DV132 + WP22;
	U212=DV122 + WP32;
	U222=DV112 + DV332;
	U232=DV232 - WP12;
	U312=DV132 - WP22;
	U322=DV232 + WP12;
	U332=DV112 + DV222;
	VSP12=d2*U111 - r2*U121 + VPX0;
	VSP22=d2*U211 - r2*U221 + VPY0;
	VSP32=d2*U311 - r2*U321 + VPZ0;
	VP12=C2*VSP12 - S2*VSP32;
	VP22=-(S2*VSP12) - C2*VSP32;
	F12=MX2*U112 + MY2*U122 + MZ2*U132 + M2*VP12;
	F22=MX2*U212 + MY2*U222 + MZ2*U232 + M2*VP22;
	F32=MX2*U312 + MY2*U322 + MZ2*U332 + M2*VSP22;
	PIS12=-YY2 + ZZ2;
	PIS22=XX2 - ZZ2;
	PIS32=-XX2 + YY2;
	No12=DV232*PIS12 + WP12*XX2 - U312*XY2 + U212*XZ2 + (-DV222 + DV332)*YZ2;
	No22=DV132*PIS22 + U322*XY2 + (DV112 - DV332)*XZ2 + WP22*YY2 - U122*YZ2;
	No32=DV122*PIS32 + (-DV112 + DV222)*XY2 - U232*XZ2 + U132*YZ2 + WP32*ZZ2;
	WI13=S3*W32 + C3*WI12;
	WI23=C3*W32 - S3*WI12;
	W33=QP3 - WI22;
	WP13=QP3*WI23 + C3*WP12 + S3*WP32;
	WP23=-(QP3*WI13) - S3*WP12 + C3*WP32;
	WP33=QDP3 - WP22;
	DV113=-(WI13*WI13);
	DV223=-(WI23*WI23);
	DV333=-(W33*W33);
	DV123=WI13*WI23;
	DV133=W33*WI13;
	DV233=W33*WI23;
	U113=DV223 + DV333;
	U123=DV123 - WP33;
	U133=DV133 + WP23;
	U213=DV123 + WP33;
	U223=DV113 + DV333;
	U233=DV233 - WP13;
	U313=DV133 - WP23;
	U323=DV233 + WP13;
	U333=DV113 + DV223;
	VP13=C3*VP12 + S3*VSP22;
	VP23=-(S3*VP12) + C3*VSP22;
	F13=MX3*U113 + MY3*U123 + MZ3*U133 + M3*VP13;
	F23=MX3*U213 + MY3*U223 + MZ3*U233 + M3*VP23;
	F33=MX3*U313 + MY3*U323 + MZ3*U333 - M3*VP22;
	PIS13=-YY3 + ZZ3;
	PIS23=XX3 - ZZ3;
	PIS33=-XX3 + YY3;
	No13=DV233*PIS13 + WP13*XX3 - U313*XY3 + U213*XZ3 + (-DV223 + DV333)*YZ3;
	No23=DV133*PIS23 + U323*XY3 + (DV113 - DV333)*XZ3 + WP23*YY3 - U123*YZ3;
	No33=DV123*PIS33 + (-DV113 + DV223)*XY3 - U233*XZ3 + U133*YZ3 + WP33*ZZ3;
	WI14=C4*WI13 + S4*WI23;
	WI24=-(S4*WI13) + C4*WI23;
	W34=QP4 + W33;
	WP14=QP4*WI24 + C4*WP13 + S4*WP23;
	WP24=-(QP4*WI14) - S4*WP13 + C4*WP23;
	WP34=QDP4 + WP33;
	DV114=-(WI14*WI14);
	DV224=-(WI24*WI24);
	DV334=-(W34*W34);
	DV124=WI14*WI24;
	DV134=W34*WI14;
	DV234=W34*WI24;
	U114=DV224 + DV334;
	U124=DV124 - WP34;
	U134=DV134 + WP24;
	U214=DV124 + WP34;
	U224=DV114 + DV334;
	U234=DV234 - WP14;
	U314=DV134 - WP24;
	U324=DV234 + WP14;
	U334=DV114 + DV224;
	VSP14=d4*U113 + VP13;
	VSP24=d4*U213 + VP23;
	VSP34=d4*U313 - VP22;
	VP14=C4*VSP14 + S4*VSP24;
	VP24=-(S4*VSP14) + C4*VSP24;
	F14=MX4*U114 + MY4*U124 + MZ4*U134 + M4*VP14;
	F24=MX4*U214 + MY4*U224 + MZ4*U234 + M4*VP24;
	F34=MX4*U314 + MY4*U324 + MZ4*U334 + M4*VSP34;
	PIS14=-YY4 + ZZ4;
	PIS24=XX4 - ZZ4;
	PIS34=-XX4 + YY4;
	No14=DV234*PIS14 + WP14*XX4 - U314*XY4 + U214*XZ4 + (-DV224 + DV334)*YZ4;
	No24=DV134*PIS24 + U324*XY4 + (DV114 - DV334)*XZ4 + WP24*YY4 - U124*YZ4;
	No34=DV124*PIS34 + (-DV114 + DV224)*XY4 - U234*XZ4 + U134*YZ4 + WP34*ZZ4;
	WI15=C5*WI14 + S5*WI24;
	WI25=-(S5*WI14) + C5*WI24;
	W35=QP5 + W34;
	WP15=QP5*WI25 + C5*WP14 + S5*WP24;
	WP25=-(QP5*WI15) - S5*WP14 + C5*WP24;
	WP35=QDP5 + WP34;
	DV115=-(WI15*WI15);
	DV225=-(WI25*WI25);
	DV335=-(W35*W35);
	DV125=WI15*WI25;
	DV135=W35*WI15;
	DV235=W35*WI25;
	U115=DV225 + DV335;
	U125=DV125 - WP35;
	U135=DV135 + WP25;
	U215=DV125 + WP35;
	U225=DV115 + DV335;
	U235=DV235 - WP15;
	U315=DV135 - WP25;
	U325=DV235 + WP15;
	U335=DV115 + DV225;
	VSP15=d5*U114 + VP14;
	VSP25=d5*U214 + VP24;
	VSP35=d5*U314 + VSP34;
	VP15=C5*VSP15 + S5*VSP25;
	VP25=-(S5*VSP15) + C5*VSP25;
	F15=MX5*U115 + MY5*U125 + MZ5*U135 + M5*VP15;
	F25=MX5*U215 + MY5*U225 + MZ5*U235 + M5*VP25;
	F35=MX5*U315 + MY5*U325 + MZ5*U335 + M5*VSP35;
	PIS15=-YY5 + ZZ5;
	PIS25=XX5 - ZZ5;
	PIS35=-XX5 + YY5;
	No15=DV235*PIS15 + WP15*XX5 - U315*XY5 + U215*XZ5 + (-DV225 + DV335)*YZ5;
	No25=DV135*PIS25 + U325*XY5 + (DV115 - DV335)*XZ5 + WP25*YY5 - U125*YZ5;
	No35=DV125*PIS35 + (-DV115 + DV225)*XY5 - U235*XZ5 + U135*YZ5 + WP35*ZZ5;
	WI16=-(S6*W35) + C6*WI15;
	WI26=-(C6*W35) - S6*WI15;
	W36=QP6 + WI25;
	WP16=QP6*WI26 + C6*WP15 - S6*WP35;
	WP26=-(QP6*WI16) - S6*WP15 - C6*WP35;
	WP36=QDP6 + WP25;
	DV116=-(WI16*WI16);
	DV226=-(WI26*WI26);
	DV336=-(W36*W36);
	DV126=WI16*WI26;
	DV136=W36*WI16;
	DV236=W36*WI26;
	U116=DV226 + DV336;
	U126=DV126 - WP36;
	U136=DV136 + WP26;
	U216=DV126 + WP36;
	U226=DV116 + DV336;
	U236=DV236 - WP16;
	U316=DV136 - WP26;
	U326=DV236 + WP16;
	U336=DV116 + DV226;
	VP16=C6*VP15 - S6*VSP35;
	VP26=-(S6*VP15) - C6*VSP35;
	F16=MX6*U116 + MY6*U126 + MZ6*U136 + M6*VP16;
	F26=MX6*U216 + MY6*U226 + MZ6*U236 + M6*VP26;
	F36=MX6*U316 + MY6*U326 + MZ6*U336 + M6*VP25;
	PIS16=-YY6 + ZZ6;
	PIS26=XX6 - ZZ6;
	PIS36=-XX6 + YY6;
	No16=DV236*PIS16 + WP16*XX6 - U316*XY6 + U216*XZ6 + (-DV226 + DV336)*YZ6;
	No26=DV136*PIS26 + U326*XY6 + (DV116 - DV336)*XZ6 + WP26*YY6 - U126*YZ6;
	No36=DV126*PIS36 + (-DV116 + DV226)*XY6 - U236*XZ6 + U136*YZ6 + WP36*ZZ6;
	WI17=-(S7*W36) + C7*WI16;
	WI27=-(C7*W36) - S7*WI16;
	W37=QP7 + WI26;
	WP17=QP7*WI27 + C7*WP16 - S7*WP36;
	WP27=-(QP7*WI17) - S7*WP16 - C7*WP36;
	WP37=QDP7 + WP26;
	DV117=-(WI17*WI17);
	DV227=-(WI27*WI27);
	DV337=-(W37*W37);
	DV127=WI17*WI27;
	DV137=W37*WI17;
	DV237=W37*WI27;
	U117=DV227 + DV337;
	U127=DV127 - WP37;
	U137=DV137 + WP27;
	U217=DV127 + WP37;
	U227=DV117 + DV337;
	U237=DV237 - WP17;
	U317=DV137 - WP27;
	U327=DV237 + WP17;
	U337=DV117 + DV227;
	VP17=C7*VP16 - S7*VP25;
	VP27=-(S7*VP16) - C7*VP25;
	F17=MX7*U117 + MY7*U127 + MZ7*U137 + M7*VP17;
	F27=MX7*U217 + MY7*U227 + MZ7*U237 + M7*VP27;
	F37=MX7*U317 + MY7*U327 + MZ7*U337 + M7*VP26;
	PIS17=-YY7 + ZZ7;
	PIS27=XX7 - ZZ7;
	PIS37=-XX7 + YY7;
	No17=DV237*PIS17 + WP17*XX7 - U317*XY7 + U217*XZ7 + (-DV227 + DV337)*YZ7;
	No27=DV137*PIS27 + U327*XY7 + (DV117 - DV337)*XZ7 + WP27*YY7 - U127*YZ7;
	No37=DV127*PIS37 + (-DV117 + DV227)*XY7 - U237*XZ7 + U137*YZ7 + WP37*ZZ7;
	WI18=C8*WI17 + S8*WI27;
	WI28=-(S8*WI17) + C8*WI27;
	W38=QP8 + W37;
	WP18=QP8*WI28 + C8*WP17 + S8*WP27;
	WP28=-(QP8*WI18) - S8*WP17 + C8*WP27;
	WP38=QDP8 + WP37;
	DV118=-(WI18*WI18);
	DV228=-(WI28*WI28);
	DV338=-(W38*W38);
	DV128=WI18*WI28;
	DV138=W38*WI18;
	DV238=W38*WI28;
	U118=DV228 + DV338;
	U128=DV128 - WP38;
	U138=DV138 + WP28;
	U218=DV128 + WP38;
	U228=DV118 + DV338;
	U238=DV238 - WP18;
	U318=DV138 - WP28;
	U328=DV238 + WP18;
	U338=DV118 + DV228;
	VSP18=-(d8*U117) + VP17;
	VSP28=-(d8*U217) + VP27;
	VSP38=-(d8*U317) + VP26;
	VP18=C8*VSP18 + S8*VSP28;
	VP28=-(S8*VSP18) + C8*VSP28;
	F18=MX8*U118 + MY8*U128 + MZ8*U138 + M8*VP18;
	F28=MX8*U218 + MY8*U228 + MZ8*U238 + M8*VP28;
	F38=MX8*U318 + MY8*U328 + MZ8*U338 + M8*VSP38;
	PIS18=-YY8 + ZZ8;
	PIS28=XX8 - ZZ8;
	PIS38=-XX8 + YY8;
	No18=DV238*PIS18 + WP18*XX8 - U318*XY8 + U218*XZ8 + (-DV228 + DV338)*YZ8;
	No28=DV138*PIS28 + U328*XY8 + (DV118 - DV338)*XZ8 + WP28*YY8 - U128*YZ8;
	No38=DV128*PIS38 + (-DV118 + DV228)*XY8 - U238*XZ8 + U138*YZ8 + WP38*ZZ8;
	WI19=S9*W38 + C9*WI18;
	WI29=C9*W38 - S9*WI18;
	W39=QP9 - WI28;
	WP19=QP9*WI29 + C9*WP18 + S9*WP38;
	WP29=-(QP9*WI19) - S9*WP18 + C9*WP38;
	WP39=QDP9 - WP28;
	DV119=-(WI19*WI19);
	DV229=-(WI29*WI29);
	DV339=-(W39*W39);
	DV129=WI19*WI29;
	DV139=W39*WI19;
	DV239=W39*WI29;
	U119=DV229 + DV339;
	U129=DV129 - WP39;
	U139=DV139 + WP29;
	U219=DV129 + WP39;
	U229=DV119 + DV339;
	U239=DV239 - WP19;
	U319=DV139 - WP29;
	U329=DV239 + WP19;
	U339=DV119 + DV229;
	VP19=C9*VP18 + S9*VSP38;
	VP29=-(S9*VP18) + C9*VSP38;
	F19=MX9*U119 + MY9*U129 + MZ9*U139 + M9*VP19;
	F29=MX9*U219 + MY9*U229 + MZ9*U239 + M9*VP29;
	F39=MX9*U319 + MY9*U329 + MZ9*U339 - M9*VP28;
	PIS19=-YY9 + ZZ9;
	PIS29=XX9 - ZZ9;
	PIS39=-XX9 + YY9;
	No19=DV239*PIS19 + WP19*XX9 - U319*XY9 + U219*XZ9 + (-DV229 + DV339)*YZ9;
	No29=DV139*PIS29 + U329*XY9 + (DV119 - DV339)*XZ9 + WP29*YY9 - U129*YZ9;
	No39=DV129*PIS39 + (-DV119 + DV229)*XY9 - U239*XZ9 + U139*YZ9 + WP39*ZZ9;
	WI110=S10*W39 + C10*WI19;
	WI210=C10*W39 - S10*WI19;
	W310=QP10 - WI29;
	WP110=QP10*WI210 + C10*WP19 + S10*WP39;
	WP210=-(QP10*WI110) - S10*WP19 + C10*WP39;
	WP310=QDP10 - WP29;
	DV1110=-(WI110*WI110);
	DV2210=-(WI210*WI210);
	DV3310=-(W310*W310);
	DV1210=WI110*WI210;
	DV1310=W310*WI110;
	DV2310=W310*WI210;
	U1110=DV2210 + DV3310;
	U1210=DV1210 - WP310;
	U1310=DV1310 + WP210;
	U2110=DV1210 + WP310;
	U2210=DV1110 + DV3310;
	U2310=DV2310 - WP110;
	U3110=DV1310 - WP210;
	U3210=DV2310 + WP110;
	U3310=DV1110 + DV2210;
	VP110=C10*VP19 - S10*VP28;
	VP210=-(S10*VP19) - C10*VP28;
	F110=MX10*U1110 + MY10*U1210 + MZ10*U1310 + M10*VP110;
	F210=MX10*U2110 + MY10*U2210 + MZ10*U2310 + M10*VP210;
	F310=MX10*U3110 + MY10*U3210 + MZ10*U3310 - M10*VP29;
	PIS110=-YY10 + ZZ10;
	PIS210=XX10 - ZZ10;
	PIS310=-XX10 + YY10;
	No110=DV2310*PIS110 + WP110*XX10 - U3110*XY10 + U2110*XZ10 + (-DV2210 + DV3310)*YZ10;
	No210=DV1310*PIS210 + U3210*XY10 + (DV1110 - DV3310)*XZ10 + WP210*YY10 - U1210*YZ10;
	No310=DV1210*PIS310 + (-DV1110 + DV2210)*XY10 - U2310*XZ10 + U1310*YZ10 + WP310*ZZ10;
	WI111=C11*WI110 + S11*WI210;
	WI211=-(S11*WI110) + C11*WI210;
	W311=QP11 + W310;
	WP111=QP11*WI211 + C11*WP110 + S11*WP210;
	WP211=-(QP11*WI111) - S11*WP110 + C11*WP210;
	WP311=QDP11 + WP310;
	DV1111=-(WI111*WI111);
	DV2211=-(WI211*WI211);
	DV3311=-(W311*W311);
	DV1211=WI111*WI211;
	DV1311=W311*WI111;
	DV2311=W311*WI211;
	U1111=DV2211 + DV3311;
	U1211=DV1211 - WP311;
	U1311=DV1311 + WP211;
	U2111=DV1211 + WP311;
	U2211=DV1111 + DV3311;
	U2311=DV2311 - WP111;
	U3111=DV1311 - WP211;
	U3211=DV2311 + WP111;
	U3311=DV1111 + DV2211;
	VSP111=-(d11*U1110) + VP110;
	VSP211=-(d11*U2110) + VP210;
	VSP311=-(d11*U3110) - VP29;
	VP111=C11*VSP111 + S11*VSP211;
	VP211=-(S11*VSP111) + C11*VSP211;
	F111=MX11*U1111 + MY11*U1211 + MZ11*U1311 + M11*VP111;
	F211=MX11*U2111 + MY11*U2211 + MZ11*U2311 + M11*VP211;
	F311=MX11*U3111 + MY11*U3211 + MZ11*U3311 + M11*VSP311;
	PIS111=-YY11 + ZZ11;
	PIS211=XX11 - ZZ11;
	PIS311=-XX11 + YY11;
	No111=DV2311*PIS111 + WP111*XX11 - U3111*XY11 + U2111*XZ11 + (-DV2211 + DV3311)*YZ11;
	No211=DV1311*PIS211 + U3211*XY11 + (DV1111 - DV3311)*XZ11 + WP211*YY11 - U1211*YZ11;
	No311=DV1211*PIS311 + (-DV1111 + DV2211)*XY11 - U2311*XZ11 + U1311*YZ11 + WP311*ZZ11;
	WI112=C12*WI111 + S12*WI211;
	WI212=-(S12*WI111) + C12*WI211;
	W312=QP12 + W311;
	WP112=QP12*WI212 + C12*WP111 + S12*WP211;
	WP212=-(QP12*WI112) - S12*WP111 + C12*WP211;
	WP312=QDP12 + WP311;
	DV1112=-(WI112*WI112);
	DV2212=-(WI212*WI212);
	DV3312=-(W312*W312);
	DV1212=WI112*WI212;
	DV1312=W312*WI112;
	DV2312=W312*WI212;
	U1112=DV2212 + DV3312;
	U1212=DV1212 - WP312;
	U1312=DV1312 + WP212;
	U2112=DV1212 + WP312;
	U2212=DV1112 + DV3312;
	U2312=DV2312 - WP112;
	U3112=DV1312 - WP212;
	U3212=DV2312 + WP112;
	U3312=DV1112 + DV2212;
	VSP112=-(d12*U1111) + VP111;
	VSP212=-(d12*U2111) + VP211;
	VSP312=-(d12*U3111) + VSP311;
	VP112=C12*VSP112 + S12*VSP212;
	VP212=-(S12*VSP112) + C12*VSP212;
	F112=MX12*U1112 + MY12*U1212 + MZ12*U1312 + M12*VP112;
	F212=MX12*U2112 + MY12*U2212 + MZ12*U2312 + M12*VP212;
	F312=MX12*U3112 + MY12*U3212 + MZ12*U3312 + M12*VSP312;
	PIS112=-YY12 + ZZ12;
	PIS212=XX12 - ZZ12;
	PIS312=-XX12 + YY12;
	No112=DV2312*PIS112 + WP112*XX12 - U3112*XY12 + U2112*XZ12 + (-DV2212 + DV3312)*YZ12;
	No212=DV1312*PIS212 + U3212*XY12 + (DV1112 - DV3312)*XZ12 + WP212*YY12 - U1212*YZ12;
	No312=DV1212*PIS312 + (-DV1112 + DV2212)*XY12 - U2312*XZ12 + U1312*YZ12 + WP312*ZZ12;
	WI113=-(S13*W312) + C13*WI112;
	WI213=-(C13*W312) - S13*WI112;
	W313=QP13 + WI212;
	WP113=QP13*WI213 + C13*WP112 - S13*WP312;
	WP213=-(QP13*WI113) - S13*WP112 - C13*WP312;
	WP313=QDP13 + WP212;
	DV1113=-(WI113*WI113);
	DV2213=-(WI213*WI213);
	DV3313=-(W313*W313);
	DV1213=WI113*WI213;
	DV1313=W313*WI113;
	DV2313=W313*WI213;
	U1113=DV2213 + DV3313;
	U1213=DV1213 - WP313;
	U1313=DV1313 + WP213;
	U2113=DV1213 + WP313;
	U2213=DV1113 + DV3313;
	U2313=DV2313 - WP113;
	U3113=DV1313 - WP213;
	U3213=DV2313 + WP113;
	U3313=DV1113 + DV2213;
	VSP113=r13*U1212 + VP112;
	VSP213=r13*U2212 + VP212;
	VSP313=r13*U3212 + VSP312;
	VP113=C13*VSP113 - S13*VSP313;
	VP213=-(S13*VSP113) - C13*VSP313;
	F113=MX13*U1113 + MY13*U1213 + MZ13*U1313 + M13*VP113;
	F213=MX13*U2113 + MY13*U2213 + MZ13*U2313 + M13*VP213;
	F313=MX13*U3113 + MY13*U3213 + MZ13*U3313 + M13*VSP213;
	PIS113=-YY13 + ZZ13;
	PIS213=XX13 - ZZ13;
	PIS313=-XX13 + YY13;
	No113=DV2313*PIS113 + WP113*XX13 - U3113*XY13 + U2113*XZ13 + (-DV2213 + DV3313)*YZ13;
	No213=DV1313*PIS213 + U3213*XY13 + (DV1113 - DV3313)*XZ13 + WP213*YY13 - U1213*YZ13;
	No313=DV1213*PIS313 + (-DV1113 + DV2213)*XY13 - U2313*XZ13 + U1313*YZ13 + WP313*ZZ13;
	DV1114=-(WI113*WI113);
	DV2214=-(W313*W313);
	DV3314=-(WI213*WI213);
	DV1214=W313*WI113;
	DV1314=-(WI113*WI213);
	DV2314=-(W313*WI213);
	U1114=DV2214 + DV3314;
	U1214=DV1214 + WP213;
	U1314=DV1314 + WP313;
	U2114=DV1214 - WP213;
	U2214=DV1114 + DV3314;
	U2314=DV2314 - WP113;
	U3114=DV1314 - WP313;
	U3214=DV2314 + WP113;
	U3314=DV1114 + DV2214;
	VSP114=-(d14*U1113) + VP113;
	VSP214=-(d14*U2113) + VP213;
	VSP314=-(d14*U3113) + VSP213;
	F114=MX14*U1114 + MY14*U1214 + MZ14*U1314 + M14*VSP114;
	F214=MX14*U2114 + MY14*U2214 + MZ14*U2314 + M14*VSP314;
	F314=MX14*U3114 + MY14*U3214 + MZ14*U3314 - M14*VSP214;
	PIS114=-YY14 + ZZ14;
	PIS214=XX14 - ZZ14;
	PIS314=-XX14 + YY14;
	No114=DV2314*PIS114 + WP113*XX14 - U3114*XY14 + U2114*XZ14 + (-DV2214 + DV3314)*YZ14;
	No214=DV1314*PIS214 + U3214*XY14 + (DV1114 - DV3314)*XZ14 + WP313*YY14 - U1214*YZ14;
	No314=DV1214*PIS314 + (-DV1114 + DV2214)*XY14 - U2314*XZ14 + U1314*YZ14 - WP213*ZZ14;
	WI115=C15*WI17 + S15*WI27;
	WI215=-(S15*WI17) + C15*WI27;
	W315=QP15 + W37;
	WP115=QP15*WI215 + C15*WP17 + S15*WP27;
	WP215=-(QP15*WI115) - S15*WP17 + C15*WP27;
	WP315=QDP15 + WP37;
	DV1115=-(WI115*WI115);
	DV2215=-(WI215*WI215);
	DV3315=-(W315*W315);
	DV1215=WI115*WI215;
	DV1315=W315*WI115;
	DV2315=W315*WI215;
	U1115=DV2215 + DV3315;
	U1215=DV1215 - WP315;
	U1315=DV1315 + WP215;
	U2115=DV1215 + WP315;
	U2215=DV1115 + DV3315;
	U2315=DV2315 - WP115;
	U3115=DV1315 - WP215;
	U3215=DV2315 + WP115;
	U3315=DV1115 + DV2215;
	VSP115=-(d15*U117) + LOO315*U137 + VP17;
	VSP215=-(d15*U217) + LOO315*U237 + VP27;
	VSP315=-(d15*U317) + LOO315*U337 + VP26;
	VP115=C15*VSP115 + S15*VSP215;
	VP215=-(S15*VSP115) + C15*VSP215;
	F115=MX15*U1115 + MY15*U1215 + MZ15*U1315 + M15*VP115;
	F215=MX15*U2115 + MY15*U2215 + MZ15*U2315 + M15*VP215;
	F315=MX15*U3115 + MY15*U3215 + MZ15*U3315 + M15*VSP315;
	PIS115=-YY15 + ZZ15;
	PIS215=XX15 - ZZ15;
	PIS315=-XX15 + YY15;
	No115=DV2315*PIS115 + WP115*XX15 - U3115*XY15 + U2115*XZ15 + (-DV2215 + DV3315)*YZ15;
	No215=DV1315*PIS215 + U3215*XY15 + (DV1115 - DV3315)*XZ15 + WP215*YY15 - U1215*YZ15;
	No315=DV1215*PIS315 + (-DV1115 + DV2215)*XY15 - U2315*XZ15 + U1315*YZ15 + WP315*ZZ15;
	WI116=-(S16*W315) + C16*WI115;
	WI216=-(C16*W315) - S16*WI115;
	W316=QP16 + WI215;
	WP116=QP16*WI216 + C16*WP115 - S16*WP315;
	WP216=-(QP16*WI116) - S16*WP115 - C16*WP315;
	WP316=QDP16 + WP215;
	DV1116=-(WI116*WI116);
	DV2216=-(WI216*WI216);
	DV3316=-(W316*W316);
	DV1216=WI116*WI216;
	DV1316=W316*WI116;
	DV2316=W316*WI216;
	U1116=DV2216 + DV3316;
	U1216=DV1216 - WP316;
	U1316=DV1316 + WP216;
	U2116=DV1216 + WP316;
	U2216=DV1116 + DV3316;
	U2316=DV2316 - WP116;
	U3116=DV1316 - WP216;
	U3216=DV2316 + WP116;
	U3316=DV1116 + DV2216;
	VSP116=d16*U1115 + r16*U1215 + VP115;
	VSP216=d16*U2115 + r16*U2215 + VP215;
	VSP316=d16*U3115 + r16*U3215 + VSP315;
	VP116=C16*VSP116 - S16*VSP316;
	VP216=-(S16*VSP116) - C16*VSP316;
	F116=MX16*U1116 + MY16*U1216 + MZ16*U1316 + M16*VP116;
	F216=MX16*U2116 + MY16*U2216 + MZ16*U2316 + M16*VP216;
	F316=MX16*U3116 + MY16*U3216 + MZ16*U3316 + M16*VSP216;
	PIS116=-YY16 + ZZ16;
	PIS216=XX16 - ZZ16;
	PIS316=-XX16 + YY16;
	No116=DV2316*PIS116 + WP116*XX16 - U3116*XY16 + U2116*XZ16 + (-DV2216 + DV3316)*YZ16;
	No216=DV1316*PIS216 + U3216*XY16 + (DV1116 - DV3316)*XZ16 + WP216*YY16 - U1216*YZ16;
	No316=DV1216*PIS316 + (-DV1116 + DV2216)*XY16 - U2316*XZ16 + U1316*YZ16 + WP316*ZZ16;
	WI117=S17*W316 + C17*WI116;
	WI217=C17*W316 - S17*WI116;
	W317=QP17 - WI216;
	WP117=QP17*WI217 + C17*WP116 + S17*WP316;
	WP217=-(QP17*WI117) - S17*WP116 + C17*WP316;
	WP317=QDP17 - WP216;
	DV1117=-(WI117*WI117);
	DV2217=-(WI217*WI217);
	DV3317=-(W317*W317);
	DV1217=WI117*WI217;
	DV1317=W317*WI117;
	DV2317=W317*WI217;
	U1117=DV2217 + DV3317;
	U1217=DV1217 - WP317;
	U1317=DV1317 + WP217;
	U2117=DV1217 + WP317;
	U2217=DV1117 + DV3317;
	U2317=DV2317 - WP117;
	U3117=DV1317 - WP217;
	U3217=DV2317 + WP117;
	U3317=DV1117 + DV2217;
	VSP117=r17*U1216 + VP116;
	VSP217=r17*U2216 + VP216;
	VSP317=r17*U3216 + VSP216;
	VP117=C17*VSP117 + S17*VSP317;
	VP217=-(S17*VSP117) + C17*VSP317;
	F117=MX17*U1117 + MY17*U1217 + MZ17*U1317 + M17*VP117;
	F217=MX17*U2117 + MY17*U2217 + MZ17*U2317 + M17*VP217;
	F317=MX17*U3117 + MY17*U3217 + MZ17*U3317 - M17*VSP217;
	PIS117=-YY17 + ZZ17;
	PIS217=XX17 - ZZ17;
	PIS317=-XX17 + YY17;
	No117=DV2317*PIS117 + WP117*XX17 - U3117*XY17 + U2117*XZ17 + (-DV2217 + DV3317)*YZ17;
	No217=DV1317*PIS217 + U3217*XY17 + (DV1117 - DV3317)*XZ17 + WP217*YY17 - U1217*YZ17;
	No317=DV1217*PIS317 + (-DV1117 + DV2217)*XY17 - U2317*XZ17 + U1317*YZ17 + WP317*ZZ17;
	WI118=-(S18*W317) + C18*WI117;
	WI218=-(C18*W317) - S18*WI117;
	W318=QP18 + WI217;
	WP118=QP18*WI218 + C18*WP117 - S18*WP317;
	WP218=-(QP18*WI118) - S18*WP117 - C18*WP317;
	WP318=QDP18 + WP217;
	DV1118=-(WI118*WI118);
	DV2218=-(WI218*WI218);
	DV3318=-(W318*W318);
	DV1218=WI118*WI218;
	DV1318=W318*WI118;
	DV2318=W318*WI218;
	U1118=DV2218 + DV3318;
	U1218=DV1218 - WP318;
	U1318=DV1318 + WP218;
	U2118=DV1218 + WP318;
	U2218=DV1118 + DV3318;
	U2318=DV2318 - WP118;
	U3118=DV1318 - WP218;
	U3218=DV2318 + WP118;
	U3318=DV1118 + DV2218;
	VP118=C18*VP117 + S18*VSP217;
	VP218=-(S18*VP117) + C18*VSP217;
	F118=MX18*U1118 + MY18*U1218 + MZ18*U1318 + M18*VP118;
	F218=MX18*U2118 + MY18*U2218 + MZ18*U2318 + M18*VP218;
	F318=MX18*U3118 + MY18*U3218 + MZ18*U3318 + M18*VP217;
	PIS118=-YY18 + ZZ18;
	PIS218=XX18 - ZZ18;
	PIS318=-XX18 + YY18;
	No118=DV2318*PIS118 + WP118*XX18 - U3118*XY18 + U2118*XZ18 + (-DV2218 + DV3318)*YZ18;
	No218=DV1318*PIS218 + U3218*XY18 + (DV1118 - DV3318)*XZ18 + WP218*YY18 - U1218*YZ18;
	No318=DV1218*PIS318 + (-DV1118 + DV2218)*XY18 - U2318*XZ18 + U1318*YZ18 + WP318*ZZ18;
	WI119=S19*W318 + C19*WI118;
	WI219=C19*W318 - S19*WI118;
	W319=QP19 - WI218;
	WP119=QP19*WI219 + C19*WP118 + S19*WP318;
	WP219=-(QP19*WI119) - S19*WP118 + C19*WP318;
	WP319=QDP19 - WP218;
	DV1119=-(WI119*WI119);
	DV2219=-(WI219*WI219);
	DV3319=-(W319*W319);
	DV1219=WI119*WI219;
	DV1319=W319*WI119;
	DV2319=W319*WI219;
	U1119=DV2219 + DV3319;
	U1219=DV1219 - WP319;
	U1319=DV1319 + WP219;
	U2119=DV1219 + WP319;
	U2219=DV1119 + DV3319;
	U2319=DV2319 - WP119;
	U3119=DV1319 - WP219;
	U3219=DV2319 + WP119;
	U3319=DV1119 + DV2219;
	VSP119=r19*U1218 + VP118;
	VSP219=r19*U2218 + VP218;
	VSP319=r19*U3218 + VP217;
	VP119=C19*VSP119 + S19*VSP319;
	VP219=-(S19*VSP119) + C19*VSP319;
	F119=MX19*U1119 + MY19*U1219 + MZ19*U1319 + M19*VP119;
	F219=MX19*U2119 + MY19*U2219 + MZ19*U2319 + M19*VP219;
	F319=MX19*U3119 + MY19*U3219 + MZ19*U3319 - M19*VSP219;
	PIS119=-YY19 + ZZ19;
	PIS219=XX19 - ZZ19;
	PIS319=-XX19 + YY19;
	No119=DV2319*PIS119 + WP119*XX19 - U3119*XY19 + U2119*XZ19 + (-DV2219 + DV3319)*YZ19;
	No219=DV1319*PIS219 + U3219*XY19 + (DV1119 - DV3319)*XZ19 + WP219*YY19 - U1219*YZ19;
	No319=DV1219*PIS319 + (-DV1119 + DV2219)*XY19 - U2319*XZ19 + U1319*YZ19 + WP319*ZZ19;
	WI120=S20*W319 + C20*WI119;
	WI220=C20*W319 - S20*WI119;
	W320=QP20 - WI219;
	WP120=QP20*WI220 + C20*WP119 + S20*WP319;
	WP220=-(QP20*WI120) - S20*WP119 + C20*WP319;
	WP320=QDP20 - WP219;
	DV1120=-(WI120*WI120);
	DV2220=-(WI220*WI220);
	DV3320=-(W320*W320);
	DV1220=WI120*WI220;
	DV1320=W320*WI120;
	DV2320=W320*WI220;
	U1120=DV2220 + DV3320;
	U1220=DV1220 - WP320;
	U1320=DV1320 + WP220;
	U2120=DV1220 + WP320;
	U2220=DV1120 + DV3320;
	U2320=DV2320 - WP120;
	U3120=DV1320 - WP220;
	U3220=DV2320 + WP120;
	U3320=DV1120 + DV2220;
	VP120=C20*VP119 - S20*VSP219;
	VP220=-(S20*VP119) - C20*VSP219;
	F120=MX20*U1120 + MY20*U1220 + MZ20*U1320 + M20*VP120;
	F220=MX20*U2120 + MY20*U2220 + MZ20*U2320 + M20*VP220;
	F320=MX20*U3120 + MY20*U3220 + MZ20*U3320 - M20*VP219;
	PIS120=-YY20 + ZZ20;
	PIS220=XX20 - ZZ20;
	PIS320=-XX20 + YY20;
	No120=DV2320*PIS120 + WP120*XX20 - U3120*XY20 + U2120*XZ20 + (-DV2220 + DV3320)*YZ20;
	No220=DV1320*PIS220 + U3220*XY20 + (DV1120 - DV3320)*XZ20 + WP220*YY20 - U1220*YZ20;
	No320=DV1220*PIS320 + (-DV1120 + DV2220)*XY20 - U2320*XZ20 + U1320*YZ20 + WP320*ZZ20;
	WI121=S21*W320 + C21*WI120;
	WI221=C21*W320 - S21*WI120;
	W321=QP21 - WI220;
	WP121=QP21*WI221 + C21*WP120 + S21*WP320;
	WP221=-(QP21*WI121) - S21*WP120 + C21*WP320;
	WP321=QDP21 - WP220;
	DV1121=-(WI121*WI121);
	DV2221=-(WI221*WI221);
	DV3321=-(W321*W321);
	DV1221=WI121*WI221;
	DV1321=W321*WI121;
	DV2321=W321*WI221;
	U1121=DV2221 + DV3321;
	U1221=DV1221 - WP321;
	U1321=DV1321 + WP221;
	U2121=DV1221 + WP321;
	U2221=DV1121 + DV3321;
	U2321=DV2321 - WP121;
	U3121=DV1321 - WP221;
	U3221=DV2321 + WP121;
	U3321=DV1121 + DV2221;
	VP121=C21*VP120 - S21*VP219;
	VP221=-(S21*VP120) - C21*VP219;
	F121=MX21*U1121 + MY21*U1221 + MZ21*U1321 + M21*VP121;
	F221=MX21*U2121 + MY21*U2221 + MZ21*U2321 + M21*VP221;
	F321=MX21*U3121 + MY21*U3221 + MZ21*U3321 - M21*VP220;
	PIS121=-YY21 + ZZ21;
	PIS221=XX21 - ZZ21;
	PIS321=-XX21 + YY21;
	No121=DV2321*PIS121 + WP121*XX21 - U3121*XY21 + U2121*XZ21 + (-DV2221 + DV3321)*YZ21;
	No221=DV1321*PIS221 + U3221*XY21 + (DV1121 - DV3321)*XZ21 + WP221*YY21 - U1221*YZ21;
	No321=DV1221*PIS321 + (-DV1121 + DV2221)*XY21 - U2321*XZ21 + U1321*YZ21 + WP321*ZZ21;
	WI122=S22*W321 + C22*WI121;
	WI222=C22*W321 - S22*WI121;
	W322=QP22 - WI221;
	WP122=QP22*WI222 + C22*WP121 + S22*WP321;
	WP222=-(QP22*WI122) - S22*WP121 + C22*WP321;
	WP322=QDP22 - WP221;
	DV1122=-(WI122*WI122);
	DV2222=-(WI222*WI222);
	DV3322=-(W322*W322);
	DV1222=WI122*WI222;
	DV1322=W322*WI122;
	DV2322=W322*WI222;
	U1122=DV2222 + DV3322;
	U1222=DV1222 - WP322;
	U1322=DV1322 + WP222;
	U2122=DV1222 + WP322;
	U2222=DV1122 + DV3322;
	U2322=DV2322 - WP122;
	U3122=DV1322 - WP222;
	U3222=DV2322 + WP122;
	U3322=DV1122 + DV2222;
	VP122=C22*VP121 - S22*VP220;
	VP222=-(S22*VP121) - C22*VP220;
	F122=MX22*U1122 + MY22*U1222 + MZ22*U1322 + M22*VP122;
	F222=MX22*U2122 + MY22*U2222 + MZ22*U2322 + M22*VP222;
	F322=MX22*U3122 + MY22*U3222 + MZ22*U3322 - M22*VP221;
	PIS122=-YY22 + ZZ22;
	PIS222=XX22 - ZZ22;
	PIS322=-XX22 + YY22;
	No122=DV2322*PIS122 + WP122*XX22 - U3122*XY22 + U2122*XZ22 + (-DV2222 + DV3322)*YZ22;
	No222=DV1322*PIS222 + U3222*XY22 + (DV1122 - DV3322)*XZ22 + WP222*YY22 - U1222*YZ22;
	No322=DV1222*PIS322 + (-DV1122 + DV2222)*XY22 - U2322*XZ22 + U1322*YZ22 + WP322*ZZ22;
	WI123=-(S23*W315) + C23*WI115;
	WI223=-(C23*W315) - S23*WI115;
	W323=QP23 + WI215;
	WP123=QP23*WI223 + C23*WP115 - S23*WP315;
	WP223=-(QP23*WI123) - S23*WP115 - C23*WP315;
	WP323=QDP23 + WP215;
	DV1123=-(WI123*WI123);
	DV2223=-(WI223*WI223);
	DV3323=-(W323*W323);
	DV1223=WI123*WI223;
	DV1323=W323*WI123;
	DV2323=W323*WI223;
	U1123=DV2223 + DV3323;
	U1223=DV1223 - WP323;
	U1323=DV1323 + WP223;
	U2123=DV1223 + WP323;
	U2223=DV1123 + DV3323;
	U2323=DV2323 - WP123;
	U3123=DV1323 - WP223;
	U3223=DV2323 + WP123;
	U3323=DV1123 + DV2223;
	VSP123=d23*U1115 - r23*U1215 + VP115;
	VSP223=d23*U2115 - r23*U2215 + VP215;
	VSP323=d23*U3115 - r23*U3215 + VSP315;
	VP123=C23*VSP123 - S23*VSP323;
	VP223=-(S23*VSP123) - C23*VSP323;
	F123=MX23*U1123 + MY23*U1223 + MZ23*U1323 + M23*VP123;
	F223=MX23*U2123 + MY23*U2223 + MZ23*U2323 + M23*VP223;
	F323=MX23*U3123 + MY23*U3223 + MZ23*U3323 + M23*VSP223;
	PIS123=-YY23 + ZZ23;
	PIS223=XX23 - ZZ23;
	PIS323=-XX23 + YY23;
	No123=DV2323*PIS123 + WP123*XX23 - U3123*XY23 + U2123*XZ23 + (-DV2223 + DV3323)*YZ23;
	No223=DV1323*PIS223 + U3223*XY23 + (DV1123 - DV3323)*XZ23 + WP223*YY23 - U1223*YZ23;
	No323=DV1223*PIS323 + (-DV1123 + DV2223)*XY23 - U2323*XZ23 + U1323*YZ23 + WP323*ZZ23;
	WI124=S24*W323 + C24*WI123;
	WI224=C24*W323 - S24*WI123;
	W324=QP24 - WI223;
	WP124=QP24*WI224 + C24*WP123 + S24*WP323;
	WP224=-(QP24*WI124) - S24*WP123 + C24*WP323;
	WP324=QDP24 - WP223;
	DV1124=-(WI124*WI124);
	DV2224=-(WI224*WI224);
	DV3324=-(W324*W324);
	DV1224=WI124*WI224;
	DV1324=W324*WI124;
	DV2324=W324*WI224;
	U1124=DV2224 + DV3324;
	U1224=DV1224 - WP324;
	U1324=DV1324 + WP224;
	U2124=DV1224 + WP324;
	U2224=DV1124 + DV3324;
	U2324=DV2324 - WP124;
	U3124=DV1324 - WP224;
	U3224=DV2324 + WP124;
	U3324=DV1124 + DV2224;
	VSP124=r24*U1223 + VP123;
	VSP224=r24*U2223 + VP223;
	VSP324=r24*U3223 + VSP223;
	VP124=C24*VSP124 + S24*VSP324;
	VP224=-(S24*VSP124) + C24*VSP324;
	F124=MX24*U1124 + MY24*U1224 + MZ24*U1324 + M24*VP124;
	F224=MX24*U2124 + MY24*U2224 + MZ24*U2324 + M24*VP224;
	F324=MX24*U3124 + MY24*U3224 + MZ24*U3324 - M24*VSP224;
	PIS124=-YY24 + ZZ24;
	PIS224=XX24 - ZZ24;
	PIS324=-XX24 + YY24;
	No124=DV2324*PIS124 + WP124*XX24 - U3124*XY24 + U2124*XZ24 + (-DV2224 + DV3324)*YZ24;
	No224=DV1324*PIS224 + U3224*XY24 + (DV1124 - DV3324)*XZ24 + WP224*YY24 - U1224*YZ24;
	No324=DV1224*PIS324 + (-DV1124 + DV2224)*XY24 - U2324*XZ24 + U1324*YZ24 + WP324*ZZ24;
	WI125=-(S25*W324) + C25*WI124;
	WI225=-(C25*W324) - S25*WI124;
	W325=QP25 + WI224;
	WP125=QP25*WI225 + C25*WP124 - S25*WP324;
	WP225=-(QP25*WI125) - S25*WP124 - C25*WP324;
	WP325=QDP25 + WP224;
	DV1125=-(WI125*WI125);
	DV2225=-(WI225*WI225);
	DV3325=-(W325*W325);
	DV1225=WI125*WI225;
	DV1325=W325*WI125;
	DV2325=W325*WI225;
	U1125=DV2225 + DV3325;
	U1225=DV1225 - WP325;
	U1325=DV1325 + WP225;
	U2125=DV1225 + WP325;
	U2225=DV1125 + DV3325;
	U2325=DV2325 - WP125;
	U3125=DV1325 - WP225;
	U3225=DV2325 + WP125;
	U3325=DV1125 + DV2225;
	VP125=C25*VP124 + S25*VSP224;
	VP225=-(S25*VP124) + C25*VSP224;
	F125=MX25*U1125 + MY25*U1225 + MZ25*U1325 + M25*VP125;
	F225=MX25*U2125 + MY25*U2225 + MZ25*U2325 + M25*VP225;
	F325=MX25*U3125 + MY25*U3225 + MZ25*U3325 + M25*VP224;
	PIS125=-YY25 + ZZ25;
	PIS225=XX25 - ZZ25;
	PIS325=-XX25 + YY25;
	No125=DV2325*PIS125 + WP125*XX25 - U3125*XY25 + U2125*XZ25 + (-DV2225 + DV3325)*YZ25;
	No225=DV1325*PIS225 + U3225*XY25 + (DV1125 - DV3325)*XZ25 + WP225*YY25 - U1225*YZ25;
	No325=DV1225*PIS325 + (-DV1125 + DV2225)*XY25 - U2325*XZ25 + U1325*YZ25 + WP325*ZZ25;
	WI126=S26*W325 + C26*WI125;
	WI226=C26*W325 - S26*WI125;
	W326=QP26 - WI225;
	WP126=QP26*WI226 + C26*WP125 + S26*WP325;
	WP226=-(QP26*WI126) - S26*WP125 + C26*WP325;
	WP326=QDP26 - WP225;
	DV1126=-(WI126*WI126);
	DV2226=-(WI226*WI226);
	DV3326=-(W326*W326);
	DV1226=WI126*WI226;
	DV1326=W326*WI126;
	DV2326=W326*WI226;
	U1126=DV2226 + DV3326;
	U1226=DV1226 - WP326;
	U1326=DV1326 + WP226;
	U2126=DV1226 + WP326;
	U2226=DV1126 + DV3326;
	U2326=DV2326 - WP126;
	U3126=DV1326 - WP226;
	U3226=DV2326 + WP126;
	U3326=DV1126 + DV2226;
	VSP126=r26*U1225 + VP125;
	VSP226=r26*U2225 + VP225;
	VSP326=r26*U3225 + VP224;
	VP126=C26*VSP126 + S26*VSP326;
	VP226=-(S26*VSP126) + C26*VSP326;
	F126=MX26*U1126 + MY26*U1226 + MZ26*U1326 + M26*VP126;
	F226=MX26*U2126 + MY26*U2226 + MZ26*U2326 + M26*VP226;
	F326=MX26*U3126 + MY26*U3226 + MZ26*U3326 - M26*VSP226;
	PIS126=-YY26 + ZZ26;
	PIS226=XX26 - ZZ26;
	PIS326=-XX26 + YY26;
	No126=DV2326*PIS126 + WP126*XX26 - U3126*XY26 + U2126*XZ26 + (-DV2226 + DV3326)*YZ26;
	No226=DV1326*PIS226 + U3226*XY26 + (DV1126 - DV3326)*XZ26 + WP226*YY26 - U1226*YZ26;
	No326=DV1226*PIS326 + (-DV1126 + DV2226)*XY26 - U2326*XZ26 + U1326*YZ26 + WP326*ZZ26;
	WI127=S27*W326 + C27*WI126;
	WI227=C27*W326 - S27*WI126;
	W327=QP27 - WI226;
	WP127=QP27*WI227 + C27*WP126 + S27*WP326;
	WP227=-(QP27*WI127) - S27*WP126 + C27*WP326;
	WP327=QDP27 - WP226;
	DV1127=-(WI127*WI127);
	DV2227=-(WI227*WI227);
	DV3327=-(W327*W327);
	DV1227=WI127*WI227;
	DV1327=W327*WI127;
	DV2327=W327*WI227;
	U1127=DV2227 + DV3327;
	U1227=DV1227 - WP327;
	U1327=DV1327 + WP227;
	U2127=DV1227 + WP327;
	U2227=DV1127 + DV3327;
	U2327=DV2327 - WP127;
	U3127=DV1327 - WP227;
	U3227=DV2327 + WP127;
	U3327=DV1127 + DV2227;
	VP127=C27*VP126 - S27*VSP226;
	VP227=-(S27*VP126) - C27*VSP226;
	F127=MX27*U1127 + MY27*U1227 + MZ27*U1327 + M27*VP127;
	F227=MX27*U2127 + MY27*U2227 + MZ27*U2327 + M27*VP227;
	F327=MX27*U3127 + MY27*U3227 + MZ27*U3327 - M27*VP226;
	PIS127=-YY27 + ZZ27;
	PIS227=XX27 - ZZ27;
	PIS327=-XX27 + YY27;
	No127=DV2327*PIS127 + WP127*XX27 - U3127*XY27 + U2127*XZ27 + (-DV2227 + DV3327)*YZ27;
	No227=DV1327*PIS227 + U3227*XY27 + (DV1127 - DV3327)*XZ27 + WP227*YY27 - U1227*YZ27;
	No327=DV1227*PIS327 + (-DV1127 + DV2227)*XY27 - U2327*XZ27 + U1327*YZ27 + WP327*ZZ27;
	WI128=S28*W327 + C28*WI127;
	WI228=C28*W327 - S28*WI127;
	W328=QP28 - WI227;
	WP128=QP28*WI228 + C28*WP127 + S28*WP327;
	WP228=-(QP28*WI128) - S28*WP127 + C28*WP327;
	WP328=QDP28 - WP227;
	DV1128=-(WI128*WI128);
	DV2228=-(WI228*WI228);
	DV3328=-(W328*W328);
	DV1228=WI128*WI228;
	DV1328=W328*WI128;
	DV2328=W328*WI228;
	U1128=DV2228 + DV3328;
	U1228=DV1228 - WP328;
	U1328=DV1328 + WP228;
	U2128=DV1228 + WP328;
	U2228=DV1128 + DV3328;
	U2328=DV2328 - WP128;
	U3128=DV1328 - WP228;
	U3228=DV2328 + WP128;
	U3328=DV1128 + DV2228;
	VP128=C28*VP127 - S28*VP226;
	VP228=-(S28*VP127) - C28*VP226;
	F128=MX28*U1128 + MY28*U1228 + MZ28*U1328 + M28*VP128;
	F228=MX28*U2128 + MY28*U2228 + MZ28*U2328 + M28*VP228;
	F328=MX28*U3128 + MY28*U3228 + MZ28*U3328 - M28*VP227;
	PIS128=-YY28 + ZZ28;
	PIS228=XX28 - ZZ28;
	PIS328=-XX28 + YY28;
	No128=DV2328*PIS128 + WP128*XX28 - U3128*XY28 + U2128*XZ28 + (-DV2228 + DV3328)*YZ28;
	No228=DV1328*PIS228 + U3228*XY28 + (DV1128 - DV3328)*XZ28 + WP228*YY28 - U1228*YZ28;
	No328=DV1228*PIS328 + (-DV1128 + DV2228)*XY28 - U2328*XZ28 + U1328*YZ28 + WP328*ZZ28;
	WI129=S29*W328 + C29*WI128;
	WI229=C29*W328 - S29*WI128;
	W329=QP29 - WI228;
	WP129=QP29*WI229 + C29*WP128 + S29*WP328;
	WP229=-(QP29*WI129) - S29*WP128 + C29*WP328;
	WP329=QDP29 - WP228;
	DV1129=-(WI129*WI129);
	DV2229=-(WI229*WI229);
	DV3329=-(W329*W329);
	DV1229=WI129*WI229;
	DV1329=W329*WI129;
	DV2329=W329*WI229;
	U1129=DV2229 + DV3329;
	U1229=DV1229 - WP329;
	U1329=DV1329 + WP229;
	U2129=DV1229 + WP329;
	U2229=DV1129 + DV3329;
	U2329=DV2329 - WP129;
	U3129=DV1329 - WP229;
	U3229=DV2329 + WP129;
	U3329=DV1129 + DV2229;
	VP129=C29*VP128 - S29*VP227;
	VP229=-(S29*VP128) - C29*VP227;
	F129=MX29*U1129 + MY29*U1229 + MZ29*U1329 + M29*VP129;
	F229=MX29*U2129 + MY29*U2229 + MZ29*U2329 + M29*VP229;
	F329=MX29*U3129 + MY29*U3229 + MZ29*U3329 - M29*VP228;
	PIS129=-YY29 + ZZ29;
	PIS229=XX29 - ZZ29;
	PIS329=-XX29 + YY29;
	No129=DV2329*PIS129 + WP129*XX29 - U3129*XY29 + U2129*XZ29 + (-DV2229 + DV3329)*YZ29;
	No229=DV1329*PIS229 + U3229*XY29 + (DV1129 - DV3329)*XZ29 + WP229*YY29 - U1229*YZ29;
	No329=DV1229*PIS329 + (-DV1129 + DV2229)*XY29 - U2329*XZ29 + U1329*YZ29 + WP329*ZZ29;
	WI130=C30*WI115 + S30*WI215;
	WI230=-(S30*WI115) + C30*WI215;
	W330=QP30 + W315;
	WP130=QP30*WI230 + C30*WP115 + S30*WP215;
	WP230=-(QP30*WI130) - S30*WP115 + C30*WP215;
	WP330=QDP30 + WP315;
	DV1130=-(WI130*WI130);
	DV2230=-(WI230*WI230);
	DV3330=-(W330*W330);
	DV1230=WI130*WI230;
	DV1330=W330*WI130;
	DV2330=W330*WI230;
	U1130=DV2230 + DV3330;
	U1230=DV1230 - WP330;
	U1330=DV1330 + WP230;
	U2130=DV1230 + WP330;
	U2230=DV1130 + DV3330;
	U2330=DV2330 - WP130;
	U3130=DV1330 - WP230;
	U3230=DV2330 + WP130;
	U3330=DV1130 + DV2230;
	VSP130=b30*U1315 + VP115;
	VSP230=b30*U2315 + VP215;
	VSP330=b30*U3315 + VSP315;
	VP130=C30*VSP130 + S30*VSP230;
	VP230=-(S30*VSP130) + C30*VSP230;
	F130=MX30*U1130 + MY30*U1230 + MZ30*U1330 + M30*VP130;
	F230=MX30*U2130 + MY30*U2230 + MZ30*U2330 + M30*VP230;
	F330=MX30*U3130 + MY30*U3230 + MZ30*U3330 + M30*VSP330;
	PIS130=-YY30 + ZZ30;
	PIS230=XX30 - ZZ30;
	PIS330=-XX30 + YY30;
	No130=DV2330*PIS130 + WP130*XX30 - U3130*XY30 + U2130*XZ30 + (-DV2230 + DV3330)*YZ30;
	No230=DV1330*PIS230 + U3230*XY30 + (DV1130 - DV3330)*XZ30 + WP230*YY30 - U1230*YZ30;
	No330=DV1230*PIS330 + (-DV1130 + DV2230)*XY30 - U2330*XZ30 + U1330*YZ30 + WP330*ZZ30;
	WI131=-(S31*W330) + C31*WI130;
	WI231=-(C31*W330) - S31*WI130;
	W331=QP31 + WI230;
	WP131=QP31*WI231 + C31*WP130 - S31*WP330;
	WP231=-(QP31*WI131) - S31*WP130 - C31*WP330;
	WP331=QDP31 + WP230;
	DV1131=-(WI131*WI131);
	DV2231=-(WI231*WI231);
	DV3331=-(W331*W331);
	DV1231=WI131*WI231;
	DV1331=W331*WI131;
	DV2331=W331*WI231;
	U1131=DV2231 + DV3331;
	U1231=DV1231 - WP331;
	U1331=DV1331 + WP231;
	U2131=DV1231 + WP331;
	U2231=DV1131 + DV3331;
	U2331=DV2331 - WP131;
	U3131=DV1331 - WP231;
	U3231=DV2331 + WP131;
	U3331=DV1131 + DV2231;
	VP131=C31*VP130 - S31*VSP330;
	VP231=-(S31*VP130) - C31*VSP330;
	F131=MX31*U1131 + MY31*U1231 + MZ31*U1331 + M31*VP131;
	F231=MX31*U2131 + MY31*U2231 + MZ31*U2331 + M31*VP231;
	F331=MX31*U3131 + MY31*U3231 + MZ31*U3331 + M31*VP230;
	PIS131=-YY31 + ZZ31;
	PIS231=XX31 - ZZ31;
	PIS331=-XX31 + YY31;
	No131=DV2331*PIS131 + WP131*XX31 - U3131*XY31 + U2131*XZ31 + (-DV2231 + DV3331)*YZ31;
	No231=DV1331*PIS231 + U3231*XY31 + (DV1131 - DV3331)*XZ31 + WP231*YY31 - U1231*YZ31;
	No331=DV1231*PIS331 + (-DV1131 + DV2231)*XY31 - U2331*XZ31 + U1331*YZ31 + WP331*ZZ31;
	WI132=S32*W331 + C32*WI131;
	WI232=C32*W331 - S32*WI131;
	W332=QP32 - WI231;
	WP132=QP32*WI232 + C32*WP131 + S32*WP331;
	WP232=-(QP32*WI132) - S32*WP131 + C32*WP331;
	WP332=QDP32 - WP231;
	DV1132=-(WI132*WI132);
	DV2232=-(WI232*WI232);
	DV3332=-(W332*W332);
	DV1232=WI132*WI232;
	DV1332=W332*WI132;
	DV2332=W332*WI232;
	U1132=DV2232 + DV3332;
	U1232=DV1232 - WP332;
	U1332=DV1332 + WP232;
	U2132=DV1232 + WP332;
	U2232=DV1132 + DV3332;
	U2332=DV2332 - WP132;
	U3132=DV1332 - WP232;
	U3232=DV2332 + WP132;
	U3332=DV1132 + DV2232;
	VSP132=-(r32*U1231) + VP131;
	VSP232=-(r32*U2231) + VP231;
	VSP332=-(r32*U3231) + VP230;
	VP132=C32*VSP132 + S32*VSP332;
	VP232=-(S32*VSP132) + C32*VSP332;
	F132=MX32*U1132 + MY32*U1232 + MZ32*U1332 + M32*VP132;
	F232=MX32*U2132 + MY32*U2232 + MZ32*U2332 + M32*VP232;
	F332=MX32*U3132 + MY32*U3232 + MZ32*U3332 - M32*VSP232;
	PIS132=-YY32 + ZZ32;
	PIS232=XX32 - ZZ32;
	PIS332=-XX32 + YY32;
	No132=DV2332*PIS132 + WP132*XX32 - U3132*XY32 + U2132*XZ32 + (-DV2232 + DV3332)*YZ32;
	No232=DV1332*PIS232 + U3232*XY32 + (DV1132 - DV3332)*XZ32 + WP232*YY32 - U1232*YZ32;
	No332=DV1232*PIS332 + (-DV1132 + DV2232)*XY32 - U2332*XZ32 + U1332*YZ32 + WP332*ZZ32;
	WI133=S33*W332 + C33*WI132;
	WI233=C33*W332 - S33*WI132;
	W333=QP33 - WI232;
	WP133=QP33*WI233 + C33*WP132 + S33*WP332;
	WP233=-(QP33*WI133) - S33*WP132 + C33*WP332;
	WP333=QDP33 - WP232;
	DV1133=-(WI133*WI133);
	DV2233=-(WI233*WI233);
	DV3333=-(W333*W333);
	DV1233=WI133*WI233;
	DV1333=W333*WI133;
	DV2333=W333*WI233;
	U1133=DV2233 + DV3333;
	U1233=DV1233 - WP333;
	U1333=DV1333 + WP233;
	U2133=DV1233 + WP333;
	U2233=DV1133 + DV3333;
	U2333=DV2333 - WP133;
	U3133=DV1333 - WP233;
	U3233=DV2333 + WP133;
	U3333=DV1133 + DV2233;
	VP133=C33*VP132 - S33*VSP232;
	VP233=-(S33*VP132) - C33*VSP232;
	F133=MX33*U1133 + MY33*U1233 + MZ33*U1333 + M33*VP133;
	F233=MX33*U2133 + MY33*U2233 + MZ33*U2333 + M33*VP233;
	F333=MX33*U3133 + MY33*U3233 + MZ33*U3333 - M33*VP232;
	PIS133=-YY33 + ZZ33;
	PIS233=XX33 - ZZ33;
	PIS333=-XX33 + YY33;
	No133=DV2333*PIS133 + WP133*XX33 - U3133*XY33 + U2133*XZ33 + (-DV2233 + DV3333)*YZ33;
	No233=DV1333*PIS233 + U3233*XY33 + (DV1133 - DV3333)*XZ33 + WP233*YY33 - U1233*YZ33;
	No333=DV1233*PIS333 + (-DV1133 + DV2233)*XY33 - U2333*XZ33 + U1333*YZ33 + WP333*ZZ33;
	N133=No133 - MY33*VP232 - MZ33*VP233;
	N233=No233 + MZ33*VP133 + MX33*VP232;
	N333=No333 - MY33*VP133 + MX33*VP233;
	FDI133=C33*F133 - F233*S33;
	FDI333=C33*F233 + F133*S33;
	E132=F132 + FDI133;
	E232=F232 - F333;
	E332=F332 + FDI333;
	N132=C33*N133 + No132 - N233*S33 - MZ32*VP232 - MY32*VSP232;
	N232=-N333 + No232 + MZ32*VP132 + MX32*VSP232;
	N332=C33*N233 + No332 + N133*S33 - MY32*VP132 + MX32*VP232;
	FDI132=C32*E132 - E232*S32;
	FDI332=C32*E232 + E132*S32;
	E131=F131 + FDI132;
	E231=-E332 + F231;
	E331=F331 + FDI332;
	N131=C32*N132 + No131 - FDI332*r32 - N232*S32 + MY31*VP230 - MZ31*VP231;
	N231=-N332 + No231 + MZ31*VP131 - MX31*VP230;
	N331=C32*N232 + No331 + FDI132*r32 + N132*S32 - MY31*VP131 + MX31*VP231;
	FDI131=C31*E131 - E231*S31;
	FDI331=-(C31*E231) - E131*S31;
	E130=F130 + FDI131;
	E230=E331 + F230;
	E330=F330 + FDI331;
	N130=C31*N131 + No130 - N231*S31 - MZ30*VP230 + MY30*VSP330;
	N230=N331 + No230 + MZ30*VP130 - MX30*VSP330;
	N330=-(C31*N231) + No330 - N131*S31 - MY30*VP130 + MX30*VP230;
	FDI130=C30*E130 - E230*S30;
	FDI230=C30*E230 + E130*S30;
	N129=No129 - MY29*VP228 - MZ29*VP229;
	N229=No229 + MZ29*VP129 + MX29*VP228;
	N329=No329 - MY29*VP129 + MX29*VP229;
	FDI129=C29*F129 - F229*S29;
	FDI329=C29*F229 + F129*S29;
	E128=F128 + FDI129;
	E228=F228 - F329;
	E328=F328 + FDI329;
	N128=C29*N129 + No128 - N229*S29 - MY28*VP227 - MZ28*VP228;
	N228=-N329 + No228 + MZ28*VP128 + MX28*VP227;
	N328=C29*N229 + No328 + N129*S29 - MY28*VP128 + MX28*VP228;
	FDI128=C28*E128 - E228*S28;
	FDI328=C28*E228 + E128*S28;
	E127=F127 + FDI128;
	E227=-E328 + F227;
	E327=F327 + FDI328;
	N127=C28*N128 + No127 - N228*S28 - MY27*VP226 - MZ27*VP227;
	N227=-N328 + No227 + MZ27*VP127 + MX27*VP226;
	N327=C28*N228 + No327 + N128*S28 - MY27*VP127 + MX27*VP227;
	FDI127=C27*E127 - E227*S27;
	FDI327=C27*E227 + E127*S27;
	E126=F126 + FDI127;
	E226=-E327 + F226;
	E326=F326 + FDI327;
	N126=C27*N127 + No126 - N227*S27 - MZ26*VP226 - MY26*VSP226;
	N226=-N327 + No226 + MZ26*VP126 + MX26*VSP226;
	N326=C27*N227 + No326 + N127*S27 - MY26*VP126 + MX26*VP226;
	FDI126=C26*E126 - E226*S26;
	FDI326=C26*E226 + E126*S26;
	E125=F125 + FDI126;
	E225=-E326 + F225;
	E325=F325 + FDI326;
	N125=C26*N126 + No125 + FDI326*r26 - N226*S26 + MY25*VP224 - MZ25*VP225;
	N225=-N326 + No225 + MZ25*VP125 - MX25*VP224;
	N325=C26*N226 + No325 - FDI126*r26 + N126*S26 - MY25*VP125 + MX25*VP225;
	FDI125=C25*E125 - E225*S25;
	FDI325=-(C25*E225) - E125*S25;
	E124=F124 + FDI125;
	E224=E325 + F224;
	E324=F324 + FDI325;
	N124=C25*N125 + No124 - N225*S25 - MZ24*VP224 - MY24*VSP224;
	N224=N325 + No224 + MZ24*VP124 + MX24*VSP224;
	N324=-(C25*N225) + No324 - N125*S25 - MY24*VP124 + MX24*VP224;
	FDI124=C24*E124 - E224*S24;
	FDI324=C24*E224 + E124*S24;
	E123=F123 + FDI124;
	E223=-E324 + F223;
	E323=F323 + FDI324;
	N123=C24*N124 + No123 + FDI324*r24 - N224*S24 - MZ23*VP223 + MY23*VSP223;
	N223=-N324 + No223 + MZ23*VP123 - MX23*VSP223;
	N323=C24*N224 + No323 - FDI124*r24 + N124*S24 - MY23*VP123 + MX23*VP223;
	FDI123=C23*E123 - E223*S23;
	FDI323=-(C23*E223) - E123*S23;
	N122=No122 - MY22*VP221 - MZ22*VP222;
	N222=No222 + MZ22*VP122 + MX22*VP221;
	N322=No322 - MY22*VP122 + MX22*VP222;
	FDI122=C22*F122 - F222*S22;
	FDI322=C22*F222 + F122*S22;
	E121=F121 + FDI122;
	E221=F221 - F322;
	E321=F321 + FDI322;
	N121=C22*N122 + No121 - N222*S22 - MY21*VP220 - MZ21*VP221;
	N221=-N322 + No221 + MZ21*VP121 + MX21*VP220;
	N321=C22*N222 + No321 + N122*S22 - MY21*VP121 + MX21*VP221;
	FDI121=C21*E121 - E221*S21;
	FDI321=C21*E221 + E121*S21;
	E120=F120 + FDI121;
	E220=-E321 + F220;
	E320=F320 + FDI321;
	N120=C21*N121 + No120 - N221*S21 - MY20*VP219 - MZ20*VP220;
	N220=-N321 + No220 + MZ20*VP120 + MX20*VP219;
	N320=C21*N221 + No320 + N121*S21 - MY20*VP120 + MX20*VP220;
	FDI120=C20*E120 - E220*S20;
	FDI320=C20*E220 + E120*S20;
	E119=F119 + FDI120;
	E219=-E320 + F219;
	E319=F319 + FDI320;
	N119=C20*N120 + No119 - N220*S20 - MZ19*VP219 - MY19*VSP219;
	N219=-N320 + No219 + MZ19*VP119 + MX19*VSP219;
	N319=C20*N220 + No319 + N120*S20 - MY19*VP119 + MX19*VP219;
	FDI119=C19*E119 - E219*S19;
	FDI319=C19*E219 + E119*S19;
	E118=F118 + FDI119;
	E218=-E319 + F218;
	E318=F318 + FDI319;
	N118=C19*N119 + No118 + FDI319*r19 - N219*S19 + MY18*VP217 - MZ18*VP218;
	N218=-N319 + No218 + MZ18*VP118 - MX18*VP217;
	N318=C19*N219 + No318 - FDI119*r19 + N119*S19 - MY18*VP118 + MX18*VP218;
	FDI118=C18*E118 - E218*S18;
	FDI318=-(C18*E218) - E118*S18;
	E117=F117 + FDI118;
	E217=E318 + F217;
	E317=F317 + FDI318;
	N117=C18*N118 + No117 - N218*S18 - MZ17*VP217 - MY17*VSP217;
	N217=N318 + No217 + MZ17*VP117 + MX17*VSP217;
	N317=-(C18*N218) + No317 - N118*S18 - MY17*VP117 + MX17*VP217;
	FDI117=C17*E117 - E217*S17;
	FDI317=C17*E217 + E117*S17;
	E116=F116 + FDI117;
	E216=-E317 + F216;
	E316=F316 + FDI317;
	N116=C17*N117 + No116 + FDI317*r17 - N217*S17 - MZ16*VP216 + MY16*VSP216;
	N216=-N317 + No216 + MZ16*VP116 - MX16*VSP216;
	N316=C17*N217 + No316 - FDI117*r17 + N117*S17 - MY16*VP116 + MX16*VP216;
	FDI116=C16*E116 - E216*S16;
	FDI316=-(C16*E216) - E116*S16;
	E115=F115 + FDI116 + FDI123 + FDI130;
	E215=E316 + E323 + F215 + FDI230;
	E315=E330 + F315 + FDI316 + FDI323;
	N115=-(b30*FDI230) + C16*N116 + C23*N123 + C30*N130 + No115 + FDI316*r16 - FDI323*r23 - N216*S16 - N223*S23 - N230*S30 - MZ15*VP215 + MY15*VSP315;
	N215=b30*FDI130 - d16*FDI316 - d23*FDI323 + C30*N230 + N316 + N323 + No215 + N130*S30 + MZ15*VP115 - MX15*VSP315;
	N315=d16*E316 + d23*E323 - C16*N216 - C23*N223 + N330 + No315 - FDI116*r16 + FDI123*r23 - N116*S16 - N123*S23 - MY15*VP115 + MX15*VP215;
	FDI115=C15*E115 - E215*S15;
	FDI215=C15*E215 + E115*S15;
	E114=F114 + FX14;
	E214=F214 + FY14;
	E314=F314 + FZ14;
	N114=CX14 + No114 - MY14*VSP214 - MZ14*VSP314;
	N214=CY14 + No214 + MZ14*VSP114 + MX14*VSP214;
	N314=CZ14 + No314 - MY14*VSP114 + MX14*VSP314;
	E113=E114 + F113;
	E213=-E314 + F213;
	E313=E214 + F313;
	N113=N114 + No113 - MZ13*VP213 + MY13*VSP213;
	N213=d14*E214 - N314 + No213 + MZ13*VP113 - MX13*VSP213;
	N313=d14*E314 + N214 + No313 - MY13*VP113 + MX13*VP213;
	FDI113=C13*E113 - E213*S13;
	FDI313=-(C13*E213) - E113*S13;
	E112=F112 + FDI113;
	E212=E313 + F212;
	E312=F312 + FDI313;
	N112=C13*N113 + No112 + FDI313*r13 - N213*S13 - MZ12*VP212 + MY12*VSP312;
	N212=N313 + No212 + MZ12*VP112 - MX12*VSP312;
	N312=-(C13*N213) + No312 - FDI113*r13 - N113*S13 - MY12*VP112 + MX12*VP212;
	FDI112=C12*E112 - E212*S12;
	FDI212=C12*E212 + E112*S12;
	E111=F111 + FDI112;
	E211=F211 + FDI212;
	E311=E312 + F311;
	N111=C12*N112 + No111 - N212*S12 - MZ11*VP211 + MY11*VSP311;
	N211=d12*E312 + C12*N212 + No211 + N112*S12 + MZ11*VP111 - MX11*VSP311;
	N311=-(d12*FDI212) + N312 + No311 - MY11*VP111 + MX11*VP211;
	FDI111=C11*E111 - E211*S11;
	FDI211=C11*E211 + E111*S11;
	E110=F110 + FDI111;
	E210=F210 + FDI211;
	E310=E311 + F310;
	N110=C11*N111 + No110 - N211*S11 - MZ10*VP210 - MY10*VP29;
	N210=d11*E311 + C11*N211 + No210 + N111*S11 + MZ10*VP110 + MX10*VP29;
	N310=-(d11*FDI211) + N311 + No310 - MY10*VP110 + MX10*VP210;
	FDI110=C10*E110 - E210*S10;
	FDI310=C10*E210 + E110*S10;
	E19=F19 + FDI110;
	E29=-E310 + F29;
	E39=F39 + FDI310;
	N19=C10*N110 + No19 - N210*S10 - MY9*VP28 - MZ9*VP29;
	N29=-N310 + No29 + MZ9*VP19 + MX9*VP28;
	N39=C10*N210 + No39 + N110*S10 - MY9*VP19 + MX9*VP29;
	FDI19=C9*E19 - E29*S9;
	FDI39=C9*E29 + E19*S9;
	E18=F18 + FDI19;
	E28=-E39 + F28;
	E38=F38 + FDI39;
	N18=C9*N19 + No18 - N29*S9 - MZ8*VP28 + MY8*VSP38;
	N28=-N39 + No28 + MZ8*VP18 - MX8*VSP38;
	N38=C9*N29 + No38 + N19*S9 - MY8*VP18 + MX8*VP28;
	FDI18=C8*E18 - E28*S8;
	FDI28=C8*E28 + E18*S8;
	E17=F17 + FDI115 + FDI18;
	E27=F27 + FDI215 + FDI28;
	E37=E315 + E38 + F37;
	N17=-(FDI215*LOO315) + C15*N115 + C8*N18 + No17 - N215*S15 - N28*S8 + MY7*VP26 - MZ7*VP27;
	N27=d15*E315 + d8*E38 + FDI115*LOO315 + C15*N215 + C8*N28 + No27 + N115*S15 + N18*S8 + MZ7*VP17 - MX7*VP26;
	N37=-(d15*FDI215) - d8*FDI28 + N315 + N38 + No37 - MY7*VP17 + MX7*VP27;
	FDI17=C7*E17 - E27*S7;
	FDI37=-(C7*E27) - E17*S7;
	E16=F16 + FDI17;
	E26=E37 + F26;
	E36=F36 + FDI37;
	N16=C7*N17 + No16 - N27*S7 + MY6*VP25 - MZ6*VP26;
	N26=N37 + No26 + MZ6*VP16 - MX6*VP25;
	N36=-(C7*N27) + No36 - N17*S7 - MY6*VP16 + MX6*VP26;
	FDI16=C6*E16 - E26*S6;
	FDI36=-(C6*E26) - E16*S6;
	E15=F15 + FDI16;
	E25=E36 + F25;
	E35=F35 + FDI36;
	N15=C6*N16 + No15 - N26*S6 - MZ5*VP25 + MY5*VSP35;
	N25=N36 + No25 + MZ5*VP15 - MX5*VSP35;
	N35=-(C6*N26) + No35 - N16*S6 - MY5*VP15 + MX5*VP25;
	FDI15=C5*E15 - E25*S5;
	FDI25=C5*E25 + E15*S5;
	E14=F14 + FDI15;
	E24=F24 + FDI25;
	E34=E35 + F34;
	N14=C5*N15 + No14 - N25*S5 - MZ4*VP24 + MY4*VSP34;
	N24=-(d5*E35) + C5*N25 + No24 + N15*S5 + MZ4*VP14 - MX4*VSP34;
	N34=d5*FDI25 + N35 + No34 - MY4*VP14 + MX4*VP24;
	FDI14=C4*E14 - E24*S4;
	FDI24=C4*E24 + E14*S4;
	E13=F13 + FDI14;
	E23=F23 + FDI24;
	E33=E34 + F33;
	N13=C4*N14 + No13 - N24*S4 - MY3*VP22 - MZ3*VP23;
	N23=-(d4*E34) + C4*N24 + No23 + N14*S4 + MZ3*VP13 + MX3*VP22;
	N33=d4*FDI24 + N34 + No33 - MY3*VP13 + MX3*VP23;
	FDI13=C3*E13 - E23*S3;
	FDI33=C3*E23 + E13*S3;
	E12=F12 + FDI13;
	E22=-E33 + F22;
	E32=F32 + FDI33;
	N12=C3*N13 + No12 - N23*S3 - MZ2*VP22 + MY2*VSP22;
	N22=-N33 + No22 + MZ2*VP12 - MX2*VSP22;
	N32=C3*N23 + No32 + N13*S3 - MY2*VP12 + MX2*VP22;
	FDI12=C2*E12 - E22*S2;
	FDI32=-(C2*E22) - E12*S2;
	E11=F11 + FDI12;
	E21=E32 + F21;
	E31=F31 + FDI32;
	N11=C2*N12 + No11 - FDI32*r2 - N22*S2 - MZ1*VPY0 + MY1*VPZ0;
	N21=-(d2*FDI32) + N32 + No21 + MZ1*VPX0 - MX1*VPZ0;
	N31=d2*E32 - C2*N22 + No31 + FDI12*r2 - N12*S2 - MY1*VPX0 + MX1*VPY0;
	GAM2=N32 + IA2*QDP2;
	GAM3=N33 + IA3*QDP3;
	GAM4=N34 + IA4*QDP4;
	GAM5=N35 + IA5*QDP5;
	GAM6=N36 + IA6*QDP6;
	GAM7=N37 + IA7*QDP7;
	GAM8=N38 + IA8*QDP8;
	GAM9=N39 + IA9*QDP9;
	GAM10=N310 + IA10*QDP10;
	GAM11=N311 + IA11*QDP11;
	GAM12=N312 + IA12*QDP12;
	GAM13=N313 + IA13*QDP13;
	GAM15=N315 + IA15*QDP15;
	GAM16=N316 + IA16*QDP16;
	GAM17=N317 + IA17*QDP17;
	GAM18=N318 + IA18*QDP18;
	GAM19=N319 + IA19*QDP19;
	GAM20=N320 + IA20*QDP20;
	GAM21=N321 + IA21*QDP21;
	GAM22=N322 + IA22*QDP22;
	GAM23=N323 + IA23*QDP23;
	GAM24=N324 + IA24*QDP24;
	GAM25=N325 + IA25*QDP25;
	GAM26=N326 + IA26*QDP26;
	GAM27=N327 + IA27*QDP27;
	GAM28=N328 + IA28*QDP28;
	GAM29=N329 + IA29*QDP29;
	GAM30=N330 + IA30*QDP30;
	GAM31=N331 + IA31*QDP31;
	GAM32=N332 + IA32*QDP32;
	GAM33=N333 + IA33*QDP33;
	E10=E11;
	E20=E21;
	E30=E31;
	N10=N11;
	N20=N21;
	N30=N31;
    
    
    Torque=zeros(31,1);F_foot=zeros(3,1);M_foot=zeros(3,1);
    
    Torque(1) = GAM2;
    Torque(2) = GAM3;
	Torque(3) = GAM4;
	Torque(4) = GAM5;
	Torque(5) = GAM6;
	Torque(6) = GAM7;
	Torque(7) = GAM8;
	Torque(8) = GAM9;
	Torque(9) = GAM10;
	Torque(10) = GAM11;
	Torque(11) = GAM12;
	Torque(12) = GAM13;
	Torque(13) = GAM15;
	Torque(14) = GAM16;
	Torque(15) = GAM17;
    Torque(16) = GAM18;
	Torque(17) = GAM19;
	Torque(18) = GAM20;
	Torque(19) = GAM21;
	Torque(20) = GAM22;
	Torque(21) = GAM23;
	Torque(22) = GAM24;
	Torque(23) = GAM25;
	Torque(24) = GAM26;
	Torque(25) = GAM27;
	Torque(26) = GAM28;
	Torque(27) = GAM29;
	Torque(28) = GAM30;
    Torque(29) = GAM31;
    Torque(30) = GAM32;
    Torque(31) = GAM33;
    
    F_foot(1) = E10;
	F_foot(2) = E20;
	F_foot(3) = E30;
	M_foot(1) = N10;
	M_foot(2) = N20;
	M_foot(3) = N30;
    
    
% }
% 
% /* *=* */
% /* Number of operations : 1122 '+' or '-', 1228 '*' or '/' */
end