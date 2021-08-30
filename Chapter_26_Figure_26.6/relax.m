function rho=relax(rho,q,N)
h=1/N;
for j=2:N, for i=2:N
        rho(i,j)=(rho(i+1,j)+rho(i-1,j)+rho(i,j+1)+rho(i,j-1) ...
        		+h^2*q(i,j))/4;
end, end

