syms t;

a = -pi;
b = pi;
xt = piecewise(a<=t & t<= b,cos(t),0);
w = -5:0.001:5 ;
X = continuousFT(xt,t,a,b,w);
plot(w,X);