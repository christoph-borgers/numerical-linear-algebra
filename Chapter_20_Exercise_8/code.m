D=diag([-5 -5 3 2 2]); Z=randn(5,5); [Q,R]=qr(Z); A=Q'*D*Q; 
U=randn(5,5); for it=1:95,[U,R]=qr(A*U); end
for it=1:5,[U,R]=qr(A*U); U, diag(U'*A*U)', end