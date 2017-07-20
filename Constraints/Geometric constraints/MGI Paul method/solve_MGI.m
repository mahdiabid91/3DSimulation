function S=solve_MGI(TST7,L)

% define_dimensions;
L1=L(1);L2=L(2);L3=L(3);L4=L(4);L5=L(5);

T7T6 = [1,0,0,-L5/2;
            0,1,0,0;
            0,0,1,0;
            0,0,0,1];  

TST6 = TST7 * T7T6;


%position du repÃ¨re 6 ds le repère S (considered in .pau file)
Px = TST6(1,4);
Py = TST6(2,4);
Pz = TST6(3,4);

sx = TST6(1,1);
sy = TST6(2,1);
sz = TST6(3,1);

nx = TST6(1,2);
ny = TST6(2,2);
nz = TST6(3,2);

ax = TST6(1,3);
ay = TST6(2,3);
az = TST6(3,3);



% Equation type 2
Y=L2 - Px;

% Py*cos(t1) + Y*sin(t1) = 0

% Solution
% t1 = atan2(-Py,Y );
%  or 
t1 = atan2(Py,-Y );



% Equation type 6
X=-L1 - Pz;

Y=-(L2*cos(t1)) + Px*cos(t1) + Py*sin(t1);

% -(L4*sin(t3)) = X*cos(t2) + Y*sin(t2)
% -(L4*cos(t3)) = L3 - Y*cos(t2) + X*sin(t2)

% Solution
% e= 1  
%or 
e = -1;
B1 = 2*L3*X;
B2 = -2*L3*Y;
B3 = -L3^2 + L4^2 - X^2 - Y^2;
SQ = (B1*B3 + B2*sqrt(B1^2 + B2^2 - B3^2)*e)/(B1^2 + B2^2);
CQ = (B2*B3 - B1*sqrt(B1^2 + B2^2 - B3^2)*e)/(B1^2 + B2^2);
t2 = atan2( SQ , CQ );
t3 = atan2(-((X*cos(t2) + Y*sin(t2))/L4) , -((L3 - Y*cos(t2) + X*sin(t2))/L4) );
% Remark :  SQ = sin(t2)
%           CQ = cos(t2)



% Equation type 2
X=az*cos(t2 + t3) - ax*cos(t1)*sin(t2 + t3) - ay*sin(t1)*sin(t2 + t3);

Y=-(ax*cos(t1)*cos(t2 + t3)) - ay*cos(t2 + t3)*sin(t1) - az*sin(t2 + t3);

% X*cos(t4) + Y*sin(t4) = 0

% Solution
% t4 = atan2(-X,Y );
%  or 
t4 = atan2(X,-Y );



% Equation type 3
Y=-(cos(t4)*(ax*cos(t1)*cos(t2 + t3) + ay*cos(t2 + t3)*sin(t1) + az*sin(t2 + t3))) - (az*cos(t2 + t3) - ax*cos(t1)*sin(t2 + t3) - ay*sin(t1)*sin(t2 + t3))*sin(t4);

Y1=ay*cos(t1) - ax*sin(t1);

% sin(t5) = Y
% cos(t5) = Y1

% Solution
t5 = atan2(Y , Y1 );



% Equation type 3
Y=-(cos(t4)*(sz*cos(t2 + t3) - sx*cos(t1)*sin(t2 + t3) - sy*sin(t1)*sin(t2 + t3))) + (sx*cos(t1)*cos(t2 + t3) + sy*cos(t2 + t3)*sin(t1) + sz*sin(t2 + t3))*sin(t4);

Y1=-(cos(t4)*(nz*cos(t2 + t3) - nx*cos(t1)*sin(t2 + t3) - ny*sin(t1)*sin(t2 + t3))) + (nx*cos(t1)*cos(t2 + t3) + ny*cos(t2 + t3)*sin(t1) + nz*sin(t2 + t3))*sin(t4);

% sin(t6) = Y
% cos(t6) = Y1

% Solution
t6 = atan2(Y , Y1 );





%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% jambe 2 %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%



% T14T13= [1,0,0,-L2;
%             0,1,0,0;
%             0,0,1,-L1;
%             0,0,0,1]; 
%         
% TST14= [-1,0,0,0;
%             0,-1,0,-p5;
%             0,0,1,p6;
%             0,0,0,1]; 
%         
% T7T13 = inv(TST7) * TST14 * T14T13;

%position du repÃ¨re 13 ds le repère 7 (considered in .pau file)
% Px = T7T13(1,4);
% Py = T7T13(2,4);
% Pz = T7T13(3,4);
% 
% sx = T7T13(1,1);
% sy = T7T13(2,1);
% sz = T7T13(3,1);
% 
% nx = T7T13(1,2);
% ny = T7T13(2,2);
% nz = T7T13(3,2);
% 
% ax = T7T13(1,3);
% ay = T7T13(2,3);
% az = T7T13(3,3);










S=[t1;t2;t3;t4;t5+pi/2;t6];
% S=[t1;t2;t3;t4;t5+pi/2;t6;t8;t9+pi/2;t10;t11;t12;t13];

end