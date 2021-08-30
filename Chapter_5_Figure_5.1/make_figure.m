set(0,'DefaultTextInterpreter','latex');
N=10^8;
for i=1:10
    a=randn(N,1); b=randn(N,1);
    tic, a+b; add(i)=toc;
    tic, a.*b; mul(i)=toc;
    tic, a./b; div(i)=toc;
end
subplot(211);
plot(add,'+','Markersize',10);
hold on;
plot(mul,'*','Markersize',10);
plot(div,'o','Markersize',10);
set(gca,'Fontsize',18);
xlabel('trial');
ylabel('time [s]');
set(gca,'Xtick',[1:10]);
axis([0,11,0,0.5]);
title('$+$: addition ~~~ $\ast$: multiplication ~~~ $\circ$: division');
shg;
hold off;