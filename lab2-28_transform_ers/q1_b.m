syms t;
a = -2;
b = 2;
xt = piecewise(a<=t & t<= b,1,0);
w = -5:0.1:5 ;
X = continuousFT(xt,t,a,b,w);

plot(w,real(X));
%hold on;
%plot(w,imag(X));
%hold on;
%plot(w,abs(X));
%hold on;
%plot(w,atan((imag(X)./real(X))));

