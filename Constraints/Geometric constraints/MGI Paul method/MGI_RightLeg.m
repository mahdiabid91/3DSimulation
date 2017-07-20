
function [S,TST7]=MGI_RightLeg(Pos_Pelvis,p4,L)

% exitflag = 1;

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% jambe 1 %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%position du répère lié au centre du pelvis (sP7) : Pos_pelvis

%orientation du répère lié au centre du pelvis dans le repere S (sR7)
% p4 est la rotation dans le plan sagittal

Rot_Pelvis=[0,sin(p4),cos(p4);-1,0,0;0,-cos(p4),sin(p4)];

% repere finale au pelvis : TSTpelvis
TST7 = [Rot_Pelvis,Pos_Pelvis;0,0,0,1];  

S=solve_MGI(TST7,L);





end
