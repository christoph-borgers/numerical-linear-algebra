clear; clf;   set(0,'DefaultTextInterpreter','latex');
tic;
N=128; h=1/N;
q=@(x,y) 4*exp(-50*((x-0.98).^2+(y-0.5).^2));

rho=zeros(N+1,N+1);
rho(2:N,2:N)=0.01*rand(N-1,N-1);
for j=0:N
    for i=0:N
        x(i+1,j+1)=i*h;         
        y(i+1,j+1)=j*h; 
    end
end

subplot(221);
mesh(x,y,rho);
view(40,40);
set(gca,'Fontsize',12);
xlabel('$x$'); 
ylabel('$y$');
zlabel('$\rho$');
axis([0,1,0,1,0,0.02]);
title('initial guess');
 

for it=1:3
    for i=2:N
        for j=2:N
            rho(i,j)=(rho(i-1,j)+rho(i+1,j)+rho(i,j-1)+rho(i,j+1))/4+...
            h^2*q((i-1)*h,(j-1)*h)/4;
        end
    end
end

subplot(111);
mesh(x,y,rho);
view(40,40);
set(gca,'Fontsize',12);
xlabel('$x$'); 
ylabel('$y$');
zlabel('$\rho$');
title('after 3 iterations');
axis([0,1,0,1,0,0.02]);
toc;
return

for it=1:97
    for i=2:N
        for j=2:N
            rho(i,j)=(rho(i-1,j)+rho(i+1,j)+rho(i,j-1)+rho(i,j+1))/4+...
            h^2*q((i-1)*h,(j-1)*h)/4;
        end
    end
end
subplot(223);
mesh(x,y,rho);
view(40,40);
set(gca,'Fontsize',12);
xlabel('$x$'); 
ylabel('$y$');
zlabel('$\rho$');
title('after 100 iterations');
axis([0,1,0,1,0,0.02]);
toc;

for it=1:900
    for i=2:N
        for j=2:N
            rho(i,j)=(rho(i-1,j)+rho(i+1,j)+rho(i,j-1)+rho(i,j+1))/4+...
            h^2*q((i-1)*h,(j-1)*h)/4;
        end
    end
end
subplot(224);
mesh(x,y,rho);
view(40,40);
set(gca,'Fontsize',12);
xlabel('$x$'); 
ylabel('$y$');
zlabel('$\rho$');
title('after 1000 iterations');
axis([0,1,0,1,0,0.02]);
toc;

shg;