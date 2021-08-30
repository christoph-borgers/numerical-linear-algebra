m=10; H=hilb(m); spectral_condition=cond(H)
x_exact=rand(m,1); b=H*x_exact; x_computed=H\b;
relative_error=norm(x_exact-x_computed)/norm(x_exact)