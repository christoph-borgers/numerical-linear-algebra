Z=randn(10,10); D=diag(randn(10,1)); A=inv(Z)*D*Z;
for k=1:5000, [Q,R]=qr(A); A=R*Q; end
subplot(111), spy(abs(A)>10^(-10)), set(gca,'Fontsize',15)
set(gca,'Xtick',[]); set(gca,'Ytick',[]); xlabel(' '); shg;
