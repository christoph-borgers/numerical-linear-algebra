function rho=interpolate(rho,N,E)
for J=2:N/2, for I=2:N/2
    i=2*I-1; j=2*J-1; rho(i,j)=rho(i,j)+E(I,J);
end; end
for J=2:N/2, for I=2:N/2+1
    i=2*I-2; j=2*J-1;
    rho(i,j)=rho(i,j)+(E(I,J)+E(I-1,J))/2;
end; end
for J=2:N/2+1, for I=2:N/2
    i=2*I-1; j=2*J-2; rho(i,j)=rho(i,j)+(E(I,J)+E(I,J-1))/2;
end; end
for J=2:N/2+1, for I=2:N/2+1
    i=2*I-2; j=2*J-2; 
    rho(i,j)=rho(i,j)+(E(I,J)+E(I-1,J)+E(I,J-1)+E(I-1,J-1))/4;
end; end
