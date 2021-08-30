X=[
0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 ;
0 1 0 0 1 0 1 1 1 0 1 0 0 0 1 0 0 0 1 1 1 1 0 ;
0 1 0 0 1 0 1 0 0 0 1 0 0 0 1 0 0 0 1 0 0 1 0 ;
0 1 1 1 1 0 1 1 0 0 1 0 0 0 1 0 0 0 1 0 0 1 0 ;
0 1 0 0 1 0 1 0 0 0 1 0 0 0 1 0 0 0 1 0 0 1 0 ;
0 1 0 0 1 0 1 1 1 0 1 1 1 0 1 1 1 0 1 1 1 1 0 ;
0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 ;
];
subplot(321), imagesc(X), axis image, colormap(gray), axis('off');

%----------------------------------------------

m=7; n=23; Y=zeros(m,n);
for i=2:m-1, for j=2:n-1
        Y(i,j) = (X(i-1,j-1)+X(i-1,j)+X(i-1,j+1) ...
                 + X(i,j-1)+2*X(i,j)+X(i,j+1) ...
                 + X(i+1,j-1)+X(i+1,j)+X(i+1,j+1))/10;
end, end
subplot(322), imagesc(Y), axis image, colormap(gray), axis('off');

%----------------------------------------------

Z=Y.*(1+randn(m,n)*0.02);
subplot(323), imagesc(Z), axis image, colormap(gray), axis('off');

%----------------------------------------------

N=m*n; A=eye(N);
for j=2:n-1, for i=2:m-1
        k=(j-1)*m+i; % the (i,j) entry in X is the k-th entry in x
        A(k,k-1:k+1)=1/10;  A(k,k-m-1:k-m+1)=1/10; 
        A(k,k+m-1:k+m+1)=1/10; A(k,k)=1/5;
end, end

x=X(:);
t = A*x; T = reshape(t,m,n);
this_should_be_zero=norm(Y-T)

condition_number_of_A=cond(A)

%----------------------------------------------

y=Y(:); x=A\y; X=reshape(x, m, n); 
subplot(324), imagesc(X), axis image, colormap(gray), axis('off');

%----------------------------------------------

z=Z(:); x=A\z; X=reshape(x, m, n); 
subplot(325), imagesc(X), axis image, colormap(gray), axis('off');

%----------------------------------------------

[U,S,V]=svd(A);
epsilon=0.02; S_inv=zeros(N,N);
for i=1:N
    if S(i,i)>=epsilon, S_inv(i,i)=1/S(i,i); end
end
x=V*S_inv*U'*z; X=reshape(x,m,n);
subplot(326), imagesc(X), axis image, colormap(gray), axis('off');

%----------------------------------------------

shg