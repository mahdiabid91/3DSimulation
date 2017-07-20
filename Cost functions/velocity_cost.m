function Cv=velocity_cost(Vd, T, d)

% return the cost functional from step length and duration
% Vd is the imposed velocity
% T et d are step duration and length

Cv=(Vd*T-d)^2;


end