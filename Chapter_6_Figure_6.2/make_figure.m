set(0,'DefaultTextInterpreter','latex');
m=2;
for i=1:100,  x=rand(m,1); y=rand(m,1); d(i)=norm(x-y); end
subplot(311); plot(d,'.','Markersize',15);
axis([0,100,0,sqrt(m)]); set(gca,'Fontsize',14);
ylabel('distance'); shg;
title('$m=2$');

m=100;
for i=1:100,  x=rand(m,1); y=rand(m,1); d(i)=norm(x-y); end
subplot(312); plot(d,'.','Markersize',15);
axis([0,100,0,sqrt(m)]); set(gca,'Fontsize',14);
ylabel('distance'); shg;
title('$m=100$');

m=2500;
for i=1:100,  x=rand(m,1); y=rand(m,1); d(i)=norm(x-y); end
subplot(313); plot(d,'.','Markersize',15);
axis([0,100,0,sqrt(m)]); set(gca,'Fontsize',14);
xlabel('trial number'); ylabel('distance'); shg;
title('$m=2500$');
