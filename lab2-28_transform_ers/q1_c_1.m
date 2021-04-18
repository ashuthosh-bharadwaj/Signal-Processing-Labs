syms t;

a = -1;
b = 1;

xt = piecewise(a<=t & t<= b,1,0);
w = -5:0.1:5 ;
X = continuousFT(xt,t,a,b,w);

plot(w,real(X));
%hold on;

