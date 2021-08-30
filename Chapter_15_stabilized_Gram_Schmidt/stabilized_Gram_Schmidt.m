clear;  a=randn(200,1);  epsilon=10^(-5);
A=(a*ones(1,150)).*(ones(200,150)+epsilon*randn(200,150));

m=200; n=150; 
R=zeros(n,n);
for j=1:n
    Q(:,j)=A(:,j);
    for i=1:j-1
        R(i,j)=Q(:,i)'*Q(:,j);  Q(:,j)=Q(:,j)-R(i,j)*Q(:,i);
    end
    R(j,j)=norm(Q(:,j));  Q(:,j)=Q(:,j)/R(j,j);
end
norm_of_A_minus_QR=norm(A-Q*R)
norm_of_QTQ_minus_I=norm(Q'*Q-eye(n,n))