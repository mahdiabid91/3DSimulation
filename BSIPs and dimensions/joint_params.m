global M1 M3 M4 M11 M12 M14 M15 M16 M19 M20 M23 M24 M25
global MX1 MX3 MX4 MX11 MX12 MX14 MX15 MX16 MX19 MX20 MX23 MX24 MX25
global MY1 MY3 MY4 MY11 MY12 MY14 MY15 MY16 MY19 MY20 MY23 MY24 MY25
global MZ1 MZ3 MZ4 MZ11 MZ12 MZ14 MZ15 MZ16 MZ19 MZ20 MZ23 MZ24 MZ25
global XX1 XX3 XX4 XX11 XX12 XX14 XX15 XX16 XX19 XX20 XX23 XX24 XX25
global YY1 YY3 YY4 YY11 YY12 YY14 YY15 YY16 YY19 YY20 YY23 YY24 YY25
global ZZ1 ZZ3 ZZ4 ZZ11 ZZ12 ZZ14 ZZ15 ZZ16 ZZ19 ZZ20 ZZ23 ZZ24 ZZ25

%/* Parameters Joint 1 */ 
 m1   =  M1;
 
 mx1 =   MX1;
 my1 =  MY1;
 mz1 =  MZ1;
 
 xx1 =  XX1;
 yy1  =  YY1;
 zz1  =  ZZ1;
 
% pr1=1; 
% m1=pr1*m1;mx1=pr1*mx1;my1=pr1*my1;mz1=pr1*mz1;xx1=pr1*xx1;yy1=pr1*yy1;zz1=pr1*zz1;IA1=pr1*IA1; 

%/* Parameters Joint 2 */ 

 m2  = 0; %M1
 
 mx2  =  0; %MX1
 my2  =  0; %MZ1
 mz2  = 0; %-MY1
 
 xx2  =  XX1;
 yy2  =  ZZ1;
 zz2  = YY1;
 
%  
% pr2=1-pr1;
% m2=pr2*m2;mx2=pr2*mx2;my2=pr2*my2;mz2=pr2*mz2;xx2=pr2*xx2;yy2=pr2*yy2;zz2=pr2*zz2;IA2=pr2*IA2; 

%/* Parameters Joint 3 */ 
 m3  =  M3;
 
 mx3 =   MX3;
 my3 =  MY3;
 mz3 =  MZ3;
 
 xx3 =  XX3;
 yy3  =  YY3;
 zz3  =  ZZ3;
  

%/* Parameters Joint 4 */ 
 m4  =  M4;
 
 mx4 =   MX4;
 my4 =  MY4;
 mz4 =  MZ4;
 
 xx4 =  XX4;
 yy4  =  YY4;
 zz4  =  ZZ4;
 
  
% pr4=1;
% m4=pr4*m4;mx4=pr4*mx4;my4=pr4*my4;mz4=pr4*mz4;xx4=pr4*xx4;yy4=pr4*yy4;zz4=pr4*zz4;IA4=pr4*IA4;

%/* Parameters Joint 5 */ 
 m5  =  0; %M4
 
 mx5    =0; %MZ4
 my5    =0; %MX4
 mz5   =0; %MY4
 
 xx5    =0;
 yy5    =0;
 zz5    =0;
 
  
% pr5=1-pr4;
% m5=pr5*m5;mx5=pr5*mx5;my5=pr5*my5;mz5=pr5*mz5;xx5=pr5*xx5;yy5=pr5*yy5;zz5=pr5*zz5;IA5=pr5*IA5; 

%/* Parameters Joint 6 */ 
 m6    =0;
 
 mx6  = 0;
 my6   = 0;
 mz6  = 0;
 
 xx6    =0;
 yy6    =0;
 zz6    =0;
 

%/* Parameters Joint 7 */ 
 m7  =  M15;
 
 mx7  = MX15;
 my7  = MY15;
 mz7  = M15*L6+MZ15;
 
 xx7  =  XX15;
 yy7   = YY15;
 zz7   = ZZ15;

%/* Parameters Joint 8 */ 
 m8  =  0;
 
 mx8 =   0;
 my8 =   0;
 mz8  =  0;
 
 xx8  =  0;
 yy8  =  0;
 zz8  =  0;
 

%/* Parameters Joint 9 */ 
 m9    =0;
 
 mx9    =0;
 my9    =0;
 mz9    =0;
 
 xx9    =0;
 yy9    =0;
 zz9    =0;
 

%/* Parameters Joint 10 */ 
 m10  =  M11;
 
 mx10 =  M11*L4+MX11;
 my10  = MY11;
 mz10  = MZ11;
 
 xx10    =XX11;
 yy10    =YY11;
 zz10    =ZZ11;
 

%/* Parameters Joint 11 */ 
 m11   = M12;
 
 mx11 =   M12*L3 + MX12;
 my11 =  MY12;
 mz11 =  MZ12;
 
 xx11 =  XX12;
 yy11  =  YY12;
 zz11  =  ZZ12;
 

%/* Parameters Joint 12 */ ;

 m12    =0; %M14
 
 mx12 = 0;  %(M14*L2+MX14)
 my12 = 0;  %-(M14*L1+MZ14)
 mz12 = 0;  %(MY14)
 
 xx12 =  XX14;
 yy12  =  ZZ14;
 zz12  =  YY14;
  
  
