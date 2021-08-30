clear;  clf;  set(0,'DefaultTextInterpreter','latex');
tic;
N=100; h=1/N; m=(N-1)^2; A=zeros(m,m); b=zeros(m,1);
q=@(x,y) 10^(-4)*exp(-50*((x-0.98).^2+(y-0.5).^2));

k=0;
for j=1:N-1
    for i=1:N-1
       k=k+1;
       A(k,k)=4;
       if i>1
           A(k,k-1)=-1;
       end
       if i<N-1
           A(k,k+1)=-1;
       end
       if j>1
           A(k,k-(N-1))=-1;
       end
       if j<N-1
           A(k,k+(N-1))=-1;
       end
       x=i*h; y=j*h; b(k)=q(x,y)*4;
    end
end

v=A\b;
k=0;
rho=zeros(N+1,N+1);
for j=0:N
    for i=0:N
        x(i+1,j+1)=i*h;         % in Matlab, i and j must run from 
        y(i+1,j+1)=j*h;         % 1 to N+1 instead of 0 to N. 
        if i*(N-i)*j*(N-j)>0
            k=k+1; rho(i+1,j+1)=v(k);
        end
    end
end

subplot(111);
mesh(x,y,rho); view(40,40); set(gca,'Fontsize',24);
xlabel('$x$'); ylabel('$y$'); zlabel('$\rho$');
toc;
shg