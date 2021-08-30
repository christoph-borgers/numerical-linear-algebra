m=200; A=randn(m,m);  
A=A.*(rand(m,m)<0.05);
while rank(A)<m, A=randn(m,m);  A = A.*(rand(m,m)<0.05); end
subplot(221); spy(A,1); shg; xlabel(' '); 
set(gca,'Xtick',[]); set(gca,'Ytick',[]); title('A');
[L,U,P]=lu(A);
subplot(222); spy(U,1); shg; xlabel(' '); 
set(gca,'Xtick',[]); set(gca,'Ytick',[]); title('U');