clear; clf; set(0,'defaultTextInterpreter','latex');
tic;
N=128; h=1/N; x=[0:N]*h; y=[0:N]*h;
for i=1:N+1
    for j=1:N+1
        q(i,j)=4*exp(-50*((x(i)-0.98).^2+(y(j)-0.5).^2));
    end
end

rho=zeros(N+1,N+1); 

subplot(221);
mesh(x,y,rho); view(130,40);
set(gca,'Fontsize',12);
xlabel('$x$'); ylabel('$y$'); zlabel('$\rho$');
axis([0,1,0,1,0,0.02]); title('initial guess');

for k=1:3
    rho=V_cycle(rho,q,N);
    subplot(2,2,k+1); mesh(x,y,rho); view(130,40);
    set(gca,'Fontsize',12);
    xlabel('$x$'); ylabel('$y$'); zlabel('$\rho$');
    switch k
        case 1
            title(['after 1 V-cycle']);
        case 2
            title(['after 2 V-cycles']);
        case 3
            title(['after 3 V-cycles']);
    end   
    axis([0,1,0,1,0,0.02]);
end
toc; shg;
