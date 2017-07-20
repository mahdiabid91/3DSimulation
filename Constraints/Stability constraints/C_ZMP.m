function C=C_ZMP(yz_ZMP,Lp,lp)

% yz_zmp is 2 x nsamples matrix
% abs(y)<lp/2, Cy
% z<0, Cz1
% z>-Lp, Cz2 

Cy=abs(yz_ZMP(1,:))-lp/2;

Cz1=yz_ZMP(2,:);
Cz2=-yz_ZMP(2,:)-Lp;

 C=[Cy'; Cz1'; Cz2'];

end

