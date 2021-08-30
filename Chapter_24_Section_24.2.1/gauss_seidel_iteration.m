m=5;
A=randn(m,m);           % random matrix
b=randn(m,1);           % random right-hand side
A=A+4*eye(m,m);         % Add 4 to the main diagonal 
                        % entries, so that L+D is a 
                        % reasonable approximation for A
x=zeros(m,1);           % use zero as the initial guess
for k=1:30              % 30 iterations
   for i=1:m
       x(i)=(b(i)-A(i,1:i-1)*x(1:i-1) ...
           -A(i,i+1:m)*x(i+1:m))/A(i,i);
   end
end
norm(b-A*x)             % check if x approximately solves
                        % the system Ax=b
