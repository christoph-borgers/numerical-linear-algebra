clear; clf;
set(0,'DefaultTextInterpreter','latex');
A=[1 2; -3 4];
a11(1)=1; a12(1)=2;
a21(1)=-3; a22(1)=4;

num_its=500;
for k=1:num_its
    [Q,R]=qr(A); A=R*Q;
    a11(k+1)=A(1,1);
    a12(k+1)=A(1,2);
    a21(k+1)=A(2,1);
    a22(k+1)=A(2,2);
end
subplot(221);

plot([0:num_its],a11,'.k','Markersize',10);
axis([0,num_its,0,5]); title('$A^{(k)}_{11}$');
set(gca,'Fontsize',14);
subplot(222);
plot([0:num_its],a12,'.k','Markersize',10);
axis([0,num_its,0,5]); title('$A^{(k)}_{12}$');
set(gca,'Fontsize',14);

subplot(223);
plot([0:num_its],a21,'.k','Markersize',10);
axis([0,num_its,0,5]); title('$A^{(k)}_{21}$')
set(gca,'Fontsize',14);
xlabel('$k$');


subplot(224);
plot([0:num_its],a22,'.k','Markersize',10);
axis([0,num_its,0,5]); title('$A^{(k)}_{22}$')
set(gca,'Fontsize',14);
xlabel('$k$');
shg;