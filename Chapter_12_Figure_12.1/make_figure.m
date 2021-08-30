clear;
set(0,'Defaulttextinterpreter','Latex');
for m=1:20, H=hilb(m); condition(m)=cond(H); end;
subplot(211);
L=log10(condition); plot(L,'.k','Markersize',25);
set(gca,'Fontsize',18); 
xlabel('$m$'); ylabel('$\log_{10} {\rm cond}_2(H_m)$');
shg;