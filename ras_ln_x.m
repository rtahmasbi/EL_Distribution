function f=ras_ln_x(t)
% x=.001:.001:t;
% temp=log(1-x)./x;
% f=trapz(x,temp);
% or
f=quad('log(1-x)./x',eps,t);
return

