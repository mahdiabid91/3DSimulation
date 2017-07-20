function c_cons_forces =C_forces(x)
% x is for groud reaction forces 3*1
%global LB_OP_For UB_OP_For

global mu

%  LB_Forces = LB_OP_For-x;
%  UB_Forces = x-UB_OP_For;


avoidance_slipping = sqrt((x(2))^2+...
         (x(3))^2 )-mu*x(1);
         positive_cont_force=-x(1);
 
c_cons_forces=[avoidance_slipping;positive_cont_force];%LB_Forces';UB_Forces'];%
        



end