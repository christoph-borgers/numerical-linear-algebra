clear; clf;


u=@(x,y) -.25;
v=@(x,y) .0;


subplot(221);
h=fill([0,1,1,0,0],[0,0,1,1,0],'-b','Facealpha',0.3);   % painting the pool
hold on;

num_particles=100000;   % number of particles
r=0.005;                % length of each step
N=400;                  % number of steps each particle takes

for ijk=1:num_particles
    theta_vec=rand(N-1,1)*2*pi;
    x=0.99; y=0.5;
    for k=1:N-1
        theta=theta_vec(k);
        x=x+r*cos(theta);
        y=y+r*sin(theta);
        x=x+0.004*u(x,y);
        y=y+0.004*v(x,y);
        if x>1
            x=10^10; % remove a particle if it hits the boundary
        end
        if y>1
            y=10^10;
        end
        if x<0
            x=-10^10;
        end
        if y<0
            y=-10^10;
        end
    end
    p(ijk)=x;
    q(ijk)=y;
end

plot(p,q,'.r','Markersize',10);
plot([0,1,1,0,0],[0,0,1,1,0],'-k','Linewidth',2);
set(gca,'Xtick',[]);
set(gca,'Ytick',[]);
axis([0,1,0,1]); axis('square');

shg;


