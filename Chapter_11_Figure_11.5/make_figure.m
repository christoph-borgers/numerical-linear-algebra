clear;
m=100;

a=-1; b=1;
x=zeros(m,1);
for i=1:m,
   x(i)=(a+b)/2+(b-a)/2*cos((i-1/2)*pi/m);
end;

xp=a+[0:10000]/10000*(b-a); xp=xp'; 
subplot(111);
for j=1:m,
    yp=ones(length(xp),1);
    for i=1:m,
        if i~=j,
            yp=yp.*(xp-x(i))/(x(j)-x(i));
        end;
    end;
    plot(xp,yp,'-k','Linewidth',2);
    hold on;
end;
set(gca,'Fontsize',28);
xlabel('$x$','Fontsize',28); ylabel('$\varphi_j(x)$','Fontsize',28);
axis([a,b,-1.5,1.5]);

V=zeros(m,m);
for j=1:m,
    for i=1:m,
        V(i,j)=x(i)^(j-1);
    end;
end;
cond(V,1)


shg;
    
