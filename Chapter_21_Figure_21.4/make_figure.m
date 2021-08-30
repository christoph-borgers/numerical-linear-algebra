m_vec=[100:100:3000];
for i=1:length(m_vec)
    m=m_vec(i)
    A=randn(m,m); 
    tic; E=eig(A); T=toc;   
    T_vec(i)=T;
end;
subplot(111);
plot(log10(m_vec),log10(T_vec),'.k','Markersize',20);
axis([1,4,-2,1]); axis('square');
x=2.1+[0:100]/100*0.8;
hold on;
plot(x+0.5,3*(x-2)-2,'-r','Linewidth',2);
set(gca,'Fontsize',28);
xlabel('$\log_{10}(m)$'); ylabel('$\log_{10}(T)$');
hold off;
shg;