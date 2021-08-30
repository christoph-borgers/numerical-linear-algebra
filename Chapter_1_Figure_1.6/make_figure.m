clf; clear;

% This code takes some time to run. (On my laptop, it took a little over
% a minute.) The most time-consuming part by far is the plotting. 

N=100;
h=1/N;
rho=zeros(N+1,N+1);
sigma=0.1;
x0=0.98;
y0=0.5;

for i=1:N+1
    for j=1:N+1
        x=(i-1)*h;
        y=(j-1)*h;
        Q(i,j)=exp(-((x-x0)^2+(y-y0)^2)/(2*sigma^2));
    end
end

tic;

num_steps=4000;
for k=1:num_steps
    rho_west=rho(1:N-1,2:N);
    rho_east=rho(3:N+1,2:N);
    rho_south=rho(2:N,1:N-1);
    rho_north=rho(2:N,3:N+1);
    rho(2:N,2:N)=(rho_west+rho_east+rho_north+rho_south)/4 ...
        +Q(2:N,2:N)*h^2;
end
toc;
tic;

subplot(221);
M=max(max(rho));
theta=[0:10]/10*2*pi;
c=cos(theta)*0.005; 
s=sin(theta)*0.005;
for i=2:N
    for j=2:N
        r=rho(i,j)/M;
        fill((i-1)*h+c,(j-1)*h+s,[r,0,1-r], ...
            'Facealpha',max(r,0.3),'Edgecolor','none');
        hold on;
    end
end
axis([0,1,0,1]); axis('square');
set(gca,'Xtick',[]); set(gca,'Ytick',[]);
shg;
hold off;

toc;
