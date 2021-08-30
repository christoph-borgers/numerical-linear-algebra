function rho=V_cycle(rho,q,N)      
for it=1:3, rho=relax(rho,q,N); end
R=restransfer(q,rho,N); E=zeros(N/2+1,N/2+1);
if N==4
	H=1/(N/2); E=zeros(3,3); E(2,2)=R(2,2)*H^2/4;
 else 
 	E=V_cycle(E,R,N/2);  
end
rho=interpolate(rho,N,E); 
