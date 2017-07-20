global M1 M3 M4 M11 M12 M14 M15 M16 M19 M20 M23 M24 M25

% total mass
Mt=85;

%foot
M_foot=0.012*Mt;
% Shank
M_shank=0.048*Mt;
% Thigh
M_thigh=0.123*Mt;
% Pelvis
M_pelvis=0.142*Mt;
% head
M_head=0.067*Mt;
% trunk
M_trunk=0.333*Mt;

% arm
M_arm=0.024*Mt;
% forearm(with hands)
M_forearm=(0.017+0.006)*Mt;

% M_pelvis+M_head+M_trunk+2*(M_foot+M_shank+M_Thigh+M_arm+M_forearm)

M1=M_foot;M3=M_shank;M4=M_thigh;M11=M4;M12=M3;M14=M1;
M15=M_pelvis;M16=M_trunk;M19=M_arm;M20=M_forearm;
M23=M19;M24=M20;M25=M_head;