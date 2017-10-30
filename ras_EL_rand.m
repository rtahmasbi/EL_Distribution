function x=ras_EL_rand(p,beta,n)
% random number generator from EL distribution
% Rasool Tahmasbi
% rtahmasbi@ieee.org
% June 2007

u=rand(n,1);
x=(log(1-p.^u)-log(1-p))/(-beta);

return

