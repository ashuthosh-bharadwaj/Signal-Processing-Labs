syms t;

a = -pi;
b = pi;
xt = piecewise(a<=t & t<= b,exp((1j)*t),0);
w = -5:0.1:5 ;
X = continuousFT(xt,t,a,b,w);


plot(w,real(X));
hold on;
plot(w,imag(X));
