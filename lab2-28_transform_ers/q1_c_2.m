syms t;

a = -4;
b = 4;
xt = piecewise(a<=t & t<= b,1,0);
w = -5:0.1:5 ;
X = continuousFT(xt,t,a,b,w);

plot(w,real(X));
%hold on;
