max_m=30;
c=zeros(max_m-1,1);
for m=2:max_m,
    x=-1/2+[0:m-1]/m-1; 

    A=zeros(m,m);

    for i=1:m,
        for j=1:m,
            A(i,j)=x(i)^(j-1);
        end;
    end;

    c(m-1)=cond(A,1);
end;

subplot(211);
plot([2:max_m],log10(c),'.k','Markersize',20);
axis([0,max_m,0,max(log10(c))*1.1]);
set(gca,'Fontsize',18);
ylabel('$\log_{10} {\rm cond}_1(V_m)$');
xlabel('$m$','Fontsize',24);
shg;