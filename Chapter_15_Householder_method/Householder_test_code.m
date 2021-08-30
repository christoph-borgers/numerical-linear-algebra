m=13; n=5; A=randn(m,n);
%---------------------------------------------------------------
% Householder's method for QR decomposition: 

U=zeros(m,min(m-1,n)); % the vectors u^{(k)} will be stored 
                       % in U: the first m+1-k entries in the 
                       % k-th column of U are the vector u^{(k)}
                       
R=A;                   % R will become the upper triangular factor   
                   
for k=1:min(m-1,n)
    a=R(k:m,k);
    if abs(norm(a)-abs(a(1)))>10^(-15) % make sure a is not 
                                       % already a multiple
                                       % of e_1 
        u=a; u(1)=u(1)+sign(a(1))*norm(a); u=u/norm(u);
        U(1:m+1-k,k)=u;                % this is u^{(k)}
        for j=k:n
            R(k:m,j)=R(k:m,j)-2*(u'*R(k:m,j))*u;
        end
    end
end
%---------------------------------------------------------------
% Making sure it works by assembling Q explicitly: 

Q=eye(m,m);
for k=1:min(m-1,n)
    I=eye(k-1,k-1);
    Qhatk=eye(m-k+1,m-k+1)-2*U(1:m+1-k,k)*U(1:m+1-k,k)';
    Qk=[I zeros(k-1,m+1-k); 
        zeros(m+1-k,k-1) Qhatk];
    Q=Q*Qk;
end

norm_of_A_minus_QR = norm(A-Q*R)	% see if A=QR
norm_of_QTQ_minus_I = norm(Q'*Q-eye(m,m))	% see if Q is orthogonal
spy(abs(R)>10^(-15)); shg     % see if R is triangular