global Lt L1 L2 L3 L4 L5 L6 L7 L8 L9 L10 L11 Lp lp L

% total size
Lt=1.84;

%foot
L1=0.24;
L2=0.0883;
Lp=0.305;
lp=0.108;
% Shank
L3=0.4514;
% Thigh
L4=0.4416;
% Pelvis
L6=0.1374;
% head
L11=0.2551;
% trunk
L7=Lt-L11-L6-L4-L3-L2; %0.4662

% between joint centers
L5=0.215;
% between shoulders
L8=0.337;

% arm
L9=0.327;
% forearm(with hands)
L10=0.287+0.092;

L=[L1; L2 ;L3; L4 ;L5 ;L6 ;L7; L8; L9 ;L10 ;L11; Lp; lp];