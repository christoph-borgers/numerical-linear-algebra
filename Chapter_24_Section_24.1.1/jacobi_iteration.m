m=5;
A=randn(m,m);           % random matrix
b=randn(m,1);           % random right-hand side
A=A+4*eye(m,m);         % adding 4 to the main diagonal 
                        % entries, so that D is a 
                        % reasonable approximation for A
d=diag(A);              % diagonal entries of A, as a
                        % column vector
x=zeros(m,1);           % use zero as the initial guess
for k=1:30              % 30 iterations
    r=b-A*x;            % residual
    x=x+r./d; 
end
norm(b-A*x)             % check if x approximately solves
                        % the system Ax=b\end{verbatim}