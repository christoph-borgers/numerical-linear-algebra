A=[1 1 1 0 0 0 0 0 0;
   0 0 0 1 1 1 0 0 0;
   0 0 0 0 0 0 1 1 1;
   1 0 0 1 0 0 1 0 0;
   0 1 0 0 1 0 0 1 0;
   0 0 1 0 0 1 0 0 1;
   1 0 0 0 1 0 0 0 1;
   0 1 0 0 0 1 0 0 0;
   0 0 0 1 0 0 0 1 0;
   0 0 1 0 1 0 1 0 0;
   0 1 0 1 0 0 0 0 0;
   0 0 0 0 0 1 0 1 0];
b = [7 7 11 15 7 3 7 2 10 7 6 6]; b = b';
format long; x=(A'*A)\(A'*b)