% pr12=pr2;
% m12=pr12*m12;mx12=pr12*mx12;my12=pr12*my12;mz12=pr12*mz12;xx12=pr12*xx12;yy12=pr12*yy12;zz12=pr12*zz12;IA12=pr12*IA12; 

%/* Parameters Joint 13 */

 m13   = M14;
 
 mx13  = (M14*L2+MX14);
 my13  = (MY14);
 mz13  = (M14*L1+MZ14);
 
 xx13    =XX14;
 yy13    =YY14;
 zz13    =ZZ14;
 
  
% pr13=1-pr12;
% m13=pr13*m13;mx13=pr13*mx13;my13=pr13*my13;mz13=pr13*mz13;xx13=pr13*xx13;yy13=pr13*yy13;zz13=pr13*zz13;IA13=pr13*IA13; 

%/* Parameters Joint 14 */ 
 m14    =0;
 
 mx14 =  0 ;
 my14 =  0;
 mz14 = 0 ;
 
 xx14 =  0;
 yy14  =  0;
 zz14  =  0;
 

%/* Parameters Joint 15 */ 
 m15   = M16;
 
 mx15 =   MX16;
 my15 =  MY16;
 mz15 =  M16*L7+MZ16;
 
 xx15 =  XX16;
 yy15  =  YY16;
 zz15  =  ZZ16;
 

%/* Parameters Joint 16 */ 
 m16  =  M25;
 
 mx16 =   MX25;
 my16 =  MY25;
 mz16 =  MZ25+M25*L11;
 
 xx16 =  XX25;
 yy16  =  YY25;
 zz16  =  ZZ25;
 

%/* Parameters Joint 17 */ 
 m17    =0;
 
 mx17    =0;
 my17    =0;
 mz17    =0;
 
 xx17  = 0;
 yy17  = 0;
 zz17  = 0;
  

%/* Parameters Joint 18 */ 
 m18   = M19;
 
 mx18  =  MX19-L9*M19;
 my18  = MX19;
 mz18  = MX19;
 
 xx18   = XX19;
 yy18   = YY19;
 zz18   = ZZ19;
  

%/* Parameters Joint 19 */ 
 m19    =M20;
 
 mx19 =  (MX20-L10*M20);
 my19 =  MY20;
 mz19 =  MZ20;
 
 xx19 =  XX20;
 yy19 =  YY20;
 zz19 =  ZZ20;
  
  
% pr19=0; 
% m19=pr19*m19;mx19=pr19*mx19;my19=pr19*my19;mz19=pr19*mz19;xx19=pr19*xx19;yy19=pr19*yy19;zz19=pr19*zz19;IA19=pr19*IA19; 

%/* Parameters Joint 20 */ 
 m20    =0; %M20
 
 mx20 =   0; %MX20
 my20 =  0;  %MY20
 mz20 =  0;  %MZ20
 
 xx20 =  XX20*0;
 yy20  =  YY20*0;
 zz20  =  ZZ20*0;
 
  
% pr20=1-pr19;
% m20=pr20*m20;mx20=pr20*mx20;my20=pr20*my20;mz20=pr20*mz20;xx20=pr20*xx20;yy20=pr20*yy20;zz20=pr20*zz20;IA20=pr20*IA20; 

%/* Parameters Joint 21 */ 
 m21   = 0;
 
 mx21  = 0;
 my21  = 0;
 mz21  = 0;
 
 xx21  = 0;
 yy21  =  0;
 zz21  =  0;
  

%/* Parameters Joint 22 */ 
 m22  =  M23;
 
 mx22 =  MX23-L9*M23;
 my22  = MY23;
 mz22  = MZ23;
 
 xx22  = XX23;
 yy22  =  YY23;
 zz22  =  ZZ23;
 

%/* Parameters Joint 23 */ 
 m23    =M24;
 
 mx23 =   MX24-L10*M24;
 my23 =  MY24;
 mz23 =  MZ24;
 
 xx23 =  XX24;
 yy23  =  YY24;
 zz23  =  ZZ24;
 
  
% pr23=pr19;
% m23=pr23*m23;mx23=pr23*mx23;my23=pr23*my23;mz23=pr23*mz23;xx23=pr23*xx23;yy23=pr23*yy23;zz23=pr23*zz23;IA23=pr23*IA23; 

%/* Parameters Joint 24 */ 
 m24  =  0; %M24
 
 mx24 =   0; %MX24
 my24 =  0; %MY24
 mz24 =  0; %MZ24
 
 xx24 =  XX24*0;
 yy24  =  YY24*0;
 zz24  =  ZZ24*0;
 
  
% pr24=1-pr23;
% m24=pr24*m24;mx24=pr24*mx24;my24=pr24*my24;mz24=pr24*mz24;xx24=pr24*xx24;yy24=pr24*yy24;zz24=pr24*zz24;IA24=pr24*IA24;

%/* Parameters Joint 25 */ 
 m25  =  0;
 
 mx25 =   0;
 my25 =  0;
 mz25 =  0;
 
 xx25 =  XX16*0;
 yy25  =  YY16*0;
 zz25  =  ZZ16*0;
 
