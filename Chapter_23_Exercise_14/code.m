A=rand(50,50); A=(A+A')/2; [V,E]=eig(A); 
E=diag(E); 	% eig produces a diagonal matrix E, 
            % E=diag(E) turns it into a vector
ind=find(E==max(E)); % find the biggest eigenvalue;
lambda=E(ind), v=V(:,ind)    