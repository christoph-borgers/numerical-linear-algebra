
m=5; A=randn(m,m); A=A+A'; % make it symmetric
x=randn(m,1);             % initial guess for power iteration
for k=1:200, z=A*x;  x=z/norm(z); end
lambda_1=x'*A*x; v_1=x;

u=v_1; u(1)=u(1)-1; u=u/norm(u);

B=zeros(m,m); SA=zeros(m,m);
for j=1:m, SA(:,j)=A(:,j)-(2*u'*A(:,j))*u; end
for i=1:m, B(i,:)=SA(i,:)-(2*SA(i,:)*u)*u'; end; C=B(2:m,2:m);

x=randn(m-1,1); for k=1:200, z=C*x; x=z/norm(z); end
q=x; w=[0; q]; 
lambda_2=x'*C*x; v_2=w-(2*u'*w)*u;

