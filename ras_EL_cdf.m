function f=ras_EL_cdf(x,p,beta)
% cdf of EL(p,beta)  distribution
% Rasool Tahmasbi
% rtahmasbi@ieee.org
% June 2007

f=1-log(1-(1-p)*exp(-beta*x))/log(p);
return
