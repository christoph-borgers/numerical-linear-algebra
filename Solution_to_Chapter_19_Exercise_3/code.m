clear; clf;  set(0,'DefaultTextInterpreter','latex');
i=sqrt(-1); A=[-6+12*i -12-26*i; 13-6*i 26+13*i]/25;

N=100;           % number of iterations I'll do
x(:,1)=[1; 0];   % initial guess
for k=1:N
    x(:,k+1)=A*x(:,k); x(:,k+1)=x(:,k+1)/norm(x(:,k+1));
end
for k=1:N+1,y(:,k)=(-i)^k*x(:,k); end

subplot(311);
plot([0:N],real(y(1,:)),'.r','Markersize',10); hold on;
plot([0:N],imag(y(1,:)),'.b','Markersize',10); hold off;
title('real (red) and imaginary (blue) part of $y^{(k)}_1$');

subplot(312);
plot([0:N],real(y(2,:)),'.r','Markersize',10); hold on;
plot([0:N],imag(y(2,:)),'.b','Markersize',10); hold off;
title('real (red) and imaginary (blue) part of $y^{(k)}_2$');

for k=1:N+1
    v=[y(1,k);y(2,k)];
    r(k)=norm(A*v-i*v); % check whether v is approximately
                        % an eigenvector with eigenvalue i
end
subplot(313);
plot([0:N],log10(r),'.k','Markersize',10);
xlabel('iteration number');
title('$\log_{10} \| A y^{(k)} - i y^{(k)} \|_2$');
shg;