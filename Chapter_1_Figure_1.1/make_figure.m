clear; clf;

subplot(221);
h=fill([0,1,1,0,0],[0,0,1,1,0],'-b','Facealpha',0.3);   % painting the pool
hold on;

num_particles=10000;   % number of particles
r=0.005;               % length of each step
N=400;                 % number of steps each particle takes

for i=1:num_particles
    theta_vec=rand(N-1,1)*2*pi;
    x=0.99; y=0.5;
    for k=1:N-1
        theta=theta_vec(k);
        x=x+r*cos(theta);
        y=y+r*sin(theta);
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
    p(i)=x;
    q(i)=y;
end

plot(p,q,'.r','Markersize',10);
plot([0,1,1,0,0],[0,0,1,1,0],'-k','Linewidth',2);
set(gca,'Xtick',[]); set(gca,'Ytick',[]);
axis([0,1,0,1]); axis('square'); text(0.1,0.9,'A','Fontsize',16);

subplot(222);
h=fill([0,1,1,0,0],[0,0,1,1,0],'-b','Facealpha',0.3);   % painting the pool
hold on;

for i=1:num_particles
    theta_vec=randi(4,N-1,1)*pi/2;
    x=0.99; y=0.5;
    for k=1:N-1
        theta=theta_vec(k);
        x=x+r*cos(theta);
        y=y+r*sin(theta);
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
    p(i)=x;
    q(i)=y;
end

plot(p,q,'.r','Markersize',10);
plot([0,1,1,0,0],[0,0,1,1,0],'-k','Linewidth',2);
set(gca,'Xtick',[]); set(gca,'Ytick',[]);
axis([0,1,0,1]); axis('square'); text(0.1,0.9,'B','Fontsize',16);

shg;