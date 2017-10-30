function I=ras_EL_J_observed(n,p,beta,x)
% computing the observed Fisher information matrix
% Rasool Tahmasbi
% rtahmasbi@ieee.org
% June 2007
I11=-n*(log(p)+1)/(p*log(p))^2+n/(1-p)^2-sum((exp(-2*beta*x))./(1-(1-p)*exp(-beta*x)).^2);
I12=-sum(x.*exp(-beta*x)./(1-(1-p)*exp(-beta*x)).^2);
I22=n/beta^2-(1-p)*sum(x.^2.*exp(-beta*x)./(1-(1-p)*exp(-beta*x)).^2);

I=[I11 I12; I12 I22];

