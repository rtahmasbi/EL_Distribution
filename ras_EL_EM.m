function [p,beta,con]=ras_EL_EM(x,p,beta)
% estimation of the parameters
% of the EL distribution via EM algorithm
% Rasool Tahmasbi
% rtahmasbi@ieee.org
% June 2007

eps=10^-5;
n=length(x);
p0=0;
beta0=0;
con=0;
while max([abs(p0-p) abs(beta0-beta)])>eps
    con=con+1;
    t_beta=n/sum(x./(1-(1-p)*exp(-beta*x)) );
    temp1=sum( 1./(1-(1-p)*exp(-beta*x)) );
    str=['x* log(x)-' num2str(n/temp1) '*x+' num2str(n/temp1)];
    t_p=fzero(str,p);
    p0=p;
    beta0=beta;
    beta=t_beta;
    p=t_p;
end

return

