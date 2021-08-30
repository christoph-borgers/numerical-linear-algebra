A = [1 3 4; 2 1 1; 1 4 5];
x=rand(3,1);
i=sqrt(-1); lambda_approx=i/2; B=A-lambda_approx*eye(3,3);
for j=1:7,  z=B\x; x=z/norm(z); lambda(j)=x'*A*x; end
format long
transpose(lambda)