function R=restransfer(q,rho,N)
h=1/N; r=zeros(N+1,N+1);
for i=2:N, for j=2:N
        r(i,j)=q(i,j)-(4*rho(i,j)-rho(i-1,j)-rho(i+1,j) ...
        -rho(i,j-1)-rho(i,j+1))/h^2;
end, end
R=zeros(N/2+1,N/2+1);
for I= 2:N/2, for J=2:N/2
        i=2*I-1; j=2*J-1; R(I,J)=r(i,j);
end, end


        