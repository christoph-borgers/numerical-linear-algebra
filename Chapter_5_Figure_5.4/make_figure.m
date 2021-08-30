set(0,'DefaultTextInterpreter','latex');
for m=1000:1000:10000
    A=randn(m,m); b =randn(m,1); 
    tic, x=A\b; scaled_time=toc/m^2.7*3/2;
    s(m/1000)=scaled_time;
end
subplot(211); 
plot(s,'.k','Markersize',25); set(gca,'Fontsize',18);
xlabel('$m/1000$'); ylabel('time/$(\frac{2}{3} m^3)$ [s]');
axis([0,11,0,4*10^(-11)]);
shg;