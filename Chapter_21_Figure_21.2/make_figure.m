clear; clf; rng('default'); rng(63806);
A=randn(10,10); for k=1:5000, [Q,R]=qr(A); A=R*Q; end
subplot(111), spy(abs(A)>10^(-10)), set(gca,'Fontsize',15)
set(gca,'Xtick',[]); set(gca,'Ytick',[]);
xlabel(' ');
hold on;
plot([0.75,2.25,2.25,0.75,0.75],[2.25,2.25,0.75,0.75,2.25],'-r');
plot([2.75,3.25,3.25,2.75,2.75],[3.25,3.25,2.75,2.75,3.25],'-r');
A=2.75; B=3.25; C=3.25; D=2.75;

A=A+1; B=B+2; C=C+2; D=D+1;
plot([A,B,B,A,A],[C,C,D,D,C],'-r');

A=A+2; B=B+2; C=C+2; D=D+2;
plot([A,B,B,A,A],[C,C,D,D,C],'-r');

A=A+2; B=B+2; C=C+2; D=D+2;
plot([A,B,B,A,A],[C,C,D,D,C],'-r');

A=A+2; B=B+1; C=C+1; D=D+2;
plot([A,B,B,A,A],[C,C,D,D,C],'-r');