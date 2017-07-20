
function [S,exitflag]=MGI_DS_t1_null(Pos_Pelvis,p4,L)

exitflag = 1;
% define_dimensions;
L1=L(1);L2=L(2);L3=L(3);L4=L(4);L5=L(5);
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% jambe 1 %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%position du répère lié au centre du pelvis (sP7) : Pos_pelvis

%orientation du répère lié au centre du pelvis dans le repere S (sR7)
% p4 est la rotation dans le plan sagittal

Rot_Pelvis=[0,sin(p4),cos(p4);-1,0,0;0,-cos(p4),sin(p4)];

% repere finale au pelvis : TSTpelvis
TST7 = [Rot_Pelvis,Pos_Pelvis;0,0,0,1];  

T1TS = [1,0,0,-L2;
            0,1,0,0;
            0,0,1,L1;
            0,0,0,1];  
        
T7T6 = [1,0,0,-L5/2;
            0,1,0,0;
            0,0,1,0;
            0,0,0,1];  

T1T6 = T1TS * TST7 * T7T6;


%position du repère 6 ds le rep�re 1 (considered in .pau file)
Px = T1T6(1,4);
Py = T1T6(2,4);
Pz = T1T6(3,4);

sx = T1T6(1,1);
sy = T1T6(2,1);
sz = T1T6(3,1);

nx = T1T6(1,2);
ny = T1T6(2,2);
nz = T1T6(3,2);

ax = T1T6(1,3);
ay = T1T6(2,3);
az = T1T6(3,3);





% Equation type 6
% -(L4*Sin(t3)) = -(Pz*Cos(t2)) + Px*Sin(t2)
% -(L4*Cos(t3)) = L3 - Px*Cos(t2) - Pz*Sin(t2)

% Solution
e= 1;  %or e = -1
B1 = -2*L3*Pz;
B2 = -2*L3*Px;
B3 = -L3^2 + L4^2 - Px^2 - Pz^2;
SQ = (B1*B3 + B2*sqrt(B1^2 + B2^2 - B3^2)*e)/(B1^2 + B2^2);
CQ = (B2*B3 - B1*sqrt(B1^2 + B2^2 - B3^2)*e)/(B1^2 + B2^2);

t2 = atan2( SQ , CQ );
t3 = atan2(-((-(Pz*cos(t2)) + Px*sin(t2))/L4) , -((L3 - Px*cos(t2) - Pz*sin(t2))/L4) );
% Remark :  SQ = Sin(t2)
%           CQ = Cos(t2)



% Equation type 2
% az*Cos(t2 + t3 + t4) - ax*Sin(t2 + t3 + t4) = 0
% 
% Solution
% t234 = atan2(-az,-ax );
%  or 
t234 = atan2(az,ax );
t4=t234-t2-t3;


% Equation type 3
Y=-(ax*cos(t2 + t3 + t4)) - az*sin(t2 + t3 + t4);

% Sin(t5) = Y
% Cos(t5) = ay

% Solution
t5 = atan2(Y , ay );



% Equation type 3
Y=-(sz*cos(t2 + t3 + t4)) + sx*sin(t2 + t3 + t4);

Y1=-(nz*cos(t2 + t3 + t4)) + nx*sin(t2 + t3 + t4);

% Sin(t6) = Y
% Cos(t6) = Y1

% Solution
t6 = atan2(Y , Y1 );


S=[0;t2;t3;t4;t5+pi/2;t6];



end
