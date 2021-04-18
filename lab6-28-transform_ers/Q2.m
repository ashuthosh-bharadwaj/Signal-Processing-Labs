syms w;
n = -100:1:100;
x = zeros(1,length(n));
wc = (pi/16);
X = piecewise( (-wc)<=w<=(wc) , 1, w< (-wc) & w > wc , 0);

for k = 1: length(n)
    expr = X*exp(j*k*w);
    x(k) = (1/(2*pi))*int(expr,w,-pi,pi);
end

%x is real (when integration is performed, we will end up with a discrete sinusoid)

plot(n,x);

%repeat for wc = pi(1/8,1/4,1/2,1)
%when wc = pi, it crashes to zero because sin(npi) is zero for all values
%of n except 0. at n =0 we get a kronecker delta because lim n->0 sinc(n*Pi)
%=1.


D = piecewise( (w1)<= abs(w) <=(w2) ,1, 0);

d = zeros(1,length(n));

for k = 1:length(n)
    expr = D*exp(j*k*w) ;
    d(k) = (1/(2*pi))*int(expr,w,-pi,pi);
end

stem(n,D);
