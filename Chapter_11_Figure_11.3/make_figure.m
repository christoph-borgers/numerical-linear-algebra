clear; clf; set(0,'DefaultTextInterpreter','latex');

m=7;
x=-1+2*([1:m]-1)/(m-1); x=x';

xp=[-100:100]/100; xp=xp';
subplot(221);
A=0;
for j=1:m
    yp=ones(201,1);
    for i=1:m
        if i~=j
            yp=yp.*(xp-x(i))/(x(j)-x(i));
        end
    end
    plot(xp,yp,'-k','Linewidth',2);
    A=max(A,max(abs(yp)));
    hold on;
end
set(gca,'Fontsize',12);
xlabel('$x$','Fontsize',15); 
ylabel('$\varphi_j(x)$','Fontsize',15);
title('$m=7$');

axis([-1,1,-A*1.05,A*1.5]);
text(-0.9,1.2*A,'A','Fontsize',18,'Fontweight','bold');

m=10;
x=-1+2*([1:m]-1)/(m-1); x=x';

xp=[-100:100]/100; xp=xp';
subplot(222);
A=0;
for j=1:m
    yp=ones(201,1);
    for i=1:m
        if i~=j
            yp=yp.*(xp-x(i))/(x(j)-x(i));
        end
    end
    plot(xp,yp,'-k','Linewidth',2);
    A=max(A,max(abs(yp)));
    hold on;
end
set(gca,'Fontsize',12);
xlabel('$x$','Fontsize',15); 
ylabel('$\varphi_j(x)$','Fontsize',15);
title('$m=10$');

axis([-1,1,-A*1.05,A*1.5]);
text(-0.9,1.2*A,'B','Fontsize',18,'Fontweight','bold');

m=20;

x=-1+2*([1:m]-1)/(m-1); x=x';

xp=[-100:100]/100; xp=xp';
subplot(223);
A=0;
for j=1:m
    yp=ones(201,1);
    for i=1:m
        if i~=j
            yp=yp.*(xp-x(i))/(x(j)-x(i));
        end
    end
    plot(xp,yp,'-k','Linewidth',2);
    A=max(A,max(abs(yp)));
    hold on;
end
set(gca,'Fontsize',12);
xlabel('$x$','Fontsize',15); 
ylabel('$\varphi_j(x)$','Fontsize',15);
title('$m=20$');

axis([-1,1,-A*1.05,A*1.5]);
text(-0.9,1.2*A,'C','Fontsize',18,'Fontweight','bold');

m=60;

x=-1+2*([1:m]-1)/(m-1); x=x';

xp=[-100:100]/100; xp=xp';
subplot(224);
A=0;
for j=1:m
    yp=ones(201,1);
    for i=1:m
        if i~=j
            yp=yp.*(xp-x(i))/(x(j)-x(i));
        end
    end
    plot(xp,yp,'-k','Linewidth',2);
    A=max(A,max(abs(yp)));
    hold on;
end
set(gca,'Fontsize',12);
xlabel('$x$','Fontsize',15); 
ylabel('$\varphi_j(x)$','Fontsize',15);
title('$m=60$');

axis([-1,1,-A*1.05,A*1.5]);
text(-0.9,1.2*A,'D','Fontsize',18,'Fontweight','bold');

shg