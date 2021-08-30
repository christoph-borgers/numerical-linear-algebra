v=zeros(8,1);       % we include two extra entries in v to represent
                    % the boundary
r=zeros(8,1);       % similarly, r has two extra entries at the ends
r(3)=2;             % "r(3)" is actually the second entry in the 
                    % vector r
v_new=v;
for k=1:10
    for i=2:7
        v_new(i)=(r(i)+v(i-1)+v(i+1))/2;
    end
    v=v_new;
end
subplot(111);
plot([0:7]/7,v,'-k','Linewidth',2);
hold on;
plot([1:6]/7,v(2:7),'.k','Markersize',25);

for k=11:20
    for i=2:7
        v_new(i)=(r(i)+v(i-1)+v(i+1))/2;
    end
    v=v_new;
end
plot([0:7]/7,v,'-b','Linewidth',2);
hold on;
plot([1:6]/7,v(2:7),'.b','Markersize',25);

for k=21:30
    for i=2:7
        v_new(i)=(r(i)+v(i-1)+v(i+1))/2;
    end
    v=v_new;
end
plot([0:7]/7,v,'-r','Linewidth',2);
hold on;
plot([1:6]/7,v(2:7),'.r','Markersize',25);

set(gca,'Xtick',[0:0.5:1]);
set(gca,'Ytick',[0:3]);
set(gca,'Fontsize',30);
xlabel('position along channel');
ylabel('pollution concentration');



hold off;
shg;