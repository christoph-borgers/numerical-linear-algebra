m=2000; X=randn(m,m);
[Q,R]=qr(X);                % Q is a random orthogonal matrix
Lambda=diag(rand(m,1)*9+1); % Lambda is a random diagonal matrix,
                            % diagonal entries between 1 and 10
A=Q*Lambda*Q';              % A is a random symmetric, positive 
                            % definite matrix
tic, [P,L,U]=lu(A); toc
tic, R=chol(A); toc
