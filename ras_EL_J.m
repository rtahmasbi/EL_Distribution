function J=ras_EL_J(n,p,beta)
% computing the expected Fisher information matrix
% Rasool Tahmasbi
% rtahmasbi@ieee.org
% June 2007
J11=-n*(log(p)+1)/(p*log(p))^2+n/(1-p)^2+n*((2-2*p-3/2)/p^2-log(p)+3/2)/(log(p)*(1-p)^2);
J12=n*(1-p+p*log(p))/(2*beta*p*(1-p)*log(p));
tem1=( (2-p)*log(p)-log(p)*log(1-p)-ras_ln_x(1-p) )/(beta^2*(1-p)*log(p));
J22=n*ras_ln_x(1-p)/(beta^2*log(p));
J=[J11 J12; J12 J22];

