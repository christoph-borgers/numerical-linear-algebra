A=[100   88   77   92   87   100   95   96   45   98;
   100   92   98   34   54   100   92   88   77   80;
    99   90   55   43   66   100   88   89   72   73;
    81   70   65   54   77    95   88   72   33   27;
    70   42   83   57   99    95   59   88   72   88;
    99   94   52   85   97    49   92   82   83   94];
[U,S,V]=svd(A); v=V(:,1); 
if v(1)<0, v=-v; end    % Either all entries in v are positive, 
                        % or all are negative. We choose 
                        % the v that has all positive entries.
w=v/sum(v);