syms t;

a = -pi;
b = pi;
xt = piecewise(a<=t & t<= b,sin(t),0);
w = -5:0.1:5 ;
X = continuousFT(xt,t,a,b,w);
plot(w,imag(X));