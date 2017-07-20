function C=C_velocity(Vd,T,d,epsilon)

% constraint on velocity
% abs(Vd*T-d) < epsilon*d
% epsilon = 0.01 (1% for exple)


 C=abs(Vd*T-d)-epsilon*d;

end

