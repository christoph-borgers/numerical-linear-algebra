x0=[2 1 2]'; x0=x0/norm(x0)*0.15
b=0.02; c=7.12;

for i=1:12
    x=rand(3,1); x=x/norm(x); x=x.*(1+0.05*randn(3,1));
    t_tilde=70; t_actual=t_tilde-b; t_origin=t_actual-norm(x-x0)/c;
    D(i,:)=[x(1),x(2),x(3),t_origin];
end

D=[
    0.5106    0.7133    0.4844   69.8579;
    0.3739    0.7248    0.5289   69.8613;
    0.0613    0.8990    0.5028   69.8479;
    0.7760    0.4223    0.4542   69.8607;
    0.5009    0.8941    0.1355   69.8487;
    0.8515    0.3955    0.1431   69.8637;
    0.2192    0.5523    0.8366   69.8537;
    0.9270    0.1045    0.4628   69.8529;
    0.6125    0.6687    0.4658   69.8560;
    0.0328    0.7943    0.6733   69.8477;
    0.4882    0.2555    0.8806   69.8542;
    0.1367    0.9229    0.4139   69.8496];
x_guess=[0.12 0.04 0.11]; b_guess=0;
A=zeros(12,4); r=zeros(12,1); A(:,4)=c;
format long
for ijk=1:5
    for i=1:12
        d=norm(x_guess-D(i,1:3));
        r(i)=- (d-c*(t_tilde-D(i,4))+c*b_guess);
        A(i,1:3)=(x_guess(1:3)-D(i,1:3))/d;
    end
    correction=(A'*A)\(A'*r);
    x_guess=x_guess+correction(1:3)'
    b_guess=b_guess+correction(4)
end